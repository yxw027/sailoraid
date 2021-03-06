/**
  ******************************************************************************
  * File Name          : main.hpp
  * Description        : This file contains the common defines of the application
  ******************************************************************************
  ** This notice applies to any and all portions of this file
  * that are not between comment pairs USER CODE BEGIN and
  * USER CODE END. Other portions of this file, whether 
  * inserted by the user or by software development tools
  * are owned by their respective copyright owners.
  *
  * COPYRIGHT(c) 2017 STMicroelectronics
  *
  * Redistribution and use in source and binary forms, with or without modification,
  * are permitted provided that the following conditions are met:
  *   1. Redistributions of source code must retain the above copyright notice,
  *      this list of conditions and the following disclaimer.
  *   2. Redistributions in binary form must reproduce the above copyright notice,
  *      this list of conditions and the following disclaimer in the documentation
  *      and/or other materials provided with the distribution.
  *   3. Neither the name of STMicroelectronics nor the names of its contributors
  *      may be used to endorse or promote products derived from this software
  *      without specific prior written permission.
  *
  * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
  * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  *
  ******************************************************************************
  */
/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H
  /* Includes ------------------------------------------------------------------*/

/* Includes ------------------------------------------------------------------*/
/* USER CODE BEGIN Includes */

//#define BOARD_REV2

#include "stm32f411xe.h"
#include "stm32f4xx_hal.h"
#include "stm32f4xx_hal_def.h"
#include "stm32f4xx_hal_dma.h"
#include "stm32f4xx_hal_spi.h"
#include "stdint.h"
#include "hal_types.h"

/* USER CODE END Includes */

/* Private define ------------------------------------------------------------*/
#define MAIN_I2C_SPEED 400000

#define USER_BUTTON_Pin GPIO_PIN_13
#define USER_BUTTON_GPIO_Port GPIOC
#define USER_BUTTON_EXTI_IRQn EXTI15_10_IRQn
#define GPS_NRST_Pin GPIO_PIN_1
#define GPS_NRST_GPIO_Port GPIOC
#define BNRG_SPI_IRQ_Pin GPIO_PIN_0
#define BNRG_SPI_IRQ_GPIO_Port GPIOA
#define BNRG_SPI_IRQ_EXTI_IRQn EXTI0_IRQn
#define BNRG_SPI_CS_Pin GPIO_PIN_1
#define BNRG_SPI_CS_GPIO_Port GPIOA
#define USB_USART_TX_Pin GPIO_PIN_2
#define USB_USART_TX_GPIO_Port GPIOA
#define USB_USART_RX_Pin GPIO_PIN_3
#define USB_USART_RX_GPIO_Port GPIOA
#define LED2_Pin GPIO_PIN_5
#define LED2_GPIO_Port GPIOA
#define BNRG_SPI_MISO_Pin GPIO_PIN_6
#define BNRG_SPI_MISO_GPIO_Port GPIOA
#define BNRG_SPI_MOSI_Pin GPIO_PIN_7
#define BNRG_SPI_MOSI_GPIO_Port GPIOA
#define LOAD_CELL_0_ADC_Pin GPIO_PIN_4
#define LOAD_CELL_0_ADC_GPIO_Port GPIOC
#define LOAD_CELL_1_ADC_Pin GPIO_PIN_5
#define LOAD_CELL_1_ADC_GPIO_Port GPIOC
#define LPS22H_INT1_O_Pin GPIO_PIN_10
#define LPS22H_INT1_O_GPIO_Port GPIOB
#define LPS22H_INT1_O_EXTI_IRQn EXTI15_10_IRQn
#define RANGE_SHDN_Pin GPIO_PIN_9
#define RANGE_SHDN_GPIO_Port GPIOC
#define BNRG_SPI_RESET_Pin GPIO_PIN_8
#define BNRG_SPI_RESET_GPIO_Port GPIOA
#define GPS_USART_TX_Pin GPIO_PIN_9
#define GPS_USART_TX_GPIO_Port GPIOA
#define GPS_USART_RX_Pin GPIO_PIN_10
#define GPS_USART_RX_GPIO_Port GPIOA
#define GPS_ON_OFF_Pin GPIO_PIN_11
#define GPS_ON_OFF_GPIO_Port GPIOA
#define TMS_Pin GPIO_PIN_13
#define TMS_GPIO_Port GPIOA
#define TCK_Pin GPIO_PIN_14
#define TCK_GPIO_Port GPIOA
#define BNRG_SPI_SCLK_Pin GPIO_PIN_3
#define BNRG_SPI_SCLK_GPIO_Port GPIOB
#define LSM6DSL_INT1_O_Pin GPIO_PIN_4
#define LSM6DSL_INT1_O_GPIO_Port GPIOB
#define LSM6DSL_INT1_O_EXTI_IRQn EXTI4_IRQn
#define LSM6DSL_INT2_O_Pin GPIO_PIN_5
#define LSM6DSL_INT2_O_GPIO_Port GPIOB
#define LSM6DSL_INT2_O_EXTI_IRQn EXTI9_5_IRQn
#define I2C_SCL_Pin GPIO_PIN_8
#define I2C_SCL_GPIO_Port GPIOB
#define I2C_SDA_Pin GPIO_PIN_9
#define I2C_SDA_GPIO_Port GPIOB

/* ########################## Assert Selection ############################## */
/**
  * @brief Uncomment the line below to expanse the "assert_param" macro in the 
  *        HAL drivers code
  */
/* #define USE_FULL_ASSERT    1U */

/* USER CODE BEGIN Private defines */
#undef GPS_NRST_Pin
#undef GPS_NRST_GPIO_Port
#undef GPS_ON_OFF_Pin
#undef GPS_ON_OFF_GPIO_Port
#ifdef BOARD_REV2
#define GPS_NRST_Pin GPIO_PIN_1
#define GPS_NRST_GPIO_Port GPIOC
#define GPS_ON_OFF_Pin GPIO_PIN_11
#define GPS_ON_OFF_GPIO_Port GPIOA
#else
#define GPS_NRST_Pin GPIO_PIN_0
#define GPS_NRST_GPIO_Port GPIOC
#define GPS_ON_OFF_Pin GPIO_PIN_7
#define GPS_ON_OFF_GPIO_Port GPIOC
#endif

#define GPS_USART_IRQn USART1_IRQn

#define RTC_ASYNCH_PREDIV_LSI  0x7F
#define RTC_SYNCH_PREDIV_LSI   0xF9
#define RTC_ASYNCH_PREDIV_LSE  0x7F
#define RTC_SYNCH_PREDIV_LSE   0x00FF

#define BNRG_SPI_EXTI_IRQn BNRG_SPI_IRQ_EXTI_IRQn
#define BNRG_SPI_INSTANCE		SPI1
#define BNRG_SPI_CLK_ENABLE()		__SPI1_CLK_ENABLE()

// SPI Configuration
#define BNRG_SPI_MODE			SPI_MODE_MASTER
#define BNRG_SPI_DIRECTION		SPI_DIRECTION_2LINES
#define BNRG_SPI_DATASIZE		SPI_DATASIZE_8BIT
#define BNRG_SPI_CLKPOLARITY		SPI_POLARITY_LOW
#define BNRG_SPI_CLKPHASE	        SPI_PHASE_1EDGE
#define BNRG_SPI_NSS			SPI_NSS_SOFT
#define BNRG_SPI_FIRSTBIT	        SPI_FIRSTBIT_MSB
#define BNRG_SPI_TIMODE		        SPI_TIMODE_DISABLED
#define BNRG_SPI_CRCPOLYNOMIAL	        7
#define BNRG_SPI_BAUDRATEPRESCALER      SPI_BAUDRATEPRESCALER_4
#define BNRG_SPI_CRCCALCULATION		SPI_CRCCALCULATION_DISABLED

#define BNRG_SPI_IRQ_ALTERNATE		0

#define BNRG_SPI_IRQ_MODE		GPIO_MODE_IT_RISING
#define BNRG_SPI_IRQ_PULL		GPIO_NOPULL
#define BNRG_SPI_IRQ_SPEED		GPIO_SPEED_HIGH

#define LEDn                                    1
#define BUTTONn                                 1
#define USER_BUTTON_EXTI_IRQn                   EXTI15_10_IRQn
#define BNRG_SPI_EXTI_Pin BNRG_SPI_IRQ_Pin
#define BNRG_SPI_EXTI_GPIO_Port BNRG_SPI_IRQ_GPIO_Port
#define RTC_CLOCK_SOURCE_LSI

/**
 * bit mapping of event not requiring sending HCI event
 */
#define JTAG_SUPPORTED 0 /* if 1 keep debugger enabled while in any low power mode */
#define LOW_POWER_MODE 1 /* 1 = Low Power mode ON, 0 = Low Power Mode OFF */

/**
 * RTC cloc divider
 */
#define WUCKSEL_DIVIDER (3)		/**< Tick is  (LSI speed clock/2) */
#define RTC_ASYNCH_PRESCALER (1)
#define RTC_SYNCH_PRESCALER (0x7FFF)

void IMUecho(BOOL echo);
void GPSecho(BOOL echo);
void ENVecho(BOOL echo);
void MATLABecho(BOOL echo);
void RangeEcho(BOOL echo);
void ADCecho(BOOL echo);

/* USER CODE END Private defines */

#ifdef __cplusplus
 extern "C" {
#endif
void _Error_Handler(char *, int);

#define Error_Handler() _Error_Handler(__FILE__, __LINE__)
#ifdef __cplusplus
}
#endif

/**
  * @}
  */ 

/**
  * @}
*/ 

#endif /* __MAIN_H */
/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
