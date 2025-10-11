#  testbench-service Data Design Document

## Change History
| # |    Date    |        Author |
|:--|:----------:|--------------:|
| 1 | 2025-03-04 | TeaQL Doc Rob |
| 2 | 2025-03-04 | TeaQL Doc Rob |

## Summary of Concepts





## Tables Index


| # |  Table Name  |Columns Count |Relation Count |
|:-------------|:-----------------------|:-----------------------|:-----------------------|
 | 1 | [PLATFORM_DATA](#Table-PLATFORM_DATA) |3|3|
 | 2 | [SERVICE_REQUEST_DATA](#Table-SERVICE_REQUEST_DATA) |3|1|
 | 3 | [REQUEST_TYPE_DATA](#Table-REQUEST_TYPE_DATA) |4|1|
 | 4 | [PERMISSION_TYPE_DATA](#Table-PERMISSION_TYPE_DATA) |3|1|
 | 5 | [CREATE_TASK_DATA](#Table-CREATE_TASK_DATA) |2|0|
 | 6 | [MERCHANT_DATA](#Table-MERCHANT_DATA) |5|9|
 | 7 | [JOB_TYPE_DATA](#Table-JOB_TYPE_DATA) |3|2|
 | 8 | [JOB_TYPE_WITH_MAIN_TYPE_DATA](#Table-JOB_TYPE_WITH_MAIN_TYPE_DATA) |4|0|
 | 9 | [EMPLOYEE_DATA](#Table-EMPLOYEE_DATA) |4|1|
 | 10 | [DEPARTMENT_DATA](#Table-DEPARTMENT_DATA) |3|1|
 | 11 | [FEEDBACK_MAIN_TYPE_DATA](#Table-FEEDBACK_MAIN_TYPE_DATA) |3|3|
 | 12 | [ROLE_TYPE_DATA](#Table-ROLE_TYPE_DATA) |3|1|
 | 13 | [FEEDBACK_SUB_TYPE_DATA](#Table-FEEDBACK_SUB_TYPE_DATA) |3|1|
 | 14 | [FEEDBACK_RESULT_STATUS_DATA](#Table-FEEDBACK_RESULT_STATUS_DATA) |3|1|
 | 15 | [FEEDBACK_RESOLVE_STATUS_DATA](#Table-FEEDBACK_RESOLVE_STATUS_DATA) |6|1|
 | 16 | [MERCHANT_BACKEND_LOG_DATA](#Table-MERCHANT_BACKEND_LOG_DATA) |5|0|
 | 17 | [FEEDBACK_ITEM_DATA](#Table-FEEDBACK_ITEM_DATA) |18|4|
 | 18 | [READ_FLAG_DATA](#Table-READ_FLAG_DATA) |4|0|
 | 19 | [FEEDBACK_ITEM_LOG_DATA](#Table-FEEDBACK_ITEM_LOG_DATA) |8|0|
 | 20 | [FEEDBACK_ITEM_ATTACHMENT_DATA](#Table-FEEDBACK_ITEM_ATTACHMENT_DATA) |7|0|
 | 21 | [SUPPLEMENT_CONTENT_DATA](#Table-SUPPLEMENT_CONTENT_DATA) |9|0|


## Tables

 
### Table PLATFORM_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(100)|植物医生VOE |
|3|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|4|LAST_UPDATE_TIME|Last Update Time|TIMESTAMP|updateTime() |
|5|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_PLATFORM_ID|ID|PRIMARY KEY||
|2|PK_PLATFORM_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_PLATFORM_CREATE_TIME|CREATE_TIME|INDEX||
|4|IDX_PLATFORM_LAST_UPDATE_TIME|LAST_UPDATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_PLATFORM_ID|ID|-|-|PRIMARY KEY|


#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |REQUEST_TYPE_DATA| PLATFORM|- |
|2 |PERMISSION_TYPE_DATA| PLATFORM|- |
|3 |MERCHANT_DATA| PLATFORM|- |






 
### Table SERVICE_REQUEST_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(100)|an |
|3|ACTION_TYPE|Action Type|BIGINT|1 |
|4|SNAPSHOT|Snapshot|text|jsonMe() |
|5|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_SERVICE_REQUEST_ID|ID|PRIMARY KEY||
|2|PK_SERVICE_REQUEST_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_SERVICE_REQUEST_ACTION_TYPE|ACTION_TYPE|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_SERVICE_REQUEST_ID|ID|-|-|PRIMARY KEY|
|2|FK_SERVICE_REQUEST_ACTION_TYPE|ACTION_TYPE|REQUEST_TYPE_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |REQUEST_TYPE_DATA| ACTION_TYPE|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |CREATE_TASK_DATA| SERVICE_REQUEST|- |






 
### Table REQUEST_TYPE_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(100)|确认任务 |
|3|CODE|Code|VARCHAR(100)|CREATE_TASK |
|4|ENTRANCE_VIEW|Entrance View|VARCHAR(100)|create_task |
|5|PLATFORM|Platform|BIGINT|1 |
|6|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_REQUEST_TYPE_ID|ID|PRIMARY KEY||
|2|PK_REQUEST_TYPE_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_REQUEST_TYPE_PLATFORM|PLATFORM|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_REQUEST_TYPE_ID|ID|-|-|PRIMARY KEY|
|2|FK_REQUEST_TYPE_PLATFORM|PLATFORM|PLATFORM_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |PLATFORM_DATA| PLATFORM|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |SERVICE_REQUEST_DATA| ACTION_TYPE|- |






#### Internal Data
|ID |NAME |CODE |ENTRANCE_VIEW |PLATFORM |VERSION |
|:----------|:----------|:----------|:----------|:----------|:----------|
|1|确认任务|CREATE_TASK|create_task|1|1|
 
### Table PERMISSION_TYPE_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(100)|查看权限 |
|3|CODE|Code|VARCHAR(100)|VIEW |
|4|PLATFORM|Platform|BIGINT|1 |
|5|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_PERMISSION_TYPE_ID|ID|PRIMARY KEY||
|2|PK_PERMISSION_TYPE_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_PERMISSION_TYPE_PLATFORM|PLATFORM|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_PERMISSION_TYPE_ID|ID|-|-|PRIMARY KEY|
|2|FK_PERMISSION_TYPE_PLATFORM|PLATFORM|PLATFORM_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |PLATFORM_DATA| PLATFORM|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |JOB_TYPE_WITH_MAIN_TYPE_DATA| PERMISSION_TYPE|- |






#### Internal Data
|ID |NAME |CODE |PLATFORM |VERSION |
|:----------|:----------|:----------|:----------|:----------|
|1|查看权限|VIEW|1|1|
|2|处置权限|PROCESS|1|1|
 
### Table CREATE_TASK_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|BATCH_NUMBER|Batch Number|VARCHAR(100)|xxx |
|3|SERVICE_REQUEST|Service Request|BIGINT|1 |
|4|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_CREATE_TASK_ID|ID|PRIMARY KEY||
|2|PK_CREATE_TASK_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_CREATE_TASK_SERVICE_REQUEST|SERVICE_REQUEST|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_CREATE_TASK_ID|ID|-|-|PRIMARY KEY|
|2|FK_CREATE_TASK_SERVICE_REQUEST|SERVICE_REQUEST|SERVICE_REQUEST_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |SERVICE_REQUEST_DATA| SERVICE_REQUEST|- |






 
### Table MERCHANT_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(100)|植物医生科技 |
|3|EXTERNAL_ID|External Id|VARCHAR(100)|公开代码 |
|4|FOUND|Found|TIMESTAMP|createTime() |
|5|PLATFORM|Platform|BIGINT|1 |
|6|UPDATE_TIME|UpdateTime|TIMESTAMP|updateTime() |
|7|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_MERCHANT_ID|ID|PRIMARY KEY||
|2|PK_MERCHANT_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_MERCHANT_PLATFORM|PLATFORM|INDEX||
|4|IDX_MERCHANT_FOUND|FOUND|INDEX||
|5|IDX_MERCHANT_UPDATE_TIME|UPDATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_MERCHANT_ID|ID|-|-|PRIMARY KEY|
|2|FK_MERCHANT_PLATFORM|PLATFORM|PLATFORM_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |PLATFORM_DATA| PLATFORM|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |JOB_TYPE_DATA| MERCHANT|- |
|2 |EMPLOYEE_DATA| MERCHANT|- |
|3 |DEPARTMENT_DATA| MERCHANT|- |
|4 |FEEDBACK_MAIN_TYPE_DATA| MERCHANT|- |
|5 |ROLE_TYPE_DATA| MERCHANT|- |
|6 |FEEDBACK_RESULT_STATUS_DATA| MERCHANT|- |
|7 |FEEDBACK_RESOLVE_STATUS_DATA| MERCHANT|- |
|8 |MERCHANT_BACKEND_LOG_DATA| MERCHANT|- |
|9 |FEEDBACK_ITEM_DATA| MERCHANT|- |






 
### Table JOB_TYPE_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(200)|张三 |
|3|REMARK|Remark|text|text() |
|4|MERCHANT|Merchant|BIGINT|1 |
|5|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_JOB_TYPE_ID|ID|PRIMARY KEY||
|2|PK_JOB_TYPE_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_JOB_TYPE_MERCHANT|MERCHANT|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_JOB_TYPE_ID|ID|-|-|PRIMARY KEY|
|2|FK_JOB_TYPE_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |JOB_TYPE_WITH_MAIN_TYPE_DATA| JOB_TYPE|- |
|2 |EMPLOYEE_DATA| JOB_TYPE|- |






 
### Table JOB_TYPE_WITH_MAIN_TYPE_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|MAIN_TYPE|Main Type|BIGINT|1 |
|3|JOB_TYPE|Job Type|BIGINT|1 |
|4|PERMISSION_TYPE|Permission Type|BIGINT|1 |
|5|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|6|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_JOB_TYPE_WITH_MAIN_TYPE_ID|ID|PRIMARY KEY||
|2|PK_JOB_TYPE_WITH_MAIN_TYPE_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_JOB_TYPE_WITH_MAIN_TYPE_MAIN_TYPE|MAIN_TYPE|INDEX||
|4|IDX_JOB_TYPE_WITH_MAIN_TYPE_JOB_TYPE|JOB_TYPE|INDEX||
|5|IDX_JOB_TYPE_WITH_MAIN_TYPE_PERMISSION_TYPE|PERMISSION_TYPE|INDEX||
|6|IDX_JOB_TYPE_WITH_MAIN_TYPE_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_JOB_TYPE_WITH_MAIN_TYPE_ID|ID|-|-|PRIMARY KEY|
|2|FK_JOB_TYPE_WITH_MAIN_TYPE_MAIN_TYPE|MAIN_TYPE|FEEDBACK_MAIN_TYPE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_JOB_TYPE_WITH_MAIN_TYPE_JOB_TYPE|JOB_TYPE|JOB_TYPE_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_JOB_TYPE_WITH_MAIN_TYPE_PERMISSION_TYPE|PERMISSION_TYPE|PERMISSION_TYPE_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |FEEDBACK_MAIN_TYPE_DATA| MAIN_TYPE|- |
|2 |JOB_TYPE_DATA| JOB_TYPE|- |
|3 |PERMISSION_TYPE_DATA| PERMISSION_TYPE|- |






 
### Table EMPLOYEE_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(200)|张三 |
|3|EXTERNAL_ID|External Id|VARCHAR(100)|sss |
|4|JOB_TYPE|Job Type|BIGINT|1 |
|5|MERCHANT|Merchant|BIGINT|1 |
|6|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_EMPLOYEE_ID|ID|PRIMARY KEY||
|2|PK_EMPLOYEE_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_EMPLOYEE_JOB_TYPE|JOB_TYPE|INDEX||
|4|IDX_EMPLOYEE_MERCHANT|MERCHANT|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_EMPLOYEE_ID|ID|-|-|PRIMARY KEY|
|2|FK_EMPLOYEE_JOB_TYPE|JOB_TYPE|JOB_TYPE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_EMPLOYEE_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |JOB_TYPE_DATA| JOB_TYPE|- |
|2 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |READ_FLAG_DATA| EMPLOYEE|- |






 
### Table DEPARTMENT_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(200)|审计部 |
|3|CODE|Code|BIGINT|123123l |
|4|MERCHANT|Merchant|BIGINT|1 |
|5|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_DEPARTMENT_ID|ID|PRIMARY KEY||
|2|PK_DEPARTMENT_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_DEPARTMENT_MERCHANT|MERCHANT|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_DEPARTMENT_ID|ID|-|-|PRIMARY KEY|
|2|FK_DEPARTMENT_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |FEEDBACK_ITEM_DATA| TARGET_DEPARTMENT|- |






 
### Table FEEDBACK_MAIN_TYPE_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(200)|审计部 |
|3|CODE|Code|BIGINT|123123l |
|4|MERCHANT|Merchant|BIGINT|1 |
|5|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_FEEDBACK_MAIN_TYPE_ID|ID|PRIMARY KEY||
|2|PK_FEEDBACK_MAIN_TYPE_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_FEEDBACK_MAIN_TYPE_MERCHANT|MERCHANT|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_FEEDBACK_MAIN_TYPE_ID|ID|-|-|PRIMARY KEY|
|2|FK_FEEDBACK_MAIN_TYPE_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |JOB_TYPE_WITH_MAIN_TYPE_DATA| MAIN_TYPE|- |
|2 |FEEDBACK_SUB_TYPE_DATA| MAIN_TYPE|- |
|3 |FEEDBACK_ITEM_DATA| MAIN_TYPE|- |






 
### Table ROLE_TYPE_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(200)|员工 |
|3|CODE|Code|BIGINT|123123l |
|4|MERCHANT|Merchant|BIGINT|1 |
|5|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_ROLE_TYPE_ID|ID|PRIMARY KEY||
|2|PK_ROLE_TYPE_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_ROLE_TYPE_MERCHANT|MERCHANT|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_ROLE_TYPE_ID|ID|-|-|PRIMARY KEY|
|2|FK_ROLE_TYPE_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |FEEDBACK_ITEM_DATA| ROLE_TYPE|- |






 
### Table FEEDBACK_SUB_TYPE_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(200)|审计部 |
|3|CODE|Code|BIGINT|123123l |
|4|MAIN_TYPE|Main Type|BIGINT|1 |
|5|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_FEEDBACK_SUB_TYPE_ID|ID|PRIMARY KEY||
|2|PK_FEEDBACK_SUB_TYPE_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_FEEDBACK_SUB_TYPE_MAIN_TYPE|MAIN_TYPE|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_FEEDBACK_SUB_TYPE_ID|ID|-|-|PRIMARY KEY|
|2|FK_FEEDBACK_SUB_TYPE_MAIN_TYPE|MAIN_TYPE|FEEDBACK_MAIN_TYPE_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |FEEDBACK_MAIN_TYPE_DATA| MAIN_TYPE|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |FEEDBACK_ITEM_DATA| DETAIL_TYPE|- |






 
### Table FEEDBACK_RESULT_STATUS_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(200)|已查实｜未查实 |
|3|CODE|Code|BIGINT|123123l |
|4|MERCHANT|Merchant|BIGINT|1 |
|5|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_FEEDBACK_RESULT_STATUS_ID|ID|PRIMARY KEY||
|2|PK_FEEDBACK_RESULT_STATUS_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_FEEDBACK_RESULT_STATUS_MERCHANT|MERCHANT|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_FEEDBACK_RESULT_STATUS_ID|ID|-|-|PRIMARY KEY|
|2|FK_FEEDBACK_RESULT_STATUS_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |FEEDBACK_ITEM_DATA| FEEDBACK_RESULT_STATUS|- |






 
### Table FEEDBACK_RESOLVE_STATUS_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(200)|已查实｜未查实 |
|3|CODE|Code|BIGINT|123123l |
|4|COLOR|Color|VARCHAR(100)|red |
|5|STEP_INDEX|Step Index|INTEGER|100 |
|6|PROGRESS|Progress|INTEGER|100 |
|7|MERCHANT|Merchant|BIGINT|1 |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_FEEDBACK_RESOLVE_STATUS_ID|ID|PRIMARY KEY||
|2|PK_FEEDBACK_RESOLVE_STATUS_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_FEEDBACK_RESOLVE_STATUS_MERCHANT|MERCHANT|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_FEEDBACK_RESOLVE_STATUS_ID|ID|-|-|PRIMARY KEY|
|2|FK_FEEDBACK_RESOLVE_STATUS_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |FEEDBACK_ITEM_DATA| FEEDBACK_RESOLVE_STATUS|- |






 
### Table MERCHANT_BACKEND_LOG_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|3|TITLE|Title|VARCHAR(200)| 订货电话 |
|4|TYPE|Type|VARCHAR(100)|消息 |
|5|CONTENT|Content|VARCHAR(100)| text() |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_MERCHANT_BACKEND_LOG_ID|ID|PRIMARY KEY||
|2|PK_MERCHANT_BACKEND_LOG_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_MERCHANT_BACKEND_LOG_MERCHANT|MERCHANT|INDEX||
|4|IDX_MERCHANT_BACKEND_LOG_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_MERCHANT_BACKEND_LOG_ID|ID|-|-|PRIMARY KEY|
|2|FK_MERCHANT_BACKEND_LOG_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |






 
### Table FEEDBACK_ITEM_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|FEEDBACK_NUMBER|Feedback Number|VARCHAR(100)|FB-Ujafs09kkdf-123123 |
|3|NAME|Name|VARCHAR(100)|Philip |
|4|REALNAME|Realname|BOOLEAN|true |
|5|ROLE_TYPE|Role Type|BIGINT|1 |
|6|MOBILE_PHONE|Mobile Phone|VARCHAR(100)|A13988889999 |
|7|TARGET_DEPARTMENT|Target Department|BIGINT|1 |
|8|TARGET_NAME|Target Name|VARCHAR(40)|人员 |
|9|MAIN_TYPE|Main Type|BIGINT|1 |
|10|DETAIL_TYPE|Detail Type|BIGINT|1 |
|11|TITLE|Title|VARCHAR(40)|订货电话 |
|12|CONTENT|Content|text|text() |
|13|FEEDBACK_RESULT_STATUS|Feedback Result Status|BIGINT|1 |
|14|FEEDBACK_RESOLVE_STATUS|Feedback Resolve Status|BIGINT|1 |
|15|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|16|REMOTE_IP|Remote Ip|VARCHAR(100)|remoteIp() |
|17|DEVICE|Device|VARCHAR(100)|手机 |
|18|NETWORK|Network|VARCHAR(100)|WIFI |
|19|MERCHANT|Merchant|BIGINT|1 |
|20|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_FEEDBACK_ITEM_ID|ID|PRIMARY KEY||
|2|PK_FEEDBACK_ITEM_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_FEEDBACK_ITEM_ROLE_TYPE|ROLE_TYPE|INDEX||
|4|IDX_FEEDBACK_ITEM_TARGET_DEPARTMENT|TARGET_DEPARTMENT|INDEX||
|5|IDX_FEEDBACK_ITEM_MAIN_TYPE|MAIN_TYPE|INDEX||
|6|IDX_FEEDBACK_ITEM_DETAIL_TYPE|DETAIL_TYPE|INDEX||
|7|IDX_FEEDBACK_ITEM_FEEDBACK_RESULT_STATUS|FEEDBACK_RESULT_STATUS|INDEX||
|8|IDX_FEEDBACK_ITEM_FEEDBACK_RESOLVE_STATUS|FEEDBACK_RESOLVE_STATUS|INDEX||
|9|IDX_FEEDBACK_ITEM_MERCHANT|MERCHANT|INDEX||
|10|IDX_FEEDBACK_ITEM_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_FEEDBACK_ITEM_ID|ID|-|-|PRIMARY KEY|
|2|FK_FEEDBACK_ITEM_ROLE_TYPE|ROLE_TYPE|ROLE_TYPE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_FEEDBACK_ITEM_TARGET_DEPARTMENT|TARGET_DEPARTMENT|DEPARTMENT_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_FEEDBACK_ITEM_MAIN_TYPE|MAIN_TYPE|FEEDBACK_MAIN_TYPE_DATA|ID|CASCADE ON DELETE and UPDATE|
|5|FK_FEEDBACK_ITEM_DETAIL_TYPE|DETAIL_TYPE|FEEDBACK_SUB_TYPE_DATA|ID|CASCADE ON DELETE and UPDATE|
|6|FK_FEEDBACK_ITEM_FEEDBACK_RESULT_STATUS|FEEDBACK_RESULT_STATUS|FEEDBACK_RESULT_STATUS_DATA|ID|CASCADE ON DELETE and UPDATE|
|7|FK_FEEDBACK_ITEM_FEEDBACK_RESOLVE_STATUS|FEEDBACK_RESOLVE_STATUS|FEEDBACK_RESOLVE_STATUS_DATA|ID|CASCADE ON DELETE and UPDATE|
|8|FK_FEEDBACK_ITEM_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |ROLE_TYPE_DATA| ROLE_TYPE|- |
|2 |DEPARTMENT_DATA| TARGET_DEPARTMENT|- |
|3 |FEEDBACK_MAIN_TYPE_DATA| MAIN_TYPE|- |
|4 |FEEDBACK_SUB_TYPE_DATA| DETAIL_TYPE|- |
|5 |FEEDBACK_RESULT_STATUS_DATA| FEEDBACK_RESULT_STATUS|- |
|6 |FEEDBACK_RESOLVE_STATUS_DATA| FEEDBACK_RESOLVE_STATUS|- |
|7 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |READ_FLAG_DATA| FEEDBACK_ITEM|- |
|2 |FEEDBACK_ITEM_LOG_DATA| FEEDBACK_ITEM|- |
|3 |FEEDBACK_ITEM_ATTACHMENT_DATA| FEEDBACK_ITEM|- |
|4 |SUPPLEMENT_CONTENT_DATA| FEEDBACK_ITEM|- |






 
### Table READ_FLAG_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|COMMENT|Comment|VARCHAR(100)|已读 |
|3|EMPLOYEE|Employee|BIGINT|1 |
|4|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|5|FEEDBACK_ITEM|Feedback Item|BIGINT|1 |
|6|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_READ_FLAG_ID|ID|PRIMARY KEY||
|2|PK_READ_FLAG_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_READ_FLAG_EMPLOYEE|EMPLOYEE|INDEX||
|4|IDX_READ_FLAG_FEEDBACK_ITEM|FEEDBACK_ITEM|INDEX||
|5|IDX_READ_FLAG_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_READ_FLAG_ID|ID|-|-|PRIMARY KEY|
|2|FK_READ_FLAG_EMPLOYEE|EMPLOYEE|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_READ_FLAG_FEEDBACK_ITEM|FEEDBACK_ITEM|FEEDBACK_ITEM_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |EMPLOYEE_DATA| EMPLOYEE|- |
|2 |FEEDBACK_ITEM_DATA| FEEDBACK_ITEM|- |






 
### Table FEEDBACK_ITEM_LOG_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|3|TITLE|Title|VARCHAR(40)| 订货电话 |
|4|TYPE|Type|VARCHAR(100)|消息 |
|5|CONTENT|Content|VARCHAR(100)| text() |
|6|REMOTE_IP|Remote Ip|VARCHAR(100)|remoteIp() |
|7|DEVICE|Device|VARCHAR(100)|手机 |
|8|NETWORK|Network|VARCHAR(100)|WIFI |
|9|FEEDBACK_ITEM|Feedback Item|BIGINT|1 |
|10|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_FEEDBACK_ITEM_LOG_ID|ID|PRIMARY KEY||
|2|PK_FEEDBACK_ITEM_LOG_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_FEEDBACK_ITEM_LOG_FEEDBACK_ITEM|FEEDBACK_ITEM|INDEX||
|4|IDX_FEEDBACK_ITEM_LOG_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_FEEDBACK_ITEM_LOG_ID|ID|-|-|PRIMARY KEY|
|2|FK_FEEDBACK_ITEM_LOG_FEEDBACK_ITEM|FEEDBACK_ITEM|FEEDBACK_ITEM_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |FEEDBACK_ITEM_DATA| FEEDBACK_ITEM|- |






 
### Table FEEDBACK_ITEM_ATTACHMENT_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|FILE_NAME|File Name|VARCHAR(200)|订货电话 |
|3|MIME_TYPE|Mime Type|VARCHAR(200)|image/png |
|4|FILE_SIZE|File Size|INTEGER|40000000 |
|5|RESOURCE_KEY|Resource Key|VARCHAR(200)|订货电话 |
|6|RESOURCE_URL|Resource Url|VARCHAR(400)|http |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|FEEDBACK_ITEM|Feedback Item|BIGINT|1 |
|9|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_FEEDBACK_ITEM_ATTACHMENT_ID|ID|PRIMARY KEY||
|2|PK_FEEDBACK_ITEM_ATTACHMENT_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_FEEDBACK_ITEM_ATTACHMENT_FEEDBACK_ITEM|FEEDBACK_ITEM|INDEX||
|4|IDX_FEEDBACK_ITEM_ATTACHMENT_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_FEEDBACK_ITEM_ATTACHMENT_ID|ID|-|-|PRIMARY KEY|
|2|FK_FEEDBACK_ITEM_ATTACHMENT_FEEDBACK_ITEM|FEEDBACK_ITEM|FEEDBACK_ITEM_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |FEEDBACK_ITEM_DATA| FEEDBACK_ITEM|- |






 
### Table SUPPLEMENT_CONTENT_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|SUBMIT_CONTENT|Submit Content|text|text() |
|3|RESPONSE_CONTENT|Response Content|text|text() |
|4|INTERNAL_REMARK|Internal Remark|text|text() |
|5|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|6|FEEDBACK_ITEM|Feedback Item|BIGINT|1 |
|7|REMOTE_IP|Remote Ip|VARCHAR(100)|remoteIp() |
|8|DEVICE|Device|VARCHAR(100)|手机 |
|9|NETWORK|Network|VARCHAR(100)|WIFI |
|10|UPDATE_TIME|Update Time|TIMESTAMP|updateTime() |
|11|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_SUPPLEMENT_CONTENT_ID|ID|PRIMARY KEY||
|2|PK_SUPPLEMENT_CONTENT_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_SUPPLEMENT_CONTENT_FEEDBACK_ITEM|FEEDBACK_ITEM|INDEX||
|4|IDX_SUPPLEMENT_CONTENT_CREATE_TIME|CREATE_TIME|INDEX||
|5|IDX_SUPPLEMENT_CONTENT_UPDATE_TIME|UPDATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_SUPPLEMENT_CONTENT_ID|ID|-|-|PRIMARY KEY|
|2|FK_SUPPLEMENT_CONTENT_FEEDBACK_ITEM|FEEDBACK_ITEM|FEEDBACK_ITEM_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |FEEDBACK_ITEM_DATA| FEEDBACK_ITEM|- |







