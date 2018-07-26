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
 * @file     power_manager.h
 * @brief    Header file for the power_manager
 * @version  V1.0
 * @date     23. August 2017
 ******************************************************************************/
#ifndef _POWER_MANAGER_H_
#define _POWER_MANAGER_H_

#include <stdint.h>
#include <drv_common.h>

typedef struct {
    void (*wakeup)(void *handle);
    void (*sleep)(void *handle);
    void (*manage_clock)(void *handle, uint8_t enable);
} power_cb_t;

int32_t drv_soc_power_control(void *handle, csi_power_stat_e state, power_cb_t *cb);
int32_t drv_clock_manager_config(clock_manager_e device, uint8_t enable);
void registers_save(uint32_t *mem, uint32_t *addr, int size);
void registers_restore(uint32_t *addr, uint32_t *mem, int size);

#define CLOCK_CONTROL_REGISTER0      (CSKY_CLKGEN_BASE + 0xc)
#define CLOCK_CONTROL_REGISTER1      (CSKY_CLKGEN_BASE + 0x4c)

#endif /* _POWER_MANAGER_H_ */

