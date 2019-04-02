/*
 * File:   cou.h
 * Author: mk
 *
 * Created on September 20, 2015, 8:24 PM
 */

#pragma once

#include "src/system/util.h"

typedef struct {
    size_t db_size;
    char *db_cou_primary;
    char *db_cou_shandow;
    bool*db_cou_curBA;
    bool *db_cou_preBA;
    bool *db_cou_chgBA;
    bool *db_cou_access;

} db_cou_infomation;

int db_cou_init(void *cou_info, size_t db_size);

void *cou_read(size_t index);

int cou_write(size_t index, void *value);

void ckp_cou(int ckp_id, void *cou_info);

void db_cou_destroy(void *cou_info);
