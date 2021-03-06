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

#include "TMC4361A.h"
#include "TMC2130.h"

#include "TMCRegisterSettings.h"

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
ADC_HandleTypeDef hadc1;

CRC_HandleTypeDef hcrc;

SPI_HandleTypeDef hspi1;

TIM_HandleTypeDef htim16;

UART_HandleTypeDef huart3;

/* Definitions for BlinkLED */
osThreadId_t BlinkLEDHandle;
const osThreadAttr_t BlinkLED_attributes = {
  .name = "BlinkLED",
  .stack_size = 128 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for GetCurrent */
osThreadId_t GetCurrentHandle;
const osThreadAttr_t GetCurrent_attributes = {
  .name = "GetCurrent",
  .stack_size = 512 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for GetPrediction */
osThreadId_t GetPredictionHandle;
const osThreadAttr_t GetPrediction_attributes = {
  .name = "GetPrediction",
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

// buffer for uart text
char buf[500];
int buf_len = 0;

// current variables
uint32_t CUR_A;
uint32_t CUR_B;
uint32_t CS;
float V_FS;
float current_factor;
float current_a;
float current_b;

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
static void MX_GPIO_Init(void);
static void MX_ADC1_Init(void);
static void MX_CRC_Init(void);
static void MX_SPI1_Init(void);
static void MX_TIM16_Init(void);
void StartBlinkLED(void *argument);
void StartGetCurrent(void *argument);
void StartGetPrediction(void *argument);

/* USER CODE BEGIN PFP */

void writeController(uint8_t adress, uint32_t datagram);
void writeDriver(uint8_t adress, uint32_t datagram);

int32_t readController(uint8_t adress);
int32_t readDriver(uint8_t address);

void setDefaultRegisterStateController(void);
void setDefaultRegisterStateDriver(void);

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

/* USER CODE BEGIN Boot_Mode_Sequence_1 */
  /*HW semaphore Clock enable*/
  __HAL_RCC_HSEM_CLK_ENABLE();
  /* Activate HSEM notification for Cortex-M4*/
  HAL_HSEM_ActivateNotification(__HAL_HSEM_SEMID_TO_MASK(HSEM_ID_0));
  /*
  Domain D2 goes to STOP mode (Cortex-M4 in deep-sleep) waiting for Cortex-M7 to
  perform system initialization (system clock config, external memory configuration.. )
  */
  HAL_PWREx_ClearPendingEvent();
  HAL_PWREx_EnterSTOPMode(PWR_MAINREGULATOR_ON, PWR_STOPENTRY_WFE, PWR_D2_DOMAIN);
  /* Clear HSEM flag */
  __HAL_HSEM_CLEAR_FLAG(__HAL_HSEM_SEMID_TO_MASK(HSEM_ID_0));

/* USER CODE END Boot_Mode_Sequence_1 */
  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_ADC1_Init();
  MX_CRC_Init();
  MX_SPI1_Init();
  MX_TIM16_Init();
  /* USER CODE BEGIN 2 */

  /* M4 is read to read prediction */
  	HAL_HSEM_FastTake(HSEM_prediction_read);

  	/* Init UART */
  	MX_USART3_UART_Init();

    	/* Start PWM pin (CLK16) */
  	HAL_TIM_PWM_Start(&htim16, TIM_CHANNEL_1);

  	/* Enable SPI */
  	__HAL_SPI_ENABLE(&hspi1);


  	/* Reset controller and driver and write default register values */
  	HAL_Delay(500);
  	writeController(TMC4361A_RESET_REG,0x52535400);
  	setDefaultRegisterStateController();
  	setDefaultRegisterStateDriver();


  	/* say hello */
  	buf_len = sprintf(buf, "\r\n\r\nCortex M4 Hello!");
  	HAL_UART_Transmit(&huart3, (uint8_t *)buf, buf_len, 100);
  	HAL_Delay(1000);


  	/* setup for velocity mode without any ramp */
  	writeController(TMC4361A_RAMPMODE, 0x00000000); // RAMPMODE= Velocity Mode / no Ramp
  	writeController(TMC4361A_VMAX, 0x00DFFFFF); // VMAX=100000

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

  /* creation of GetCurrent */
  GetCurrentHandle = osThreadNew(StartGetCurrent, NULL, &GetCurrent_attributes);

  /* creation of GetPrediction */
  GetPredictionHandle = osThreadNew(StartGetPrediction, NULL, &GetPrediction_attributes);

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
  * @brief ADC1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_ADC1_Init(void)
{

  /* USER CODE BEGIN ADC1_Init 0 */

  /* USER CODE END ADC1_Init 0 */

  ADC_MultiModeTypeDef multimode = {0};
  ADC_ChannelConfTypeDef sConfig = {0};

  /* USER CODE BEGIN ADC1_Init 1 */

  /* USER CODE END ADC1_Init 1 */
  /** Common config
  */
  hadc1.Instance = ADC1;
  hadc1.Init.ClockPrescaler = ADC_CLOCK_ASYNC_DIV1;
  hadc1.Init.Resolution = ADC_RESOLUTION_16B;
  hadc1.Init.ScanConvMode = ADC_SCAN_DISABLE;
  hadc1.Init.EOCSelection = ADC_EOC_SINGLE_CONV;
  hadc1.Init.LowPowerAutoWait = DISABLE;
  hadc1.Init.ContinuousConvMode = DISABLE;
  hadc1.Init.NbrOfConversion = 1;
  hadc1.Init.DiscontinuousConvMode = DISABLE;
  hadc1.Init.ExternalTrigConv = ADC_SOFTWARE_START;
  hadc1.Init.ExternalTrigConvEdge = ADC_EXTERNALTRIGCONVEDGE_NONE;
  hadc1.Init.ConversionDataManagement = ADC_CONVERSIONDATA_DR;
  hadc1.Init.Overrun = ADC_OVR_DATA_PRESERVED;
  hadc1.Init.LeftBitShift = ADC_LEFTBITSHIFT_NONE;
  hadc1.Init.OversamplingMode = DISABLE;
  if (HAL_ADC_Init(&hadc1) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure the ADC multi-mode
  */
  multimode.Mode = ADC_MODE_INDEPENDENT;
  if (HAL_ADCEx_MultiModeConfigChannel(&hadc1, &multimode) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure Regular Channel
  */
  sConfig.Channel = ADC_CHANNEL_4;
  sConfig.Rank = ADC_REGULAR_RANK_1;
  sConfig.SamplingTime = ADC_SAMPLETIME_1CYCLE_5;
  sConfig.SingleDiff = ADC_DIFFERENTIAL_ENDED;
  sConfig.OffsetNumber = ADC_OFFSET_NONE;
  sConfig.Offset = 0;
  sConfig.OffsetSignedSaturation = DISABLE;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN ADC1_Init 2 */

  /* USER CODE END ADC1_Init 2 */

}

/**
  * @brief CRC Initialization Function
  * @param None
  * @retval None
  */
static void MX_CRC_Init(void)
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
  * @brief SPI1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_SPI1_Init(void)
{

  /* USER CODE BEGIN SPI1_Init 0 */

  /* USER CODE END SPI1_Init 0 */

  /* USER CODE BEGIN SPI1_Init 1 */

  /* USER CODE END SPI1_Init 1 */
  /* SPI1 parameter configuration*/
  hspi1.Instance = SPI1;
  hspi1.Init.Mode = SPI_MODE_MASTER;
  hspi1.Init.Direction = SPI_DIRECTION_2LINES;
  hspi1.Init.DataSize = SPI_DATASIZE_8BIT;
  hspi1.Init.CLKPolarity = SPI_POLARITY_HIGH;
  hspi1.Init.CLKPhase = SPI_PHASE_2EDGE;
  hspi1.Init.NSS = SPI_NSS_SOFT;
  hspi1.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_256;
  hspi1.Init.FirstBit = SPI_FIRSTBIT_MSB;
  hspi1.Init.TIMode = SPI_TIMODE_DISABLE;
  hspi1.Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
  hspi1.Init.CRCPolynomial = 0x0;
  hspi1.Init.NSSPMode = SPI_NSS_PULSE_DISABLE;
  hspi1.Init.NSSPolarity = SPI_NSS_POLARITY_LOW;
  hspi1.Init.FifoThreshold = SPI_FIFO_THRESHOLD_01DATA;
  hspi1.Init.TxCRCInitializationPattern = SPI_CRC_INITIALIZATION_ALL_ZERO_PATTERN;
  hspi1.Init.RxCRCInitializationPattern = SPI_CRC_INITIALIZATION_ALL_ZERO_PATTERN;
  hspi1.Init.MasterSSIdleness = SPI_MASTER_SS_IDLENESS_00CYCLE;
  hspi1.Init.MasterInterDataIdleness = SPI_MASTER_INTERDATA_IDLENESS_00CYCLE;
  hspi1.Init.MasterReceiverAutoSusp = SPI_MASTER_RX_AUTOSUSP_DISABLE;
  hspi1.Init.MasterKeepIOState = SPI_MASTER_KEEP_IO_STATE_DISABLE;
  hspi1.Init.IOSwap = SPI_IO_SWAP_DISABLE;
  if (HAL_SPI_Init(&hspi1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN SPI1_Init 2 */

  /* USER CODE END SPI1_Init 2 */

}

/**
  * @brief TIM16 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM16_Init(void)
{

  /* USER CODE BEGIN TIM16_Init 0 */

  /* USER CODE END TIM16_Init 0 */

  TIM_OC_InitTypeDef sConfigOC = {0};
  TIM_BreakDeadTimeConfigTypeDef sBreakDeadTimeConfig = {0};

  /* USER CODE BEGIN TIM16_Init 1 */

  /* USER CODE END TIM16_Init 1 */
  htim16.Instance = TIM16;
  htim16.Init.Prescaler = 0;
  htim16.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim16.Init.Period = 30;
  htim16.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim16.Init.RepetitionCounter = 0;
  htim16.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_ENABLE;
  if (HAL_TIM_Base_Init(&htim16) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_TIM_PWM_Init(&htim16) != HAL_OK)
  {
    Error_Handler();
  }
  sConfigOC.OCMode = TIM_OCMODE_PWM1;
  sConfigOC.Pulse = 15;
  sConfigOC.OCPolarity = TIM_OCPOLARITY_HIGH;
  sConfigOC.OCNPolarity = TIM_OCNPOLARITY_HIGH;
  sConfigOC.OCFastMode = TIM_OCFAST_DISABLE;
  sConfigOC.OCIdleState = TIM_OCIDLESTATE_RESET;
  sConfigOC.OCNIdleState = TIM_OCNIDLESTATE_RESET;
  if (HAL_TIM_PWM_ConfigChannel(&htim16, &sConfigOC, TIM_CHANNEL_1) != HAL_OK)
  {
    Error_Handler();
  }
  sBreakDeadTimeConfig.OffStateRunMode = TIM_OSSR_DISABLE;
  sBreakDeadTimeConfig.OffStateIDLEMode = TIM_OSSI_DISABLE;
  sBreakDeadTimeConfig.LockLevel = TIM_LOCKLEVEL_OFF;
  sBreakDeadTimeConfig.DeadTime = 0;
  sBreakDeadTimeConfig.BreakState = TIM_BREAK_DISABLE;
  sBreakDeadTimeConfig.BreakPolarity = TIM_BREAKPOLARITY_HIGH;
  sBreakDeadTimeConfig.BreakFilter = 0;
  sBreakDeadTimeConfig.AutomaticOutput = TIM_AUTOMATICOUTPUT_DISABLE;
  if (HAL_TIMEx_ConfigBreakDeadTime(&htim16, &sBreakDeadTimeConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM16_Init 2 */

  /* USER CODE END TIM16_Init 2 */
  HAL_TIM_MspPostInit(&htim16);

}

/**
  * @brief USART3 Initialization Function
  * @param None
  * @retval None
  */
void MX_USART3_UART_Init(void)
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
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOF_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOE_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(SPI_CS_GPIO_Port, SPI_CS_Pin, GPIO_PIN_SET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(NFREEZE_GPIO_Port, NFREEZE_Pin, GPIO_PIN_SET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOE, DRV_EN_Pin|LED_YELLOW_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin : SPI_CS_Pin */
  GPIO_InitStruct.Pin = SPI_CS_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(SPI_CS_GPIO_Port, &GPIO_InitStruct);

  /*Configure GPIO pins : NFREEZE_Pin DRV_EN_Pin LED_YELLOW_Pin */
  GPIO_InitStruct.Pin = NFREEZE_Pin|DRV_EN_Pin|LED_YELLOW_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOE, &GPIO_InitStruct);

}

/* USER CODE BEGIN 4 */

void writeController(uint8_t address, uint32_t datagram)
{
	// buffer variables
	uint8_t t_address = address | TMC4361A_WRITE_BIT;
	uint8_t t_data1 = (datagram >> 24) & 0xff;
	uint8_t t_data2 = (datagram >> 16) & 0xff;
	uint8_t t_data3 = (datagram >> 8) & 0xff;
	uint8_t t_data4 = (datagram) & 0xff;

	// send data
	HAL_GPIO_WritePin(SPI_CS_GPIO_Port, SPI_CS_Pin, GPIO_PIN_RESET);
	HAL_SPI_Transmit(&hspi1, (uint8_t*) &t_address, 1, 10);
	HAL_SPI_Transmit(&hspi1, (uint8_t*) &t_data1, 1, 10);
	HAL_SPI_Transmit(&hspi1, (uint8_t*) &t_data2, 1, 10);
	HAL_SPI_Transmit(&hspi1, (uint8_t*) &t_data3, 1, 10);
	HAL_SPI_Transmit(&hspi1, (uint8_t*) &t_data4, 1, 10);
	HAL_GPIO_WritePin(SPI_CS_GPIO_Port, SPI_CS_Pin, GPIO_PIN_SET);
}

void writeDriver(uint8_t address, uint32_t datagram)
{
  writeController(TMC4361A_COVER_HIGH_WR, address | TMC2130_WRITE_BIT);
  writeController(TMC4361A_COVER_LOW_WR, datagram);
  HAL_Delay(1);
}

int32_t readController(uint8_t address)
{
	int value;
	uint8_t data[5] = {0};
	uint8_t r_data[5];

	// seet MSB to be address
	data[0] = TMC_ADDRESS(address);

	// send data to signal read access
	HAL_GPIO_WritePin(SPI_CS_GPIO_Port, SPI_CS_Pin, GPIO_PIN_RESET);
	HAL_SPI_Transmit(&hspi1, (uint8_t*) &data[0], 1, 10);
	HAL_SPI_Transmit(&hspi1, (uint8_t*) &data[1], 1, 10);
	HAL_SPI_Transmit(&hspi1, (uint8_t*) &data[2], 1, 10);
	HAL_SPI_Transmit(&hspi1, (uint8_t*) &data[3], 1, 10);
	HAL_SPI_Transmit(&hspi1, (uint8_t*) &data[4], 1, 10);
	HAL_GPIO_WritePin(SPI_CS_GPIO_Port, SPI_CS_Pin, GPIO_PIN_SET);

	// read data send back after read acces has been signaled
	HAL_GPIO_WritePin(SPI_CS_GPIO_Port, SPI_CS_Pin, GPIO_PIN_RESET);
	HAL_SPI_Receive(&hspi1, (uint8_t*) &r_data[0], 1, 10);
	HAL_SPI_Receive(&hspi1, (uint8_t*) &r_data[1], 1, 10);
	HAL_SPI_Receive(&hspi1, (uint8_t*) &r_data[2], 1, 10);
	HAL_SPI_Receive(&hspi1, (uint8_t*) &r_data[3], 1, 10);
	HAL_SPI_Receive(&hspi1, (uint8_t*) &r_data[4], 1, 10);
	HAL_GPIO_WritePin(SPI_CS_GPIO_Port, SPI_CS_Pin, GPIO_PIN_SET);

	// Build Data from bits
	value = (((uint32_t)r_data[1]) << 24);
	value |= (((uint32_t)r_data[2]) << 16);
	value |= ((r_data[3]) << 8);
	value |= (r_data[4]);

	return value;
}

int32_t readDriver(uint8_t address)
{
	// write adress so signal read access
	writeController(TMC4361A_COVER_HIGH_WR, TMC_ADDRESS(address));
	writeController(TMC4361A_COVER_LOW_WR, 0x00000000);
	HAL_Delay(1);

	// read value in controller Register
	int value = readController(TMC4361A_COVER_DRV_LOW_RD);

	return value;
}

void setDefaultRegisterStateController(void)
{
	for(uint8_t i=0; i<TMC4361A_REGISTER_COUNT; i++)
	{
		if(tmc4361A_defaultRegisterAccess[i] != 0x00 && tmc4361A_defaultRegisterAccess[i] != 0x01 && tmc4361A_defaultRegisterAccess[i] != 0x13)
			writeController(i, TMC4361A_defaultRegisterSetting[i]);
	}
}

void setDefaultRegisterStateDriver(void)
{
	for(uint8_t i=0; i<TMC2130_REGISTER_COUNT; i++)
	{
		if(tmc2130_defaultRegisterAccess[i] != 0x00 && tmc2130_defaultRegisterAccess[i] != 0x01 && tmc2130_defaultRegisterAccess[i] != 0x21)
			writeDriver(i, TMC2130_defaultRegisterSetting[i]);
	}
}

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
	HAL_GPIO_TogglePin(LED_YELLOW_GPIO_Port, LED_YELLOW_Pin);
	osDelay(1000);
  }
  /* USER CODE END 5 */
}

/* USER CODE BEGIN Header_StartGetCurrent */
/**
* @brief Function implementing the GetCurrent thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_StartGetCurrent */
void StartGetCurrent(void *argument)
{
  /* USER CODE BEGIN StartGetCurrent */
  /* Infinite loop */
  for(;;)
  {
	// wait again for M7 to read the last value
	while (HAL_HSEM_IsSemTaken(HSEM_current_read) != 1){}
	// signal that M4 got notification and is now resuming to write next value
	HAL_HSEM_Release(HSEM_current_written,0);

	osDelay(1500);

	// calculate momentary motor current and print value
	CUR_A = (readDriver(TMC2130_MSCURACT)&TMC2130_CUR_A_MASK)>>TMC2130_CUR_A_SHIFT;
	CUR_B = (readDriver(TMC2130_MSCURACT)&TMC2130_CUR_B_MASK)>>TMC2130_CUR_B_SHIFT;
	CS = (readDriver(TMC2130_DRV_STATUS)&TMC2130_CS_ACTUAL_MASK)>>TMC2130_CS_ACTUAL_SHIFT;
	V_FS = ((readDriver(TMC2130_CHOPCONF)&TMC2130_VSENSE_MASK)>>TMC2130_VSENSE_SHIFT) ? 0.18 : 0.32;

	current_factor = (((float)CS+1)/32)*((float)V_FS/(0.22+0.02))/248;

	current_a = (float)CUR_A*current_factor;
	current_b = (float)CUR_B*current_factor;

	// print data
	buf_len = sprintf(buf, "\r\n\r\nM4: curr_a %.3f A | curr_b %.3f A", current_a, current_b);
	HAL_UART_Transmit(&huart3, (uint8_t *)buf, buf_len, 100);

	// copy data to message buffer
	message_send_buff[0] = current_a;
	message_send_buff[1] = current_b;

	// write message to shared SRAM (protect by HSEM as saftey)
	while(HAL_HSEM_FastTake(HSEM_M4toM7) != HAL_OK){}
	for(uint8_t n = 0; n < SRAM_BUFF_SIZE; n++)
	{
		sram_mem.M4toM7[n] = message_send_buff[n];
	}
	HAL_HSEM_Release(HSEM_M4toM7,0);

	// Notify M7 that current was written
	HAL_HSEM_FastTake(HSEM_current_written);
	// make sure M7 got notification before task waits to write again
	while(HAL_HSEM_IsSemTaken(HSEM_current_read) == 1){}
  }
  /* USER CODE END StartGetCurrent */
}

/* USER CODE BEGIN Header_StartGetPrediction */
/**
* @brief Function implementing the GetPrediction thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_StartGetPrediction */
void StartGetPrediction(void *argument)
{
  /* USER CODE BEGIN StartGetPrediction */
  /* Infinite loop */
  for(;;)
  {
	// Wait for prediciton
	while(HAL_HSEM_IsSemTaken(HSEM_prediction_written) != 1){}
	// signal that M7 got notification and is now resuming to read the new value
	HAL_HSEM_Release(HSEM_prediction_read,0);

	// read prediction (protect by HSEM as saftey)
	while(HAL_HSEM_FastTake(HSEM_M7toM4) != HAL_OK){}
	for(uint8_t n = 0; n < SRAM_BUFF_SIZE; n++)
	{
		message_receive_buff[n] = sram_mem.M7toM4[n];
	}
	HAL_HSEM_Release(HSEM_M7toM4,0);

	// Print prediction
	buf_len = sprintf(buf, "\r\nM4: prediction error %.3f%%  | time_model %.0f us", message_receive_buff[0], message_receive_buff[1]);
	HAL_UART_Transmit(&huart3, (uint8_t *)buf, buf_len, 100);

	// Notify M7 that current was read
	HAL_HSEM_FastTake(HSEM_prediction_read);
	// make sure M4 got notification before task waits to read next value
	while(HAL_HSEM_IsSemTaken(HSEM_prediction_written) == 1){}
  }
  /* USER CODE END StartGetPrediction */
}

/**
  * @brief  Period elapsed callback in non blocking mode
  * @note   This function is called  when TIM14 interrupt took place, inside
  * HAL_TIM_IRQHandler(). It makes a direct call to HAL_IncTick() to increment
  * a global variable "uwTick" used as application time base.
  * @param  htim : TIM handle
  * @retval None
  */
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
  /* USER CODE BEGIN Callback 0 */

  /* USER CODE END Callback 0 */
  if (htim->Instance == TIM14) {
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

