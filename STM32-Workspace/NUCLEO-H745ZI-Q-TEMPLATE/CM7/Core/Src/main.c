/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2021 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "cmsis_os.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

#include "stdio.h"
#include "string.h"
#include "stdlib.h"
#include "time.h"

#include "sine_model.h"
#include "sine_model_data.h"

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

#ifndef HSEM_ID_0
#define HSEM_ID_0 (0U) /* HW semaphore 0*/
#endif

#ifndef HSEM_M4toM7
#define HSEM_M4toM7 (1U) /* HW semaphore protecting read/write M4 to M7 */
#endif

#ifndef HSEM_current_read
#define HSEM_current_read (2U) /* HW semaphore signaling that current value was read*/
#endif

#ifndef HSEM_current_written
#define HSEM_current_written (3U) /* HW semaphore signaling that new current value was written*/
#endif

#ifndef HSEM_M7toM4
#define HSEM_M7toM4 (4U) /* HW semaphore protecting read/write M7 to M4 */
#endif

#ifndef HSEM_prediction_read
#define HSEM_prediction_read (5U) /* HW semaphore signaling that current value was read*/
#endif

#ifndef HSEM_prediction_written
#define HSEM_prediction_written (6U) /* HW semaphore signaling that new current value was written*/
#endif

#define SRAM_BUFF_SIZE 2 // Size of the buffer used for shared memory

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

CRC_HandleTypeDef hcrc;

TIM_HandleTypeDef htim17;

UART_HandleTypeDef huart3;

PCD_HandleTypeDef hpcd_USB_OTG_FS;

/* Definitions for BlinkLED */
osThreadId_t BlinkLEDHandle;
const osThreadAttr_t BlinkLED_attributes = {
  .name = "BlinkLED",
  .stack_size = 128 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for SaveCurrent */
osThreadId_t SaveCurrentHandle;
const osThreadAttr_t SaveCurrent_attributes = {
  .name = "SaveCurrent",
  .stack_size = 512 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for MakePrediction */
osThreadId_t MakePredictionHandle;
const osThreadAttr_t MakePrediction_attributes = {
  .name = "MakePrediction",
  .stack_size = 512 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};
/* USER CODE BEGIN PV */

// inter-core buffers
struct shared_data
{
	 float M4toM7[SRAM_BUFF_SIZE];
	 float M7toM4[SRAM_BUFF_SIZE];
};

// pointer to shared_data struct (inter-core buffers and status)
volatile struct shared_data __attribute__((section(".DATA_RAM_D3")))sram_mem;

// message buffer
float message_receive_buff[SRAM_BUFF_SIZE] = {0};
float message_send_buff[SRAM_BUFF_SIZE] = {0};

// Model Ranges NN
float VALUES_RANGE = 2;
float VALUES_MEAN = 0;
float INPUT_1_RANGE = 3.125;
float INPUT_1_MEAN = 1.001;
float INPUT_2_RANGE = 0.77;
float INPUT_2_MEAN = 0;
float STEP_SIZE = 0.03145;

// buffer for uart text and inter core communication
char buf[1000];
int buf_len = 0;

// set timer variable and start timer
uint32_t time_stamp;
uint32_t time_stamp_last;
uint32_t time_val;

// IO variables
int idx = 0;
float time_model;
float predicted_out;
float actual_out;
float prediction_error;
float in[AI_SINE_MODEL_IN_1_HEIGHT][AI_SINE_MODEL_IN_1_CHANNEL];

// Pointer to the model
static ai_handle sine_model = AI_HANDLE_NULL;

// Chunk of memory used to hold intermediate values for neural network
ai_u8 activations[AI_SINE_MODEL_DATA_ACTIVATIONS_SIZE];

// Buffers used to store input and output tensors
ai_float in_data[AI_SINE_MODEL_IN_1_HEIGHT][AI_SINE_MODEL_IN_1_CHANNEL];;
ai_float out_data[AI_SINE_MODEL_OUT_1_SIZE_BYTES];

// Initialize wrapper structs that hold pointers to data and info about the data (tensor height, width, channels)
ai_buffer ai_input[] = AI_SINE_MODEL_IN;
ai_buffer ai_output[] = AI_SINE_MODEL_OUT;

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MPU_Config(void);
static void MX_GPIO_Init(void);
static void MX_USART3_UART_Init(void);
static void MX_USB_OTG_FS_PCD_Init(void);
static void MX_TIM17_Init(void);
void StartBlinkLED(void *argument);
void StartSaveCurrent(void *argument);
void StartMakePrediction(void *argument);

/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */
/* USER CODE BEGIN Boot_Mode_Sequence_0 */
  int32_t timeout;
/* USER CODE END Boot_Mode_Sequence_0 */

  /* MPU Configuration--------------------------------------------------------*/
  MPU_Config();

  /* Enable I-Cache---------------------------------------------------------*/
  SCB_EnableICache();

  /* Enable D-Cache---------------------------------------------------------*/
  SCB_EnableDCache();

/* USER CODE BEGIN Boot_Mode_Sequence_1 */
  /* Wait until CPU2 boots and enters in stop mode or timeout*/
  timeout = 0xFFFF;
  while((__HAL_RCC_GET_FLAG(RCC_FLAG_D2CKRDY) != RESET) && (timeout-- > 0));
  if ( timeout < 0 )
  {
  Error_Handler();
  }
/* USER CODE END Boot_Mode_Sequence_1 */
  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();
/* USER CODE BEGIN Boot_Mode_Sequence_2 */
/* When system initialization is finished, Cortex-M7 will release Cortex-M4 by means of
HSEM notification */
/*HW semaphore Clock enable*/
__HAL_RCC_HSEM_CLK_ENABLE();
/*Take HSEM */
HAL_HSEM_FastTake(HSEM_ID_0);
/*Release HSEM in order to notify the CPU2(CM4)*/
HAL_HSEM_Release(HSEM_ID_0,0);
/* wait until CPU2 wakes up from stop mode */
timeout = 0xFFFF;
while((__HAL_RCC_GET_FLAG(RCC_FLAG_D2CKRDY) == RESET) && (timeout-- > 0));
if ( timeout < 0 )
{
Error_Handler();
}
/* USER CODE END Boot_Mode_Sequence_2 */

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_USART3_UART_Init();
  MX_USB_OTG_FS_PCD_Init();
  MX_TIM17_Init();
  /* USER CODE BEGIN 2 */

  /* M7 is read to read current value */
  	HAL_HSEM_FastTake(HSEM_current_read);


  	/* start timer */
  	HAL_TIM_Base_Start(&htim17);


  	/* init neural network */
  	// Set pointers wrapper structs to our data buffers
  	ai_input[0].n_batches = 1;
  	ai_input[0].data = AI_HANDLE_PTR(in_data);
  	ai_output[0].n_batches = 1;
  	ai_output[0].data = AI_HANDLE_PTR(out_data);
  	// Set working memory and get weights/biases from model
  	ai_network_params ai_params = {AI_NETWORK_PARAMS_INIT(
  		AI_SINE_MODEL_DATA_WEIGHTS(ai_sine_model_data_weights_get()),
  		AI_SINE_MODEL_DATA_ACTIVATIONS(activations))};
  	// Create instance of neural network
  	ai_sine_model_create(&sine_model, AI_SINE_MODEL_DATA_CONFIG);
  	// Initialize neural network
  	ai_sine_model_init(sine_model, &ai_params);


  	/* Say Hello */
  	buf_len = sprintf(buf, "\r\n\r\nCortex M7 Hello!");
  	HAL_UART_Transmit(&huart3, (uint8_t *)buf, buf_len, 100);
  	HAL_Delay(2000);


  /* USER CODE END 2 */

  /* Init scheduler */
  osKernelInitialize();

  /* USER CODE BEGIN RTOS_MUTEX */
  /* add mutexes, ... */
  /* USER CODE END RTOS_MUTEX */

  /* USER CODE BEGIN RTOS_SEMAPHORES */
  /* add semaphores, ... */
  /* USER CODE END RTOS_SEMAPHORES */

  /* USER CODE BEGIN RTOS_TIMERS */
  /* start timers, add new ones, ... */
  /* USER CODE END RTOS_TIMERS */

  /* USER CODE BEGIN RTOS_QUEUES */
  /* add queues, ... */
  /* USER CODE END RTOS_QUEUES */

  /* Create the thread(s) */
  /* creation of BlinkLED */
  BlinkLEDHandle = osThreadNew(StartBlinkLED, NULL, &BlinkLED_attributes);

  /* creation of SaveCurrent */
  SaveCurrentHandle = osThreadNew(StartSaveCurrent, NULL, &SaveCurrent_attributes);

  /* creation of MakePrediction */
  MakePredictionHandle = osThreadNew(StartMakePrediction, NULL, &MakePrediction_attributes);

  /* USER CODE BEGIN RTOS_THREADS */
  /* add threads, ... */
  /* USER CODE END RTOS_THREADS */

  /* USER CODE BEGIN RTOS_EVENTS */
  /* add events, ... */
  /* USER CODE END RTOS_EVENTS */

  /* Start scheduler */
  osKernelStart();

  /* We should never get here as control is now taken by the scheduler */
  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Supply configuration update enable
  */
  HAL_PWREx_ConfigSupply(PWR_DIRECT_SMPS_SUPPLY);
  /** Configure the main internal regulator output voltage
  */
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE0);

  while(!__HAL_PWR_GET_FLAG(PWR_FLAG_VOSRDY)) {}
  /** Macro to configure the PLL clock source
  */
  __HAL_RCC_PLL_PLLSOURCE_CONFIG(RCC_PLLSOURCE_HSE);
  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_BYPASS;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLM = 1;
  RCC_OscInitStruct.PLL.PLLN = 120;
  RCC_OscInitStruct.PLL.PLLP = 2;
  RCC_OscInitStruct.PLL.PLLQ = 5;
  RCC_OscInitStruct.PLL.PLLR = 2;
  RCC_OscInitStruct.PLL.PLLRGE = RCC_PLL1VCIRANGE_3;
  RCC_OscInitStruct.PLL.PLLVCOSEL = RCC_PLL1VCOWIDE;
  RCC_OscInitStruct.PLL.PLLFRACN = 0;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2
                              |RCC_CLOCKTYPE_D3PCLK1|RCC_CLOCKTYPE_D1PCLK1;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.SYSCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_HCLK_DIV2;
  RCC_ClkInitStruct.APB3CLKDivider = RCC_APB3_DIV2;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_APB1_DIV2;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_APB2_DIV2;
  RCC_ClkInitStruct.APB4CLKDivider = RCC_APB4_DIV2;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_4) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief CRC Initialization Function
  * @param None
  * @retval None
  */
void MX_CRC_Init(void)
{

  /* USER CODE BEGIN CRC_Init 0 */

  /* USER CODE END CRC_Init 0 */

  /* USER CODE BEGIN CRC_Init 1 */

  /* USER CODE END CRC_Init 1 */
  hcrc.Instance = CRC;
  hcrc.Init.DefaultPolynomialUse = DEFAULT_POLYNOMIAL_ENABLE;
  hcrc.Init.DefaultInitValueUse = DEFAULT_INIT_VALUE_ENABLE;
  hcrc.Init.InputDataInversionMode = CRC_INPUTDATA_INVERSION_NONE;
  hcrc.Init.OutputDataInversionMode = CRC_OUTPUTDATA_INVERSION_DISABLE;
  hcrc.InputDataFormat = CRC_INPUTDATA_FORMAT_BYTES;
  if (HAL_CRC_Init(&hcrc) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN CRC_Init 2 */

  /* USER CODE END CRC_Init 2 */

}

/**
  * @brief TIM17 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM17_Init(void)
{

  /* USER CODE BEGIN TIM17_Init 0 */

  /* USER CODE END TIM17_Init 0 */

  /* USER CODE BEGIN TIM17_Init 1 */

  /* USER CODE END TIM17_Init 1 */
  htim17.Instance = TIM17;
  htim17.Init.Prescaler = 240-1;
  htim17.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim17.Init.Period = 65535;
  htim17.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim17.Init.RepetitionCounter = 0;
  htim17.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim17) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM17_Init 2 */

  /* USER CODE END TIM17_Init 2 */

}

/**
  * @brief USART3 Initialization Function
  * @param None
  * @retval None
  */
static void MX_USART3_UART_Init(void)
{

  /* USER CODE BEGIN USART3_Init 0 */

  /* USER CODE END USART3_Init 0 */

  /* USER CODE BEGIN USART3_Init 1 */

  /* USER CODE END USART3_Init 1 */
  huart3.Instance = USART3;
  huart3.Init.BaudRate = 115200;
  huart3.Init.WordLength = UART_WORDLENGTH_8B;
  huart3.Init.StopBits = UART_STOPBITS_1;
  huart3.Init.Parity = UART_PARITY_NONE;
  huart3.Init.Mode = UART_MODE_TX_RX;
  huart3.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart3.Init.OverSampling = UART_OVERSAMPLING_16;
  huart3.Init.OneBitSampling = UART_ONE_BIT_SAMPLE_DISABLE;
  huart3.Init.ClockPrescaler = UART_PRESCALER_DIV1;
  huart3.AdvancedInit.AdvFeatureInit = UART_ADVFEATURE_NO_INIT;
  if (HAL_UART_Init(&huart3) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_UARTEx_SetTxFifoThreshold(&huart3, UART_TXFIFO_THRESHOLD_1_8) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_UARTEx_SetRxFifoThreshold(&huart3, UART_RXFIFO_THRESHOLD_1_8) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_UARTEx_DisableFifoMode(&huart3) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN USART3_Init 2 */

  /* USER CODE END USART3_Init 2 */

}

/**
  * @brief USB_OTG_FS Initialization Function
  * @param None
  * @retval None
  */
static void MX_USB_OTG_FS_PCD_Init(void)
{

  /* USER CODE BEGIN USB_OTG_FS_Init 0 */

  /* USER CODE END USB_OTG_FS_Init 0 */

  /* USER CODE BEGIN USB_OTG_FS_Init 1 */

  /* USER CODE END USB_OTG_FS_Init 1 */
  hpcd_USB_OTG_FS.Instance = USB_OTG_FS;
  hpcd_USB_OTG_FS.Init.dev_endpoints = 9;
  hpcd_USB_OTG_FS.Init.speed = PCD_SPEED_FULL;
  hpcd_USB_OTG_FS.Init.dma_enable = DISABLE;
  hpcd_USB_OTG_FS.Init.phy_itface = PCD_PHY_EMBEDDED;
  hpcd_USB_OTG_FS.Init.Sof_enable = DISABLE;
  hpcd_USB_OTG_FS.Init.low_power_enable = DISABLE;
  hpcd_USB_OTG_FS.Init.lpm_enable = DISABLE;
  hpcd_USB_OTG_FS.Init.battery_charging_enable = ENABLE;
  hpcd_USB_OTG_FS.Init.vbus_sensing_enable = ENABLE;
  hpcd_USB_OTG_FS.Init.use_dedicated_ep1 = DISABLE;
  if (HAL_PCD_Init(&hpcd_USB_OTG_FS) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN USB_OTG_FS_Init 2 */

  /* USER CODE END USB_OTG_FS_Init 2 */

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOH_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();
  __HAL_RCC_GPIOD_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(LED_GREEN_GPIO_Port, LED_GREEN_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin : LED_GREEN_Pin */
  GPIO_InitStruct.Pin = LED_GREEN_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(LED_GREEN_GPIO_Port, &GPIO_InitStruct);

}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/* USER CODE BEGIN Header_StartBlinkLED */
/**
  * @brief  Function implementing the BlinkLED thread.
  * @param  argument: Not used
  * @retval None
  */
/* USER CODE END Header_StartBlinkLED */
void StartBlinkLED(void *argument)
{
  /* USER CODE BEGIN 5 */
  /* Infinite loop */
  for(;;)
  {
		// toggel LED and wait a second
		HAL_GPIO_TogglePin(LED_GREEN_GPIO_Port, LED_GREEN_Pin);
	    osDelay(1000);
  }
  /* USER CODE END 5 */
}

/* USER CODE BEGIN Header_StartSaveCurrent */
/**
* @brief Function implementing the SaveCurrent thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_StartSaveCurrent */
void StartSaveCurrent(void *argument)
{
  /* USER CODE BEGIN StartSaveCurrent */
  /* Infinite loop */
  for(;;)
  {
	// Wait for next current value
	while(HAL_HSEM_IsSemTaken(HSEM_current_written) != 1){}
	// signal that M7 got notification and is now resuming to read the new value
	HAL_HSEM_Release(HSEM_current_read,0);

	// read current values (protect by HSEM as saftey)
	while(HAL_HSEM_FastTake(HSEM_M4toM7) != HAL_OK){}
	for(uint8_t n = 0; n < SRAM_BUFF_SIZE; n++)
	{
		message_receive_buff[n] = sram_mem.M4toM7[n];
	}
	HAL_HSEM_Release(HSEM_M4toM7,0);

	// print data
	buf_len = sprintf(buf, "\r\nM7: curr_a %.3f A | curr_b %.3f A", message_receive_buff[0], message_receive_buff[1]);
	HAL_UART_Transmit(&huart3, (uint8_t *)buf, buf_len, 100);

	// Notify M7 that current was read
	HAL_HSEM_FastTake(HSEM_current_read);
	// make sure M4 got notification before task waits to read next value
	while(HAL_HSEM_IsSemTaken(HSEM_current_written) == 1){}
  }
  /* USER CODE END StartSaveCurrent */
}

/* USER CODE BEGIN Header_StartMakePrediction */
/**
* @brief Function implementing the MakePrediction thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_StartMakePrediction */
void StartMakePrediction(void *argument)
{
  /* USER CODE BEGIN StartMakePrediction */
  /* Infinite loop */
  for(;;)
  {
	// wait again for M4 to read the last value
	while (HAL_HSEM_IsSemTaken(HSEM_prediction_read) != 1){}
	// signal that M4 got notification and is now resuming to write next value
	HAL_HSEM_Release(HSEM_prediction_written,0);

	osDelay(1500);

	// Calculate input
	idx ++;
	for (uint32_t i = 0; i < AI_SINE_MODEL_IN_1_HEIGHT; i++)
	{
	  time_model = (i+idx)*STEP_SIZE;
	  in[i][0] = sin(time_model)+2*pow(cos(time_model),2);
	  in[i][1] = pow(sin(time_model),2)*cos(time_model);

	  in[i][0] = (in[i][0]-INPUT_1_MEAN)/INPUT_1_RANGE;
	  in[i][1] = (in[i][1]-INPUT_2_MEAN)/INPUT_2_RANGE;
	}
	actual_out = sin((AI_SINE_MODEL_IN_1_HEIGHT+idx)*STEP_SIZE);


	// fill input buffer
	for (uint32_t i = 0; i < AI_SINE_MODEL_IN_1_HEIGHT; i++)
	{
		for (uint32_t j = 0; j < AI_SINE_MODEL_IN_1_CHANNEL; j++)
		{
			in_data[i][j] = (ai_float)in[i][j];
		}
	}

	// Get current timestamp
	time_stamp_last = __HAL_TIM_GET_COUNTER(&htim17);

	//perforem inference and get output
	ai_sine_model_run(sine_model, &ai_input[0], &ai_output[0]);
	predicted_out = ((float *)out_data)[0];
	predicted_out = (predicted_out*VALUES_RANGE)+VALUES_MEAN;

	// calculate inference time_model in micro seconds
	time_stamp = __HAL_TIM_GET_COUNTER(&htim17);
	time_val = (time_stamp_last>time_stamp) ? htim17.Init.Period-time_stamp_last+time_stamp : time_stamp-time_stamp_last;

	// calculate error
	prediction_error = (predicted_out-actual_out)/VALUES_RANGE*100;
	prediction_error = (prediction_error < 0) ? prediction_error*(-1) : prediction_error;

	// Print output of neural network
	buf_len = sprintf(buf, "\r\n\r\nM7: prediction error %.3f%%  | time_model %lu us", prediction_error, time_val);
	HAL_UART_Transmit(&huart3, (uint8_t *)buf, buf_len, 100);

	// copy data to message buffer
	message_send_buff[0] = prediction_error;
	message_send_buff[1] = time_val;

	// write message to shared SRAM (protect by HSEM as saftey)
	while(HAL_HSEM_FastTake(HSEM_M7toM4) != HAL_OK){}
	for(uint8_t n = 0; n < SRAM_BUFF_SIZE; n++)
	{
		sram_mem.M7toM4[n] = message_send_buff[n];
	}
	HAL_HSEM_Release(HSEM_M7toM4,0);

	// Notify M4 that prediciton was written
	HAL_HSEM_FastTake(HSEM_prediction_written);
	// make sure M7 got notification before task waits to write again
	while(HAL_HSEM_IsSemTaken(HSEM_prediction_read) == 1){};
  }
  /* USER CODE END StartMakePrediction */
}

/* MPU Configuration */

void MPU_Config(void)
{
  MPU_Region_InitTypeDef MPU_InitStruct = {0};

  /* Disables the MPU */
  HAL_MPU_Disable();
  /** Initializes and configures the Region and the memory to be protected
  */
  MPU_InitStruct.Enable = MPU_REGION_ENABLE;
  MPU_InitStruct.Number = MPU_REGION_NUMBER0;
  MPU_InitStruct.BaseAddress = 0x38000000;
  MPU_InitStruct.Size = MPU_REGION_SIZE_64KB;
  MPU_InitStruct.SubRegionDisable = 0x0;
  MPU_InitStruct.TypeExtField = MPU_TEX_LEVEL0;
  MPU_InitStruct.AccessPermission = MPU_REGION_FULL_ACCESS;
  MPU_InitStruct.DisableExec = MPU_INSTRUCTION_ACCESS_DISABLE;
  MPU_InitStruct.IsShareable = MPU_ACCESS_SHAREABLE;
  MPU_InitStruct.IsCacheable = MPU_ACCESS_NOT_CACHEABLE;
  MPU_InitStruct.IsBufferable = MPU_ACCESS_BUFFERABLE;

  HAL_MPU_ConfigRegion(&MPU_InitStruct);
  /* Enables the MPU */
  HAL_MPU_Enable(MPU_PRIVILEGED_DEFAULT);

}

/**
  * @brief  Period elapsed callback in non blocking mode
  * @note   This function is called  when TIM13 interrupt took place, inside
  * HAL_TIM_IRQHandler(). It makes a direct call to HAL_IncTick() to increment
  * a global variable "uwTick" used as application time base.
  * @param  htim : TIM handle
  * @retval None
  */
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
  /* USER CODE BEGIN Callback 0 */

  /* USER CODE END Callback 0 */
  if (htim->Instance == TIM13) {
    HAL_IncTick();
  }
  /* USER CODE BEGIN Callback 1 */

  /* USER CODE END Callback 1 */
}

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

