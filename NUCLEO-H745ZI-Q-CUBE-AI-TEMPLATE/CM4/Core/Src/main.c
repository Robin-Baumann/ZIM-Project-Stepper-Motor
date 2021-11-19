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

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
static void MX_GPIO_Init(void);
static void MX_SPI1_Init(void);
static void MX_TIM16_Init(void);
/* USER CODE BEGIN PFP */

void sendController(uint8_t adress, uint32_t datagram);
void sendDriver(uint8_t adress, uint32_t datagram);

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

  // Start PWM pin (CLK16)
  HAL_TIM_PWM_Start(&htim16, TIM_CHANNEL_1);

  // Enable SPI
  __HAL_SPI_ENABLE(&hspi1);

	// Delay before writing to register
	HAL_Delay(100);

	// software reset
	sendController(0x4F,0x52535400);

	// set default register/communication settings (exported from tmc-api)
	sendController(0x00,  0x00006020);    // writing value 0x00006020 = 24608 = 0.0 to address 0 = 0x00(GENERAL_CONF)
	sendController(0x01,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 1 = 0x01(REFERENCE_CONF)
	sendController(0x02,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 2 = 0x02(START_CONF)
	sendController(0x03,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 3 = 0x03(INPUT_FILT_CONF)
	sendController(0x04,  0x4440004C);    // writing value 0x4440004C = 1145045068 = 0.0 to address 4 = 0x04(SPI_OUT_CONF)
	sendController(0x05,  0x00000003);    // writing value 0x00000003 = 3 = 0.0 to address 5 = 0x05(CURRENT_CONF)
	sendController(0x06,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 6 = 0x06(SCALE_VALUES)
	sendController(0x07,  0x00000400);    // writing value 0x00000400 = 1024 = 0.0 to address 7 = 0x07(ENC_IN_CONF)
	sendController(0x08,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 8 = 0x08(ENC_IN_DATA)
	sendController(0x09,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 9 = 0x09(ENC_OUT_DATA)
	sendController(0x0A,  0x00FB0C80);    // writing value 0x00FB0C80 = 16452736 = 0.0 to address 10 = 0x0A(STEP_CONF)
	sendController(0x0B,  0x82029805);    // writing value 0x82029805 = 0 = 0.0 to address 11 = 0x0B(SPI_STATUS_SELECTION)
	sendController(0x0C,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 12 = 0x0C(EVENT_CLEAR_CONF)
	sendController(0x0D,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 13 = 0x0D(INTR_CONF)
	sendController(0x10,  0x00040001);    // writing value 0x00040001 = 262145 = 0.0 to address 14 = 0x10(STP_LENGTH_ADD / DIR_SETUP_TIME)
	sendController(0x11,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 15 = 0x11(START_OUT_ADD)
	sendController(0x12,  0x01000000);    // writing value 0x01000000 = 16777216 = 0.0 to address 16 = 0x12(GEAR_RATIO)
	sendController(0x13,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 17 = 0x13(START_DELAY)
	sendController(0x14,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 18 = 0x14(CLK_GATING_DELAY)
	sendController(0x15,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 19 = 0x15(STDBY_DELAY)
	sendController(0x16,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 20 = 0x16(FREEWHEEL_DELAY)
	sendController(0x17,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 21 = 0x17(VDRV_SCALE_LIMIT / PWM_VMAX)
	sendController(0x18,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 22 = 0x18(UP_SCALE_DELAY / CL_UPSCALE_DELAY)
	sendController(0x19,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 23 = 0x19(HOLD_SCALE_DELAY / CL_DNSCALE_DELAY)
	sendController(0x1A,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 24 = 0x1A(DRV_SCALE_DELAY)
	sendController(0x1B,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 25 = 0x1B(BOOST_TIME)
	sendController(0x1C,  0x00FF00FF);    // writing value 0x00FF00FF = 16711935 = 0.0 to address 26 = 0x1C(CL ANGLES)
	sendController(0x1D,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 27 = 0x1D(SPI_SWITCH_VEL / DAC ADDR)
	sendController(0x1E,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 28 = 0x1E(HOME_SAFETY_MARGIN)
	sendController(0x1F,  0x00000280);    // writing value 0x00000280 = 640 = 0.0 to address 29 = 0x1F(PWM_FREQ / CHOPSYNC_DIV)
	sendController(0x20,  0x00000001);    // writing value 0x00000001 = 1 = 0.0 to address 30 = 0x20(RAMPMODE)
	sendController(0x21,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 31 = 0x21(XACTUAL)
	sendController(0x24,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 32 = 0x24(VMAX)
	sendController(0x25,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 33 = 0x25(VSTART)
	sendController(0x26,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 34 = 0x26(VSTOP)
	sendController(0x27,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 35 = 0x27(VBREAK)
	sendController(0x28,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 36 = 0x28(AMAX)
	sendController(0x29,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 37 = 0x29(DMAX)
	sendController(0x2A,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 38 = 0x2A(ASTART)
	sendController(0x2B,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 39 = 0x2B(DFINAL)
	sendController(0x2C,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 40 = 0x2C(DSTOP)
	sendController(0x2D,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 41 = 0x2D(BOW1)
	sendController(0x2E,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 42 = 0x2E(BOW2)
	sendController(0x2F,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 43 = 0x2F(BOW3)
	sendController(0x30,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 44 = 0x30(BOW4)
	sendController(0x31,  0x00927C00);    // writing value 0x00F42400 = 16000000 = 0.0 to address 45 = 0x31(CLK_FREQ)
	sendController(0x32,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 46 = 0x32(POS_COMP)
	sendController(0x33,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 47 = 0x33(VIRT_STOP_LEFT)
	sendController(0x34,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 48 = 0x34(VIRT_STOP_RIGHT)
	sendController(0x35,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 49 = 0x35(X_HOME)
	sendController(0x37,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 50 = 0x37(XTARGET)
	sendController(0x38,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 51 = 0x38(X_PIPE0)
	sendController(0x39,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 52 = 0x39(X_PIPE1)
	sendController(0x3A,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 53 = 0x3A(X_PIPE2)
	sendController(0x3B,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 54 = 0x3B(X_PIPE3)
	sendController(0x3C,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 55 = 0x3C(X_PIPE4)
	sendController(0x3D,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 56 = 0x3D(X_PIPE5)
	sendController(0x3E,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 57 = 0x3E(X_PIPE6)
	sendController(0x3F,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 58 = 0x3F(X_PIPE7)
	sendController(0x40,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 59 = 0x40(SH_REG0)
	sendController(0x41,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 60 = 0x41(SH_REG1)
	sendController(0x42,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 61 = 0x42(SH_REG2)
	sendController(0x43,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 62 = 0x43(SH_REG3)
	sendController(0x44,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 63 = 0x44(SH_REG4)
	sendController(0x45,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 64 = 0x45(SH_REG5)
	sendController(0x46,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 65 = 0x46(SH_REG6)
	sendController(0x47,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 66 = 0x47(SH_REG7)
	sendController(0x48,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 67 = 0x48(SH_REG8)
	sendController(0x49,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 68 = 0x49(SH_REG9)
	sendController(0x4A,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 69 = 0x4A(SH_REG10)
	sendController(0x4B,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 70 = 0x4B(SH_REG11)
	sendController(0x4C,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 71 = 0x4C(SH_REG12)
	sendController(0x4D,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 72 = 0x4D(SH_REG13)
	sendController(0x4E,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 73 = 0x4E(Freeze Registers)
	sendController(0x4F,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 74 = 0x4F(CLK Gating / SW Reset)
	sendController(0x50,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 75 = 0x50(ENC_POS)
	sendController(0x53,  0xFFFFFFFF);    // writing value 0xFFFFFFFF = 0 = 0.0 to address 76 = 0x53(ENC_POS_DEV_TOL)
	sendController(0x55,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 77 = 0x55(ENC_OUT_RES)
	sendController(0x56,  0x00A000A0);    // writing value 0x00A000A0 = 10485920 = 0.0 to address 78 = 0x56(SER_CLK_IN_HIGH/LOW)
	sendController(0x57,  0x00F00000);    // writing value 0x00F00000 = 15728640 = 0.0 to address 79 = 0x57(SSI_IN_CLK_DELAY / SSI_IN_WTIME)
	sendController(0x58,  0x00000190);    // writing value 0x00000190 = 400 = 0.0 to address 80 = 0x58(SER_PTIME)
	sendController(0x59,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 81 = 0x59(CL_OFFSET)
	sendController(0x5C,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 82 = 0x5C(PID_D / CL_DELTA_P)
	sendController(0x5E,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 83 = 0x5E(PID_DV_CLIP)
	sendController(0x5F,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 84 = 0x5F(PID_TOLERANCE / CL_TOLERANCE)
	sendController(0x60,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 85 = 0x60(FS_VEL / DC_VEL / CL_VMIN_EMF)
	sendController(0x61,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 86 = 0x61(DC_TIME / DC_SG / DC_BLKTIME / CL_VADD_EMF)
	sendController(0x62,  0x00FFFFFF);    // writing value 0x00FFFFFF = 16777215 = 0.0 to address 87 = 0x62(DC_LSPTM / ENC_VEL_ZERO)
	sendController(0x63,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 88 = 0x63(ENC_VMEAN_... / SER_ENC_VARIATION / CL_CYCLE)
	sendController(0x67,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 89 = 0x67(VSTALL_LIMIT)
	sendController(0x68,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 90 = 0x68(ADDR_TO_ENC)
	sendController(0x69,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 91 = 0x69(DATA_TO_ENC)
	sendController(0x70,  0xAAAAB554);    // writing value 0xAAAAB554 = 0 = 0.0 to address 92 = 0x70(MSLUT[0])
	sendController(0x71,  0x4A9554AA);    // writing value 0x4A9554AA = 1251300522 = 0.0 to address 93 = 0x71(MSLUT[1])
	sendController(0x72,  0x24492929);    // writing value 0x24492929 = 608774441 = 0.0 to address 94 = 0x72(MSLUT[2])
	sendController(0x73,  0x10104222);    // writing value 0x10104222 = 269500962 = 0.0 to address 95 = 0x73(MSLUT[3])
	sendController(0x74,  0xFBFFFFFF);    // writing value 0xFBFFFFFF = 0 = 0.0 to address 96 = 0x74(MSLUT[4])
	sendController(0x75,  0xB5BB777D);    // writing value 0xB5BB777D = 0 = 0.0 to address 97 = 0x75(MSLUT[5])
	sendController(0x76,  0x49295556);    // writing value 0x49295556 = 1227445590 = 0.0 to address 98 = 0x76(MSLUT[6])
	sendController(0x77,  0x00404222);    // writing value 0x00404222 = 4211234 = 0.0 to address 99 = 0x77(MSLUT[7])
	sendController(0x78,  0xFFFF8056);    // writing value 0xFFFF8056 = 0 = 0.0 to address 100 = 0x78(MSLUTSEL)
	sendController(0x7D,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 101 = 0x7D(ENC_COMP_...)
	sendController(0x7E,  0x00F70000);    // writing value 0x00F70000 = 16187392 = 0.0 to address 102 = 0x7E(START_SIN... / DAC_OFFSET)

	sendDriver(0x00,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 0 = 0x00(GCONF)
	sendDriver(0x10,  0x00071703);    // writing value 0x00071703 = 464643 = 0.0 to address 1 = 0x10(IHOLD_IRUN)
	sendDriver(0x11,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 2 = 0x11(TPOWERDOWN)
	sendDriver(0x13,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 3 = 0x13(TPWMTHRS)
	sendDriver(0x14,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 4 = 0x14(TCOOLTHRS)
	sendDriver(0x15,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 5 = 0x15(THIGH)
	sendDriver(0x2D,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 6 = 0x2D(XDIRECT)
	sendDriver(0x33,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 7 = 0x33(VDCMIN)
	sendDriver(0x60,  0xAAAAB554);    // writing value 0xAAAAB554 = 0 = 0.0 to address 8 = 0x60(MSLUT[0])
	sendDriver(0x61,  0x4A9554AA);    // writing value 0x4A9554AA = 1251300522 = 0.0 to address 9 = 0x61(MSLUT[1])
	sendDriver(0x62,  0x24492929);    // writing value 0x24492929 = 608774441 = 0.0 to address 10 = 0x62(MSLUT[2])
	sendDriver(0x63,  0x10104222);    // writing value 0x10104222 = 269500962 = 0.0 to address 11 = 0x63(MSLUT[3])
	sendDriver(0x64,  0xFBFFFFFF);    // writing value 0xFBFFFFFF = 0 = 0.0 to address 12 = 0x64(MSLUT[4])
	sendDriver(0x65,  0xB5BB777D);    // writing value 0xB5BB777D = 0 = 0.0 to address 13 = 0x65(MSLUT[5])
	sendDriver(0x66,  0x49295556);    // writing value 0x49295556 = 1227445590 = 0.0 to address 14 = 0x66(MSLUT[6])
	sendDriver(0x67,  0x00404222);    // writing value 0x00404222 = 4211234 = 0.0 to address 15 = 0x67(MSLUT[7])
	sendDriver(0x68,  0xFFFF8056);    // writing value 0xFFFF8056 = 0 = 0.0 to address 16 = 0x68(MSLUTSEL)
	sendDriver(0x69,  0x00F70000);    // writing value 0x00F70000 = 16187392 = 0.0 to address 17 = 0x69(MSLUTSTART)
	sendDriver(0x6C,  0x000101D5);    // writing value 0x000101D5 = 66005 = 0.0 to address 18 = 0x6C(CHOPCONF)
	sendDriver(0x6D,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 19 = 0x6D(COOLCONF)
	sendDriver(0x6E,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 20 = 0x6E(DCCTRL)
	sendDriver(0x70,  0x000504C8);    // writing value 0x000504C8 = 328904 = 0.0 to address 21 = 0x70(PWMCONF)
	sendDriver(0x72,  0x00000000);    // writing value 0x00000000 = 0 = 0.0 to address 22 = 0x72(ENCM_CTRL)


	// TEST SETUP

	// setup for position mode without any ramp
	sendController(0x20, 0x00000004); // RAMPMODE= Position Mode / no Ramp
	sendController(0x24, 0x00DFFFFF); // VMAX=100000

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
	// toggel LED
	HAL_GPIO_TogglePin(LED_YELLOW_GPIO_Port, LED_YELLOW_Pin);

	// do 2 revolutions and back continously
	sendController(0x37, 0x00019000); // xtarget
	HAL_Delay(3000);
	sendController(0x37, 0x00000000); // xactual
	HAL_Delay(3000);

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
  hspi1.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_128;
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

void sendController(uint8_t address, uint32_t datagram)
{
	// buffer variables
	uint8_t t_address = address | 0x80;
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

void sendDriver(uint8_t address, uint32_t datagram)
{
  sendController(0x6D, address | 0x80);
  sendController(0x6C, datagram);
  HAL_Delay(1);
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
