/*
 * Copyright (C) 2017 C-SKY Microsystems Co., Ltd. All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/******************************************************************************
 * @file     system.c
 * @brief    CSI Device System Source File
 * @version  V1.0
 * @date     02. June 2017
 ******************************************************************************/

#include <csi_config.h>
#include "soc.h"
#include "io.h"
#include "csi_core.h"
#include "drv_timer.h"

#ifndef CONFIG_SYSTICK_HZ
#define CONFIG_SYSTICK_HZ 100
#endif

#ifndef CONFIG_LPM_TICKLESS_SYSTIM
#define CONFIG_LPM_TICKLESS_SYSTIM 0
#endif

#ifndef CONFIG_LPM_TICKLESS_CNTTIM
#define CONFIG_LPM_TICKLESS_CNTTIM 1
#endif

int g_system_clock = 24000000;

extern timer_handle_t system_timer;
extern timer_handle_t count_timer;
extern void systick_handler(void);

#ifdef CONFIG_LPM
static void config_system_clock(void)
{
    /* clock open module: ETB, Coretim, SMS, APB0, APB1, SASC, SIPC, GPIO0, GPIO1

       clock close module: SPI0, SPI1, WDT, RTC, PWM,
       UART0, UART1, UART2, I2C0, I2C1, TIM0, TIM1, I2S, ADC, ACMP,
       DMA0, DMA1, CRC, RTC1, SHA, TRNG, AES, RSA
    */
    putreg32(0x4e0b8001, (uint32_t *)CLOCK_CONTROL_REGISTER0);
    putreg32(0x10, (uint32_t *)CLOCK_CONTROL_REGISTER1);
}
#endif

/**
  * @brief  initialize the system
  *         Initialize the psr and vbr.
  * @param  None
  * @return None
  */
__attribute__((weak)) void SystemInit(void)
{
    /* Here we may setting exception vector, MGU, cache, and so on. */
    __set_VBR((uint32_t) & (__Vectors));

    /* Clear active and pending IRQ */
    VIC->IABR[0] = 0x0;
    VIC->ICPR[0] = 0xFFFFFFFF;

#ifdef CONFIG_KERNEL_NONE
    __enable_excp_irq();
#endif

    csi_coret_config(drv_get_sys_freq() / CONFIG_SYSTICK_HZ, CORET_IRQn);    //10ms
#ifndef CONFIG_KERNEL_NONE
    csi_vic_enable_irq(CORET_IRQn);
#endif

#ifndef CONFIG_KERNEL_RHINO
#ifndef CONFIG_NUTTXMM_NONE
    extern void mm_heap_initialize(void);
    mm_heap_initialize();
#endif
#endif

    /* to reduce power consumption */
#ifdef CONFIG_LPM
    config_system_clock();
#endif
}
