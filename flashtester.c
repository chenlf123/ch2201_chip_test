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
 * @file     flashtester.c
 * @brief    flash test
 * @version  V1.0
 * @date     17. Jan 2018
 ******************************************************************************/

#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <drv_eflash.h>

#define SECTOR_SIZE  512
#define EFLASH_START 0x10000000
#define EFLASH_SIZE  (254 *1024)

#define SARM_START   0x60000000

extern uint32_t __erodata, __data_end__, __data_start__;

static eflash_handle_t eflash = NULL;

void flash_test(uint32_t start, uint32_t end, uint8_t val)
{
    int ret;
    uint32_t addr;
    uint8_t buf[SECTOR_SIZE];

    printf("Start: 0x%X, End: 0x%X, Set Val: 0x%02X ", start, end, val);

    for (addr = start; addr < end; addr += SECTOR_SIZE) {
        csi_eflash_erase_sector(eflash, addr);

        memset(buf, 0xFF, sizeof(buf));
        csi_eflash_program(eflash, addr, buf, SECTOR_SIZE);
        ret = memcmp((const void *)addr, (const void *)buf, SECTOR_SIZE);

        if (ret) {
            break;
        }
    }

    if (ret != 0) {
        printf("-- Failed\n");
    } else {
        printf("-- OK\n");
    }
}

int flashtester_main(void)
{
    uint32_t start, end;

    start = (uint32_t)&__erodata + ((uint32_t)&__data_end__ - (uint32_t)&__data_start__);

    if (start > 0x60000000) {
        start = EFLASH_START;
    }

    start &= 0xFFFFFE00;
    end = EFLASH_START + EFLASH_SIZE;

    eflash = csi_eflash_initialize(0, NULL);

    printf("Start Test eFlash\n");

    flash_test(start, end, 0xFF);
    flash_test(start, end, 0x00);
    flash_test(start, end, 0x5A);

    printf("\n");

    return 0;
}
