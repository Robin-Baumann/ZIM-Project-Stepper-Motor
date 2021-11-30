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
#include "string.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

#include "stdio.h"
#include "string.h"
#include "stdlib.h"
#include "time.h"

#include "common.h"

#include "TMC4361A.h"
#include "TMC2130.h"

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

#ifndef HSEM_ID_0
#define HSEM_ID_0 (0U) /* HW semaphore 0*/
#endif

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
#if defined ( __ICCARM__ ) /*!< IAR Compiler */

#pragma location=0x30040000
ETH_DMADescTypeDef  DMARxDscrTab[ETH_RX_DESC_CNT]; /* Ethernet Rx DMA Descriptors */
#pragma location=0x30040060
ETH_DMADescTypeDef  DMATxDscrTab[ETH_TX_DESC_CNT]; /* Ethernet Tx DMA Descriptors */
#pragma location=0x30040200
uint8_t Rx_Buff[ETH_RX_DESC_CNT][ETH_MAX_PACKET_SIZE]; /* Ethernet Receive Buffers */

#elif defined ( __CC_ARM )  /* MDK ARM Compiler */

__attribute__((at(0x30040000))) ETH_DMADescTypeDef  DMARxDscrTab[ETH_RX_DESC_CNT]; /* Ethernet Rx DMA Descriptors */
__attribute__((at(0x30040060))) ETH_DMADescTypeDef  DMATxDscrTab[ETH_TX_DESC_CNT]; /* Ethernet Tx DMA Descriptors */
__attribute__((at(0x30040200))) uint8_t Rx_Buff[ETH_RX_DESC_CNT][ETH_MAX_PACKET_SIZE]; /* Ethernet Receive Buffer */

#elif defined ( __GNUC__ ) /* GNU Compiler */

ETH_DMADescTypeDef DMARxDscrTab[ETH_RX_DESC_CNT] __attribute__((section(".RxDecripSection"))); /* Ethernet Rx DMA Descriptors */
ETH_DMADescTypeDef DMATxDscrTab[ETH_TX_DESC_CNT] __attribute__((section(".TxDecripSection")));   /* Ethernet Tx DMA Descriptors */
uint8_t Rx_Buff[ETH_RX_DESC_CNT][ETH_MAX_PACKET_SIZE] __attribute__((section(".RxArraySection"))); /* Ethernet Receive Buffers */

#endif

ETH_TxPacketConfig TxConfig;

ETH_HandleTypeDef heth;

SPI_HandleTypeDef hspi1;

TIM_HandleTypeDef htim16;

UART_HandleTypeDef huart3;

/* USER CODE BEGIN PV */

volatile ringbuff_t* rb_cm4_to_cm7 = (void *)BUFF_CM4_TO_CM7_ADDR;
volatile ringbuff_t* rb_cm7_to_cm4 = (void *)BUFF_CM7_TO_CM4_ADDR;

static const int32_t TMC4361A_defaultRegisterSetting[TMC4361A_REGISTER_COUNT] =
{
//		  0,   		 1,   		2,   	   3,   	  4,   		 5,   		6,   	   7,   	  8,   		 9,   		A,   	   B,   	  C,   		 D,   		E,   	   F
 0x00006020,0x00000000,0x00000000,0x00000000,0x4440004C,0x00000003,0x00000000,0x00000400,0x00000000,0x00000000,0x00FB0C80,0x82029805,0x00000000,0x00000000,		    0,         0, // 0x00 - 0x0F
 0x00040001,0x00000000,0x01000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00FF00FF,0x00000000,0x00000000,0x00000280, // 0x10 - 0x1F
 0x00000001,0x00000000,	       0,	       0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000, // 0x20 - 0x2F
 0x00000000,0x007A1200,0x00000000,0x00000000,0x00000000,0x00000000,	        0,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000, // 0x30 - 0x3F
 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000,0x00000000, // 0x40 - 0x4F
 0x00000000,	     0,	        0,0xFFFFFFFF,	      0,0x00000000,0x00A000A0,0x00F00000,0x00000190,0x00000000,	        0,	       0,0x00000000,	     0,0x00000000,0x00000000, // 0x50 - 0x5F
 0x00000000,0x00000000,0x00FFFFFF,0x00000000,	      0,	     0,	        0,0x00000000,0x00000000,0x00000000,	        0,	       0,	      0,	     0,	        0,	       0, // 0x60 - 0x6F
 0xAAAAB554,0x4A9554AA,0x24492929,0x10104222,0xFBFFFFFF,0xB5BB777D,0x49295556,0x00404222,0xFFFF8056,	     0,	        0,	       0,	      0,0x00000000,0x00F70000,	       0  // 0x70 - 0x7F
};

static const int32_t TMC2130_defaultRegisterSetting[TMC2130_REGISTER_COUNT] =
{
//		  0,   		 1,   		2,   	   3,   	  4,   		 5,   		6,   	   7,   	  8,   		 9,   		A,   	   B,   	  C,   		 D,   		E,   	   F
 0x00000000,         0,         0,         0,         0,         0,         0,         0,         0,         0,         0,         0,         0,         0,		    0,         0, // 0x00 - 0x0F
 0x00071703,0x00000000,         0,0x00000000,0x00000000,0x00000000,         0,         0,         0,         0,         0,         0,         0,         0,         0,         0, // 0x10 - 0x1F
          0,         0,	        0,	       0,         0,         0,         0,         0,         0,         0,         0,         0,         0,0x00000000,         0,         0, // 0x20 - 0x2F
          0,         0,         0,0x00000000,         0,         0,	        0,         0,         0,         0,         0,         0,         0,         0,         0,         0, // 0x30 - 0x3F
          0,         0,         0,         0,         0,         0,         0,         0,         0,         0,         0,         0,         0,         0,         0,         0, // 0x40 - 0x4F
          0,	     0,	        0,         0,	      0,         0,         0,         0,         0,         0,	        0,	       0,         0,	     0,         0,         0, // 0x50 - 0x5F
 0xAAAAB554,0x4A9554AA,0x24492929,0x10104222,0xFBFFFFFF,0xB5BB777D,0x49295556,0x00404222,0xFFFF8056,0x00F70000,	        0,	       0,0x000101D5,0x00000000,0x00000000,	       0, // 0x60 - 0x6F
 0x000504C8,         0,0x00000000,         0,         0,         0,         0,         0,         0,	     0,	        0,	       0,	      0,         0,         0,	       0  // 0x70 - 0x7F
};

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
static void MX_GPIO_Init(void);
static void MX_SPI1_Init(void);
static void MX_TIM16_Init(void);
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
  MX_SPI1_Init();
  MX_TIM16_Init();
  /* USER CODE BEGIN 2 */

  while (!ringbuff_is_ready(rb_cm4_to_cm7) || !ringbuff_is_ready(rb_cm7_to_cm4)) {}

	// Start PWM pin (CLK16)
	HAL_TIM_PWM_Start(&htim16, TIM_CHANNEL_1);

	// Enable SPI
	__HAL_SPI_ENABLE(&hspi1);

	// Inint and buffer for uart text
	MX_USART3_UART_Init();
	char buf[1000];
	int buf_len = 0;

	// current variables
	uint32_t CUR_A;
	uint32_t CUR_B;
	uint32_t CS;
	float V_FS;
	float current_factor;
	float current_a;
	float current_b;


	// software reset
	HAL_Delay(100);
	writeController(TMC4361A_RESET_REG,0x52535400);

	// set default register settings
	setDefaultRegisterStateController();
	setDefaultRegisterStateDriver();


	// Say Hello
	buf_len = sprintf(buf, "\nCortex M4 Hello!\r\n");
	HAL_UART_Transmit(&huart3, (uint8_t *)buf, buf_len, 100);
	HAL_Delay(1000);


	// setup for position mode without any ramp
	writeController(TMC4361A_RAMPMODE, 0x00000000); // RAMPMODE= Velocity Mode / no Ramp
	writeController(TMC4361A_VMAX, 0x00DFFFFF); // VMAX=100000


  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
	// calculate momentary motor current and print value
	CUR_A = (readDriver(TMC2130_MSCURACT)&TMC2130_CUR_A_MASK)>>TMC2130_CUR_A_SHIFT;
	CUR_B = (readDriver(TMC2130_MSCURACT)&TMC2130_CUR_B_MASK)>>TMC2130_CUR_B_SHIFT;
	CS = (readDriver(TMC2130_DRV_STATUS)&TMC2130_CS_ACTUAL_MASK)>>TMC2130_CS_ACTUAL_SHIFT;
	V_FS = ((readDriver(TMC2130_CHOPCONF)&TMC2130_VSENSE_MASK)>>TMC2130_VSENSE_SHIFT) ? 0.18 : 0.32;

	current_factor = (((float)CS+1)/32)*((float)V_FS/(0.22+0.02))/248;

	current_a = (float)CUR_A*current_factor;
	current_b = (float)CUR_B*current_factor;


	// send data to M7
	buf_len = sprintf(buf, "\nM4: curr_a %.3f A | curr_b %.3f A\r\n", current_a, current_b);
	ringbuff_write(rb_cm4_to_cm7, buf, buf_len);


	// toggel LED and wait a second
	HAL_GPIO_TogglePin(LED_YELLOW_GPIO_Port, LED_YELLOW_Pin);
	HAL_Delay(2000);


    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
  }
  /* USER CODE END 3 */
}

/**
  * @brief ETH Initialization Function
  * @param None
  * @retval None
  */
void MX_ETH_Init(void)
{

  /* USER CODE BEGIN ETH_Init 0 */

  /* USER CODE END ETH_Init 0 */

   static uint8_t MACAddr[6];

  /* USER CODE BEGIN ETH_Init 1 */

  /* USER CODE END ETH_Init 1 */
  heth.Instance = ETH;
  MACAddr[0] = 0x00;
  MACAddr[1] = 0x80;
  MACAddr[2] = 0xE1;
  MACAddr[3] = 0x00;
  MACAddr[4] = 0x00;
  MACAddr[5] = 0x00;
  heth.Init.MACAddr = &MACAddr[0];
  heth.Init.MediaInterface = HAL_ETH_RMII_MODE;
  heth.Init.TxDesc = DMATxDscrTab;
  heth.Init.RxDesc = DMARxDscrTab;
  heth.Init.RxBuffLen = 1524;

  /* USER CODE BEGIN MACADDRESS */

  /* USER CODE END MACADDRESS */

  if (HAL_ETH_Init(&heth) != HAL_OK)
  {
    Error_Handler();
  }

  memset(&TxConfig, 0 , sizeof(ETH_TxPacketConfig));
  TxConfig.Attributes = ETH_TX_PACKETS_FEATURES_CSUM | ETH_TX_PACKETS_FEATURES_CRCPAD;
  TxConfig.ChecksumCtrl = ETH_CHECKSUM_IPHDR_PAYLOAD_INSERT_PHDR_CALC;
  TxConfig.CRCPadCtrl = ETH_CRC_PAD_INSERT;
  /* USER CODE BEGIN ETH_Init 2 */

  /* USER CODE END ETH_Init 2 */

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
  __HAL_RCC_GPIOE_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(SPI_CS_GPIO_Port, SPI_CS_Pin, GPIO_PIN_SET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOE, DRV_EN_Pin|LED_YELLOW_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin : SPI_CS_Pin */
  GPIO_InitStruct.Pin = SPI_CS_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(SPI_CS_GPIO_Port, &GPIO_InitStruct);

  /*Configure GPIO pins : DRV_EN_Pin LED_YELLOW_Pin */
  GPIO_InitStruct.Pin = DRV_EN_Pin|LED_YELLOW_Pin;
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

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
