#  employee-service Data Design Document

## Change History
| # |    Date    |        Author |
|:--|:----------:|--------------:|
| 1 | 2025-03-04 | TeaQL Doc Rob |
| 2 | 2025-03-04 | TeaQL Doc Rob |

## Summary of Concepts



## Tables Index


| # |  Table Name  |Columns Count |Relation Count |
|:-------------|:-----------------------|:-----------------------|:-----------------------|
 | 1 | [PLATFORM_DATA](#Table-PLATFORM_DATA) |3|1|
 | 2 | [MERCHANT_DATA](#Table-MERCHANT_DATA) |7|71|
 | 3 | [GENDER_TYPE_DATA](#Table-GENDER_TYPE_DATA) |3|2|
 | 4 | [MARITAL_STATUS_DATA](#Table-MARITAL_STATUS_DATA) |3|0|
 | 5 | [EDUCATION_LEVEL_DATA](#Table-EDUCATION_LEVEL_DATA) |3|3|
 | 6 | [RECRUITMENT_STATUS_DATA](#Table-RECRUITMENT_STATUS_DATA) |3|0|
 | 7 | [INTERVIEW_STATUS_DATA](#Table-INTERVIEW_STATUS_DATA) |3|1|
 | 8 | [ONBOARDING_STATUS_DATA](#Table-ONBOARDING_STATUS_DATA) |3|1|
 | 9 | [LEAVE_TYPE_DATA](#Table-LEAVE_TYPE_DATA) |3|2|
 | 10 | [PERFORMANCE_LEVEL_DATA](#Table-PERFORMANCE_LEVEL_DATA) |3|1|
 | 11 | [TERMINATION_TYPE_DATA](#Table-TERMINATION_TYPE_DATA) |3|1|
 | 12 | [TRAINING_TYPE_DATA](#Table-TRAINING_TYPE_DATA) |3|1|
 | 13 | [DEPARTMENT_DATA](#Table-DEPARTMENT_DATA) |6|5|
 | 14 | [POSITION_DATA](#Table-POSITION_DATA) |5|1|
 | 15 | [JOB_GRADE_DATA](#Table-JOB_GRADE_DATA) |6|1|
 | 16 | [RECRUITMENT_PLAN_DATA](#Table-RECRUITMENT_PLAN_DATA) |7|0|
 | 17 | [JOB_POSITION_DATA](#Table-JOB_POSITION_DATA) |7|2|
 | 18 | [RECRUITMENT_REQUEST_DATA](#Table-RECRUITMENT_REQUEST_DATA) |6|0|
 | 19 | [CANDIDATE_DATA](#Table-CANDIDATE_DATA) |7|3|
 | 20 | [RESUME_DATA](#Table-RESUME_DATA) |5|0|
 | 21 | [INTERVIEW_DATA](#Table-INTERVIEW_DATA) |7|1|
 | 22 | [INTERVIEW_EVALUATION_DATA](#Table-INTERVIEW_EVALUATION_DATA) |7|0|
 | 23 | [OFFER_DATA](#Table-OFFER_DATA) |7|0|
 | 24 | [EMPLOYEE_DATA](#Table-EMPLOYEE_DATA) |9|37|
 | 25 | [EMPLOYEE_CONTRACT_DATA](#Table-EMPLOYEE_CONTRACT_DATA) |7|0|
 | 26 | [EMPLOYEE_POSITION_DATA](#Table-EMPLOYEE_POSITION_DATA) |6|0|
 | 27 | [EMPLOYEE_SALARY_DATA](#Table-EMPLOYEE_SALARY_DATA) |7|0|
 | 28 | [EMERGENCY_CONTACT_DATA](#Table-EMERGENCY_CONTACT_DATA) |6|0|
 | 29 | [ONBOARDING_PROCESS_DATA](#Table-ONBOARDING_PROCESS_DATA) |6|2|
 | 30 | [ONBOARDING_TASK_DATA](#Table-ONBOARDING_TASK_DATA) |7|0|
 | 31 | [ONBOARDING_DOCUMENT_DATA](#Table-ONBOARDING_DOCUMENT_DATA) |6|0|
 | 32 | [TRAINING_COURSE_DATA](#Table-TRAINING_COURSE_DATA) |7|1|
 | 33 | [TRAINING_SCHEDULE_DATA](#Table-TRAINING_SCHEDULE_DATA) |7|1|
 | 34 | [TRAINING_ENROLLMENT_DATA](#Table-TRAINING_ENROLLMENT_DATA) |5|1|
 | 35 | [TRAINING_EVALUATION_DATA](#Table-TRAINING_EVALUATION_DATA) |7|0|
 | 36 | [ATTENDANCE_RECORD_DATA](#Table-ATTENDANCE_RECORD_DATA) |7|0|
 | 37 | [ATTENDANCE_EXCEPTION_DATA](#Table-ATTENDANCE_EXCEPTION_DATA) |6|0|
 | 38 | [LEAVE_APPLICATION_DATA](#Table-LEAVE_APPLICATION_DATA) |9|1|
 | 39 | [LEAVE_BALANCE_DATA](#Table-LEAVE_BALANCE_DATA) |7|0|
 | 40 | [LEAVE_APPROVAL_DATA](#Table-LEAVE_APPROVAL_DATA) |7|0|
 | 41 | [PERFORMANCE_CYCLE_DATA](#Table-PERFORMANCE_CYCLE_DATA) |6|2|
 | 42 | [PERFORMANCE_GOAL_DATA](#Table-PERFORMANCE_GOAL_DATA) |7|0|
 | 43 | [PERFORMANCE_REVIEW_DATA](#Table-PERFORMANCE_REVIEW_DATA) |7|1|
 | 44 | [PERFORMANCE_FEEDBACK_DATA](#Table-PERFORMANCE_FEEDBACK_DATA) |5|0|
 | 45 | [SALARY_ADJUSTMENT_DATA](#Table-SALARY_ADJUSTMENT_DATA) |8|0|
 | 46 | [BONUS_CALCULATION_DATA](#Table-BONUS_CALCULATION_DATA) |7|0|
 | 47 | [SOCIAL_INSURANCE_DATA](#Table-SOCIAL_INSURANCE_DATA) |7|0|
 | 48 | [TERMINATION_APPLICATION_DATA](#Table-TERMINATION_APPLICATION_DATA) |7|0|
 | 49 | [EXIT_INTERVIEW_DATA](#Table-EXIT_INTERVIEW_DATA) |6|0|
 | 50 | [RETIREMENT_APPLICATION_DATA](#Table-RETIREMENT_APPLICATION_DATA) |6|0|
 | 51 | [SYSTEM_USER_DATA](#Table-SYSTEM_USER_DATA) |7|2|
 | 52 | [USER_ROLE_DATA](#Table-USER_ROLE_DATA) |4|1|
 | 53 | [ACCESS_PERMISSION_DATA](#Table-ACCESS_PERMISSION_DATA) |4|0|
 | 54 | [AUDIT_LOG_DATA](#Table-AUDIT_LOG_DATA) |7|0|
 | 55 | [DOCUMENT_TEMPLATE_DATA](#Table-DOCUMENT_TEMPLATE_DATA) |6|0|
 | 56 | [EMPLOYEE_DOCUMENT_DATA](#Table-EMPLOYEE_DOCUMENT_DATA) |6|0|
 | 57 | [HR_REPORT_DATA](#Table-HR_REPORT_DATA) |6|1|
 | 58 | [REPORT_PARAMETER_DATA](#Table-REPORT_PARAMETER_DATA) |5|0|
 | 59 | [SYSTEM_NOTIFICATION_DATA](#Table-SYSTEM_NOTIFICATION_DATA) |7|1|
 | 60 | [NOTIFICATION_RECIPIENT_DATA](#Table-NOTIFICATION_RECIPIENT_DATA) |5|0|
 | 61 | [WORKFLOW_DEFINITION_DATA](#Table-WORKFLOW_DEFINITION_DATA) |5|2|
 | 62 | [WORKFLOW_STEP_DATA](#Table-WORKFLOW_STEP_DATA) |6|1|
 | 63 | [WORKFLOW_INSTANCE_DATA](#Table-WORKFLOW_INSTANCE_DATA) |5|0|
 | 64 | [COMPANY_POLICY_DATA](#Table-COMPANY_POLICY_DATA) |6|0|
 | 65 | [EQUIPMENT_ALLOCATION_DATA](#Table-EQUIPMENT_ALLOCATION_DATA) |7|0|
 | 66 | [AWARD_RECOGNITION_DATA](#Table-AWARD_RECOGNITION_DATA) |6|0|
 | 67 | [SKILL_ASSESSMENT_DATA](#Table-SKILL_ASSESSMENT_DATA) |7|0|
 | 68 | [PROJECT_ASSIGNMENT_DATA](#Table-PROJECT_ASSIGNMENT_DATA) |7|0|
 | 69 | [WORK_EXPERIENCE_DATA](#Table-WORK_EXPERIENCE_DATA) |8|0|
 | 70 | [EDUCATION_HISTORY_DATA](#Table-EDUCATION_HISTORY_DATA) |7|0|
 | 71 | [CERTIFICATION_DATA](#Table-CERTIFICATION_DATA) |7|0|
 | 72 | [EMPLOYEE_SURVEY_DATA](#Table-EMPLOYEE_SURVEY_DATA) |6|0|
 | 73 | [BUDGET_ALLOCATION_DATA](#Table-BUDGET_ALLOCATION_DATA) |6|0|


## Tables

 
### Table PLATFORM_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(100)|Employee |
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
|1 |MERCHANT_DATA| PLATFORM|- |






 
### Table MERCHANT_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(100)|科技集团有限公司 |
|3|TAX_NUMBER|Tax Number|VARCHAR(100)|91370100MA3C6B4A1X |
|4|ADDRESS|Address|VARCHAR(100)|北京市海淀区科技园区88号 |
|5|EXTERNAL_ID|External Id|VARCHAR(100)|91370100MA3C6B4A1X |
|6|PLATFORM|Platform|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|UPDATE_TIME|Update Time|TIMESTAMP|updateTime() |
|9|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_MERCHANT_ID|ID|PRIMARY KEY||
|2|PK_MERCHANT_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_MERCHANT_PLATFORM|PLATFORM|INDEX||
|4|IDX_MERCHANT_CREATE_TIME|CREATE_TIME|INDEX||
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
|1 |GENDER_TYPE_DATA| MERCHANT|- |
|2 |MARITAL_STATUS_DATA| MERCHANT|- |
|3 |EDUCATION_LEVEL_DATA| MERCHANT|- |
|4 |RECRUITMENT_STATUS_DATA| MERCHANT|- |
|5 |INTERVIEW_STATUS_DATA| MERCHANT|- |
|6 |ONBOARDING_STATUS_DATA| MERCHANT|- |
|7 |LEAVE_TYPE_DATA| MERCHANT|- |
|8 |PERFORMANCE_LEVEL_DATA| MERCHANT|- |
|9 |TERMINATION_TYPE_DATA| MERCHANT|- |
|10 |TRAINING_TYPE_DATA| MERCHANT|- |
|11 |DEPARTMENT_DATA| MERCHANT|- |
|12 |POSITION_DATA| MERCHANT|- |
|13 |JOB_GRADE_DATA| MERCHANT|- |
|14 |RECRUITMENT_PLAN_DATA| MERCHANT|- |
|15 |JOB_POSITION_DATA| MERCHANT|- |
|16 |RECRUITMENT_REQUEST_DATA| MERCHANT|- |
|17 |CANDIDATE_DATA| MERCHANT|- |
|18 |RESUME_DATA| MERCHANT|- |
|19 |INTERVIEW_DATA| MERCHANT|- |
|20 |INTERVIEW_EVALUATION_DATA| MERCHANT|- |
|21 |OFFER_DATA| MERCHANT|- |
|22 |EMPLOYEE_DATA| MERCHANT|- |
|23 |EMPLOYEE_CONTRACT_DATA| MERCHANT|- |
|24 |EMPLOYEE_POSITION_DATA| MERCHANT|- |
|25 |EMPLOYEE_SALARY_DATA| MERCHANT|- |
|26 |EMERGENCY_CONTACT_DATA| MERCHANT|- |
|27 |ONBOARDING_PROCESS_DATA| MERCHANT|- |
|28 |ONBOARDING_TASK_DATA| MERCHANT|- |
|29 |ONBOARDING_DOCUMENT_DATA| MERCHANT|- |
|30 |TRAINING_COURSE_DATA| MERCHANT|- |
|31 |TRAINING_SCHEDULE_DATA| MERCHANT|- |
|32 |TRAINING_ENROLLMENT_DATA| MERCHANT|- |
|33 |TRAINING_EVALUATION_DATA| MERCHANT|- |
|34 |ATTENDANCE_RECORD_DATA| MERCHANT|- |
|35 |ATTENDANCE_EXCEPTION_DATA| MERCHANT|- |
|36 |LEAVE_APPLICATION_DATA| MERCHANT|- |
|37 |LEAVE_BALANCE_DATA| MERCHANT|- |
|38 |LEAVE_APPROVAL_DATA| MERCHANT|- |
|39 |PERFORMANCE_CYCLE_DATA| MERCHANT|- |
|40 |PERFORMANCE_GOAL_DATA| MERCHANT|- |
|41 |PERFORMANCE_REVIEW_DATA| MERCHANT|- |
|42 |PERFORMANCE_FEEDBACK_DATA| MERCHANT|- |
|43 |SALARY_ADJUSTMENT_DATA| MERCHANT|- |
|44 |BONUS_CALCULATION_DATA| MERCHANT|- |
|45 |SOCIAL_INSURANCE_DATA| MERCHANT|- |
|46 |TERMINATION_APPLICATION_DATA| MERCHANT|- |
|47 |EXIT_INTERVIEW_DATA| MERCHANT|- |
|48 |RETIREMENT_APPLICATION_DATA| MERCHANT|- |
|49 |SYSTEM_USER_DATA| MERCHANT|- |
|50 |USER_ROLE_DATA| MERCHANT|- |
|51 |ACCESS_PERMISSION_DATA| MERCHANT|- |
|52 |AUDIT_LOG_DATA| MERCHANT|- |
|53 |DOCUMENT_TEMPLATE_DATA| MERCHANT|- |
|54 |EMPLOYEE_DOCUMENT_DATA| MERCHANT|- |
|55 |HR_REPORT_DATA| MERCHANT|- |
|56 |REPORT_PARAMETER_DATA| MERCHANT|- |
|57 |SYSTEM_NOTIFICATION_DATA| MERCHANT|- |
|58 |NOTIFICATION_RECIPIENT_DATA| MERCHANT|- |
|59 |WORKFLOW_DEFINITION_DATA| MERCHANT|- |
|60 |WORKFLOW_STEP_DATA| MERCHANT|- |
|61 |WORKFLOW_INSTANCE_DATA| MERCHANT|- |
|62 |COMPANY_POLICY_DATA| MERCHANT|- |
|63 |EQUIPMENT_ALLOCATION_DATA| MERCHANT|- |
|64 |AWARD_RECOGNITION_DATA| MERCHANT|- |
|65 |SKILL_ASSESSMENT_DATA| MERCHANT|- |
|66 |PROJECT_ASSIGNMENT_DATA| MERCHANT|- |
|67 |WORK_EXPERIENCE_DATA| MERCHANT|- |
|68 |EDUCATION_HISTORY_DATA| MERCHANT|- |
|69 |CERTIFICATION_DATA| MERCHANT|- |
|70 |EMPLOYEE_SURVEY_DATA| MERCHANT|- |
|71 |BUDGET_ALLOCATION_DATA| MERCHANT|- |






 
### Table GENDER_TYPE_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(100)|男 |
|3|CODE|Code|VARCHAR(100)|MALE |
|4|MERCHANT|Merchant|BIGINT|1 |
|5|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_GENDER_TYPE_ID|ID|PRIMARY KEY||
|2|PK_GENDER_TYPE_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_GENDER_TYPE_MERCHANT|MERCHANT|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_GENDER_TYPE_ID|ID|-|-|PRIMARY KEY|
|2|FK_GENDER_TYPE_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |CANDIDATE_DATA| GENDER|- |
|2 |EMPLOYEE_DATA| GENDER|- |






#### Internal Data
|ID |NAME |CODE |MERCHANT |VERSION |
|:----------|:----------|:----------|:----------|:----------|
|1|男|MALE|1|1|
|2|女|FEMALE|1|1|
|3|其他|OTHER|1|1|
 
### Table MARITAL_STATUS_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(100)|未婚 |
|3|CODE|Code|VARCHAR(100)|SINGLE |
|4|MERCHANT|Merchant|BIGINT|1 |
|5|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_MARITAL_STATUS_ID|ID|PRIMARY KEY||
|2|PK_MARITAL_STATUS_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_MARITAL_STATUS_MERCHANT|MERCHANT|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_MARITAL_STATUS_ID|ID|-|-|PRIMARY KEY|
|2|FK_MARITAL_STATUS_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |






#### Internal Data
|ID |NAME |CODE |MERCHANT |VERSION |
|:----------|:----------|:----------|:----------|:----------|
|1|未婚|SINGLE|1|1|
|2|已婚|MARRIED|1|1|
|3|离异|DIVORCED|1|1|
|4|丧偶|WIDOWED|1|1|
 
### Table EDUCATION_LEVEL_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(100)|高中及以下 |
|3|CODE|Code|VARCHAR(100)|HIGH_SCHOOL |
|4|MERCHANT|Merchant|BIGINT|1 |
|5|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_EDUCATION_LEVEL_ID|ID|PRIMARY KEY||
|2|PK_EDUCATION_LEVEL_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_EDUCATION_LEVEL_MERCHANT|MERCHANT|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_EDUCATION_LEVEL_ID|ID|-|-|PRIMARY KEY|
|2|FK_EDUCATION_LEVEL_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |JOB_POSITION_DATA| REQUIRED_EDUCATION|- |
|2 |CANDIDATE_DATA| EDUCATION|- |
|3 |EDUCATION_HISTORY_DATA| DEGREE|- |






#### Internal Data
|ID |NAME |CODE |MERCHANT |VERSION |
|:----------|:----------|:----------|:----------|:----------|
|1|高中及以下|HIGH_SCHOOL|1|1|
|2|大专|COLLEGE|1|1|
|3|本科|BACHELOR|1|1|
|4|硕士|MASTER|1|1|
|5|博士|DOCTOR|1|1|
 
### Table RECRUITMENT_STATUS_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(100)|待审核 |
|3|CODE|Code|VARCHAR(100)|PENDING |
|4|MERCHANT|Merchant|BIGINT|1 |
|5|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_RECRUITMENT_STATUS_ID|ID|PRIMARY KEY||
|2|PK_RECRUITMENT_STATUS_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_RECRUITMENT_STATUS_MERCHANT|MERCHANT|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_RECRUITMENT_STATUS_ID|ID|-|-|PRIMARY KEY|
|2|FK_RECRUITMENT_STATUS_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |






#### Internal Data
|ID |NAME |CODE |MERCHANT |VERSION |
|:----------|:----------|:----------|:----------|:----------|
|1|待审核|PENDING|1|1|
|2|已发布|PUBLISHED|1|1|
|3|已结束|CLOSED|1|1|
|4|已取消|CANCELLED|1|1|
 
### Table INTERVIEW_STATUS_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(100)|待安排 |
|3|CODE|Code|VARCHAR(100)|PENDING |
|4|MERCHANT|Merchant|BIGINT|1 |
|5|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_INTERVIEW_STATUS_ID|ID|PRIMARY KEY||
|2|PK_INTERVIEW_STATUS_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_INTERVIEW_STATUS_MERCHANT|MERCHANT|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_INTERVIEW_STATUS_ID|ID|-|-|PRIMARY KEY|
|2|FK_INTERVIEW_STATUS_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |INTERVIEW_DATA| STATUS|- |






#### Internal Data
|ID |NAME |CODE |MERCHANT |VERSION |
|:----------|:----------|:----------|:----------|:----------|
|1|待安排|PENDING|1|1|
|2|已安排|SCHEDULED|1|1|
|3|已完成|COMPLETED|1|1|
|4|已取消|CANCELLED|1|1|
 
### Table ONBOARDING_STATUS_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(100)|待入职 |
|3|CODE|Code|VARCHAR(100)|PENDING |
|4|MERCHANT|Merchant|BIGINT|1 |
|5|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_ONBOARDING_STATUS_ID|ID|PRIMARY KEY||
|2|PK_ONBOARDING_STATUS_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_ONBOARDING_STATUS_MERCHANT|MERCHANT|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_ONBOARDING_STATUS_ID|ID|-|-|PRIMARY KEY|
|2|FK_ONBOARDING_STATUS_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |ONBOARDING_PROCESS_DATA| STATUS|- |






#### Internal Data
|ID |NAME |CODE |MERCHANT |VERSION |
|:----------|:----------|:----------|:----------|:----------|
|1|待入职|PENDING|1|1|
|2|已入职|ONBOARDED|1|1|
|3|入职失败|FAILED|1|1|
 
### Table LEAVE_TYPE_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(100)|年假 |
|3|CODE|Code|VARCHAR(100)|ANNUAL |
|4|MERCHANT|Merchant|BIGINT|1 |
|5|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_LEAVE_TYPE_ID|ID|PRIMARY KEY||
|2|PK_LEAVE_TYPE_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_LEAVE_TYPE_MERCHANT|MERCHANT|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_LEAVE_TYPE_ID|ID|-|-|PRIMARY KEY|
|2|FK_LEAVE_TYPE_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |LEAVE_APPLICATION_DATA| LEAVE_TYPE|- |
|2 |LEAVE_BALANCE_DATA| LEAVE_TYPE|- |






#### Internal Data
|ID |NAME |CODE |MERCHANT |VERSION |
|:----------|:----------|:----------|:----------|:----------|
|1|年假|ANNUAL|1|1|
|2|病假|SICK|1|1|
|3|事假|PERSONAL|1|1|
|4|婚假|MARRIAGE|1|1|
|5|产假|MATERNITY|1|1|
|6|陪产假|PATERNITY|1|1|
 
### Table PERFORMANCE_LEVEL_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(100)|优秀 |
|3|CODE|Code|VARCHAR(100)|EXCELLENT |
|4|MERCHANT|Merchant|BIGINT|1 |
|5|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_PERFORMANCE_LEVEL_ID|ID|PRIMARY KEY||
|2|PK_PERFORMANCE_LEVEL_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_PERFORMANCE_LEVEL_MERCHANT|MERCHANT|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_PERFORMANCE_LEVEL_ID|ID|-|-|PRIMARY KEY|
|2|FK_PERFORMANCE_LEVEL_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |PERFORMANCE_REVIEW_DATA| PERFORMANCE_LEVEL|- |






#### Internal Data
|ID |NAME |CODE |MERCHANT |VERSION |
|:----------|:----------|:----------|:----------|:----------|
|1|优秀|EXCELLENT|1|1|
|2|良好|GOOD|1|1|
|3|合格|SATISFACTORY|1|1|
|4|待改进|NEEDS_IMPROVEMENT|1|1|
|5|不合格|UNSATISFACTORY|1|1|
 
### Table TERMINATION_TYPE_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(100)|辞职 |
|3|CODE|Code|VARCHAR(100)|RESIGNATION |
|4|MERCHANT|Merchant|BIGINT|1 |
|5|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_TERMINATION_TYPE_ID|ID|PRIMARY KEY||
|2|PK_TERMINATION_TYPE_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_TERMINATION_TYPE_MERCHANT|MERCHANT|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_TERMINATION_TYPE_ID|ID|-|-|PRIMARY KEY|
|2|FK_TERMINATION_TYPE_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |TERMINATION_APPLICATION_DATA| TERMINATION_TYPE|- |






#### Internal Data
|ID |NAME |CODE |MERCHANT |VERSION |
|:----------|:----------|:----------|:----------|:----------|
|1|辞职|RESIGNATION|1|1|
|2|辞退|DISMISSAL|1|1|
|3|合同到期|CONTRACT_END|1|1|
|4|退休|RETIREMENT|1|1|
 
### Table TRAINING_TYPE_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(100)|入职培训 |
|3|CODE|Code|VARCHAR(100)|ONBOARDING |
|4|MERCHANT|Merchant|BIGINT|1 |
|5|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_TRAINING_TYPE_ID|ID|PRIMARY KEY||
|2|PK_TRAINING_TYPE_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_TRAINING_TYPE_MERCHANT|MERCHANT|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_TRAINING_TYPE_ID|ID|-|-|PRIMARY KEY|
|2|FK_TRAINING_TYPE_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |TRAINING_COURSE_DATA| TRAINING_TYPE|- |






#### Internal Data
|ID |NAME |CODE |MERCHANT |VERSION |
|:----------|:----------|:----------|:----------|:----------|
|1|入职培训|ONBOARDING|1|1|
|2|技能培训|SKILL|1|1|
|3|管理培训|MANAGEMENT|1|1|
|4|安全培训|SAFETY|1|1|
 
### Table DEPARTMENT_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(100)|人力资源部 |
|3|CODE|Code|VARCHAR(100)|HR |
|4|\"DESCRIPTION\"|Description|VARCHAR(100)|负责公司人力资源管理工作 |
|5|MERCHANT|Merchant|BIGINT|1 |
|6|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|7|UPDATE_TIME|Update Time|TIMESTAMP|updateTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_DEPARTMENT_ID|ID|PRIMARY KEY||
|2|PK_DEPARTMENT_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_DEPARTMENT_MERCHANT|MERCHANT|INDEX||
|4|IDX_DEPARTMENT_CREATE_TIME|CREATE_TIME|INDEX||
|5|IDX_DEPARTMENT_UPDATE_TIME|UPDATE_TIME|INDEX||




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
|1 |POSITION_DATA| DEPARTMENT|- |
|2 |RECRUITMENT_PLAN_DATA| DEPARTMENT|- |
|3 |JOB_POSITION_DATA| DEPARTMENT|- |
|4 |EMPLOYEE_POSITION_DATA| DEPARTMENT|- |
|5 |BUDGET_ALLOCATION_DATA| DEPARTMENT|- |






 
### Table POSITION_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(100)|人力资源经理 |
|3|CODE|Code|VARCHAR(100)|HR_MANAGER |
|4|DEPARTMENT|Department|BIGINT|1 |
|5|MERCHANT|Merchant|BIGINT|1 |
|6|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|7|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_POSITION_ID|ID|PRIMARY KEY||
|2|PK_POSITION_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_POSITION_DEPARTMENT|DEPARTMENT|INDEX||
|4|IDX_POSITION_MERCHANT|MERCHANT|INDEX||
|5|IDX_POSITION_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_POSITION_ID|ID|-|-|PRIMARY KEY|
|2|FK_POSITION_DEPARTMENT|DEPARTMENT|DEPARTMENT_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_POSITION_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |DEPARTMENT_DATA| DEPARTMENT|- |
|2 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |EMPLOYEE_POSITION_DATA| \"POSITION\"|- |






 
### Table JOB_GRADE_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(100)|P7技术专家 |
|3|CODE|Code|VARCHAR(100)|P7 |
|4|MIN_SALARY|Min Salary|INTEGER|25000 |
|5|MAX_SALARY|Max Salary|INTEGER|40000 |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_JOB_GRADE_ID|ID|PRIMARY KEY||
|2|PK_JOB_GRADE_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_JOB_GRADE_MERCHANT|MERCHANT|INDEX||
|4|IDX_JOB_GRADE_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_JOB_GRADE_ID|ID|-|-|PRIMARY KEY|
|2|FK_JOB_GRADE_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |JOB_POSITION_DATA| JOB_GRADE|- |






 
### Table RECRUITMENT_PLAN_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|TITLE|Title|VARCHAR(100)|2024年Q2技术岗位招聘计划 |
|3|PLAN_NUMBER|Plan Number|VARCHAR(100)|RP2024Q2001 |
|4|DEPARTMENT|Department|BIGINT|1 |
|5|MERCHANT|Merchant|BIGINT|1 |
|6|PLAN_START_DATE|Plan Start Date|DATE|2024-04-01 |
|7|PLAN_END_DATE|Plan End Date|DATE|2024-06-30 |
|8|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|9|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_RECRUITMENT_PLAN_ID|ID|PRIMARY KEY||
|2|PK_RECRUITMENT_PLAN_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_RECRUITMENT_PLAN_DEPARTMENT|DEPARTMENT|INDEX||
|4|IDX_RECRUITMENT_PLAN_MERCHANT|MERCHANT|INDEX||
|5|IDX_RECRUITMENT_PLAN_PLAN_START_DATE|PLAN_START_DATE|INDEX||
|6|IDX_RECRUITMENT_PLAN_PLAN_END_DATE|PLAN_END_DATE|INDEX||
|7|IDX_RECRUITMENT_PLAN_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_RECRUITMENT_PLAN_ID|ID|-|-|PRIMARY KEY|
|2|FK_RECRUITMENT_PLAN_DEPARTMENT|DEPARTMENT|DEPARTMENT_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_RECRUITMENT_PLAN_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |DEPARTMENT_DATA| DEPARTMENT|- |
|2 |MERCHANT_DATA| MERCHANT|- |






 
### Table JOB_POSITION_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|TITLE|Title|VARCHAR(100)|Java开发工程师 |
|3|DEPARTMENT|Department|BIGINT|1 |
|4|JOB_GRADE|Job Grade|BIGINT|1 |
|5|MERCHANT|Merchant|BIGINT|1 |
|6|REQUIRED_EDUCATION|Required Education|BIGINT|1 |
|7|WORK_LOCATION|Work Location|VARCHAR(100)|北京 |
|8|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|9|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_JOB_POSITION_ID|ID|PRIMARY KEY||
|2|PK_JOB_POSITION_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_JOB_POSITION_DEPARTMENT|DEPARTMENT|INDEX||
|4|IDX_JOB_POSITION_JOB_GRADE|JOB_GRADE|INDEX||
|5|IDX_JOB_POSITION_MERCHANT|MERCHANT|INDEX||
|6|IDX_JOB_POSITION_REQUIRED_EDUCATION|REQUIRED_EDUCATION|INDEX||
|7|IDX_JOB_POSITION_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_JOB_POSITION_ID|ID|-|-|PRIMARY KEY|
|2|FK_JOB_POSITION_DEPARTMENT|DEPARTMENT|DEPARTMENT_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_JOB_POSITION_JOB_GRADE|JOB_GRADE|JOB_GRADE_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_JOB_POSITION_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|
|5|FK_JOB_POSITION_REQUIRED_EDUCATION|REQUIRED_EDUCATION|EDUCATION_LEVEL_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |DEPARTMENT_DATA| DEPARTMENT|- |
|2 |JOB_GRADE_DATA| JOB_GRADE|- |
|3 |MERCHANT_DATA| MERCHANT|- |
|4 |EDUCATION_LEVEL_DATA| REQUIRED_EDUCATION|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |RECRUITMENT_REQUEST_DATA| JOB_POSITION|- |
|2 |OFFER_DATA| JOB_POSITION|- |






 
### Table RECRUITMENT_REQUEST_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|REQUEST_NUMBER|Request Number|VARCHAR(100)|RR2024001 |
|3|JOB_POSITION|Job Position|BIGINT|1 |
|4|REQUIRED_COUNT|Required Count|INTEGER|5 |
|5|URGENCY_LEVEL|Urgency Level|VARCHAR(100)|HIGH |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_RECRUITMENT_REQUEST_ID|ID|PRIMARY KEY||
|2|PK_RECRUITMENT_REQUEST_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_RECRUITMENT_REQUEST_JOB_POSITION|JOB_POSITION|INDEX||
|4|IDX_RECRUITMENT_REQUEST_MERCHANT|MERCHANT|INDEX||
|5|IDX_RECRUITMENT_REQUEST_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_RECRUITMENT_REQUEST_ID|ID|-|-|PRIMARY KEY|
|2|FK_RECRUITMENT_REQUEST_JOB_POSITION|JOB_POSITION|JOB_POSITION_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_RECRUITMENT_REQUEST_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |JOB_POSITION_DATA| JOB_POSITION|- |
|2 |MERCHANT_DATA| MERCHANT|- |






 
### Table CANDIDATE_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(100)|张三 |
|3|MOBILE_PHONE|Mobile Phone|INTEGER|13800138000 |
|4|EMAIL|Email|VARCHAR(100)|zhangsan@email.com |
|5|GENDER|Gender|BIGINT|1 |
|6|EDUCATION|Education|BIGINT|1 |
|7|MERCHANT|Merchant|BIGINT|1 |
|8|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|9|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_CANDIDATE_ID|ID|PRIMARY KEY||
|2|PK_CANDIDATE_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_CANDIDATE_GENDER|GENDER|INDEX||
|4|IDX_CANDIDATE_EDUCATION|EDUCATION|INDEX||
|5|IDX_CANDIDATE_MERCHANT|MERCHANT|INDEX||
|6|IDX_CANDIDATE_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_CANDIDATE_ID|ID|-|-|PRIMARY KEY|
|2|FK_CANDIDATE_GENDER|GENDER|GENDER_TYPE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_CANDIDATE_EDUCATION|EDUCATION|EDUCATION_LEVEL_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_CANDIDATE_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |GENDER_TYPE_DATA| GENDER|- |
|2 |EDUCATION_LEVEL_DATA| EDUCATION|- |
|3 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |RESUME_DATA| CANDIDATE|- |
|2 |INTERVIEW_DATA| CANDIDATE|- |
|3 |OFFER_DATA| CANDIDATE|- |






 
### Table RESUME_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|CANDIDATE|Candidate|BIGINT|1 |
|3|FILE_NAME|File Name|VARCHAR(100)|zhangsan_resume.pdf |
|4|FILE_SIZE|File Size|INTEGER|1024 |
|5|MERCHANT|Merchant|BIGINT|1 |
|6|UPLOAD_TIME|Upload Time|TIMESTAMP|createTime() |
|7|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_RESUME_ID|ID|PRIMARY KEY||
|2|PK_RESUME_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_RESUME_CANDIDATE|CANDIDATE|INDEX||
|4|IDX_RESUME_MERCHANT|MERCHANT|INDEX||
|5|IDX_RESUME_UPLOAD_TIME|UPLOAD_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_RESUME_ID|ID|-|-|PRIMARY KEY|
|2|FK_RESUME_CANDIDATE|CANDIDATE|CANDIDATE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_RESUME_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |CANDIDATE_DATA| CANDIDATE|- |
|2 |MERCHANT_DATA| MERCHANT|- |






 
### Table INTERVIEW_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|CANDIDATE|Candidate|BIGINT|1 |
|3|INTERVIEWER|Interviewer|BIGINT|1 |
|4|INTERVIEW_TIME|Interview Time|VARCHAR(100)|00:00 |
|5|INTERVIEW_LOCATION|Interview Location|VARCHAR(100)|公司会议室A |
|6|STATUS|Status|BIGINT|1 |
|7|MERCHANT|Merchant|BIGINT|1 |
|8|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|9|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_INTERVIEW_ID|ID|PRIMARY KEY||
|2|PK_INTERVIEW_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_INTERVIEW_CANDIDATE|CANDIDATE|INDEX||
|4|IDX_INTERVIEW_INTERVIEWER|INTERVIEWER|INDEX||
|5|IDX_INTERVIEW_STATUS|STATUS|INDEX||
|6|IDX_INTERVIEW_MERCHANT|MERCHANT|INDEX||
|7|IDX_INTERVIEW_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_INTERVIEW_ID|ID|-|-|PRIMARY KEY|
|2|FK_INTERVIEW_CANDIDATE|CANDIDATE|CANDIDATE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_INTERVIEW_INTERVIEWER|INTERVIEWER|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_INTERVIEW_STATUS|STATUS|INTERVIEW_STATUS_DATA|ID|CASCADE ON DELETE and UPDATE|
|5|FK_INTERVIEW_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |CANDIDATE_DATA| CANDIDATE|- |
|2 |EMPLOYEE_DATA| INTERVIEWER|- |
|3 |INTERVIEW_STATUS_DATA| STATUS|- |
|4 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |INTERVIEW_EVALUATION_DATA| INTERVIEW|- |






 
### Table INTERVIEW_EVALUATION_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|INTERVIEW|Interview|BIGINT|1 |
|3|TECHNICAL_SCORE|Technical Score|INTEGER|85 |
|4|COMMUNICATION_SCORE|Communication Score|INTEGER|90 |
|5|OVERALL_SCORE|Overall Score|INTEGER|87 |
|6|RECOMMENDATION|Recommendation|VARCHAR(100)|RECOMMEND |
|7|MERCHANT|Merchant|BIGINT|1 |
|8|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|9|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_INTERVIEW_EVALUATION_ID|ID|PRIMARY KEY||
|2|PK_INTERVIEW_EVALUATION_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_INTERVIEW_EVALUATION_INTERVIEW|INTERVIEW|INDEX||
|4|IDX_INTERVIEW_EVALUATION_MERCHANT|MERCHANT|INDEX||
|5|IDX_INTERVIEW_EVALUATION_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_INTERVIEW_EVALUATION_ID|ID|-|-|PRIMARY KEY|
|2|FK_INTERVIEW_EVALUATION_INTERVIEW|INTERVIEW|INTERVIEW_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_INTERVIEW_EVALUATION_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |INTERVIEW_DATA| INTERVIEW|- |
|2 |MERCHANT_DATA| MERCHANT|- |






 
### Table OFFER_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|CANDIDATE|Candidate|BIGINT|1 |
|3|JOB_POSITION|Job Position|BIGINT|1 |
|4|BASE_SALARY|Base Salary|INTEGER|30000 |
|5|BONUS|Bonus|INTEGER|5000 |
|6|START_DATE|Start Date|DATE|2024-05-01 |
|7|MERCHANT|Merchant|BIGINT|1 |
|8|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|9|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_OFFER_ID|ID|PRIMARY KEY||
|2|PK_OFFER_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_OFFER_CANDIDATE|CANDIDATE|INDEX||
|4|IDX_OFFER_JOB_POSITION|JOB_POSITION|INDEX||
|5|IDX_OFFER_MERCHANT|MERCHANT|INDEX||
|6|IDX_OFFER_START_DATE|START_DATE|INDEX||
|7|IDX_OFFER_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_OFFER_ID|ID|-|-|PRIMARY KEY|
|2|FK_OFFER_CANDIDATE|CANDIDATE|CANDIDATE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_OFFER_JOB_POSITION|JOB_POSITION|JOB_POSITION_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_OFFER_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |CANDIDATE_DATA| CANDIDATE|- |
|2 |JOB_POSITION_DATA| JOB_POSITION|- |
|3 |MERCHANT_DATA| MERCHANT|- |






 
### Table EMPLOYEE_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|EMPLOYEE_NUMBER|Employee Number|VARCHAR(100)|EMP10001 |
|3|NAME|Name|VARCHAR(100)|李四 |
|4|GENDER|Gender|BIGINT|1 |
|5|EXTERNAL_ID|External Id|VARCHAR(100)|EMP10001 |
|6|BIRTH_DATE|Birth Date|DATE|1990-05-15 |
|7|MOBILE_PHONE|Mobile Phone|INTEGER|13900139000 |
|8|EMAIL|Email|VARCHAR(100)|lisi@company.com |
|9|MERCHANT|Merchant|BIGINT|1 |
|10|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|11|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_EMPLOYEE_ID|ID|PRIMARY KEY||
|2|PK_EMPLOYEE_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_EMPLOYEE_GENDER|GENDER|INDEX||
|4|IDX_EMPLOYEE_MERCHANT|MERCHANT|INDEX||
|5|IDX_EMPLOYEE_BIRTH_DATE|BIRTH_DATE|INDEX||
|6|IDX_EMPLOYEE_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_EMPLOYEE_ID|ID|-|-|PRIMARY KEY|
|2|FK_EMPLOYEE_GENDER|GENDER|GENDER_TYPE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_EMPLOYEE_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |GENDER_TYPE_DATA| GENDER|- |
|2 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |INTERVIEW_DATA| INTERVIEWER|- |
|2 |EMPLOYEE_CONTRACT_DATA| EMPLOYEE|- |
|3 |EMPLOYEE_POSITION_DATA| EMPLOYEE|- |
|4 |EMPLOYEE_SALARY_DATA| EMPLOYEE|- |
|5 |EMERGENCY_CONTACT_DATA| EMPLOYEE|- |
|6 |ONBOARDING_PROCESS_DATA| EMPLOYEE|- |
|7 |ONBOARDING_TASK_DATA| ASSIGNED_TO|- |
|8 |TRAINING_COURSE_DATA| INSTRUCTOR|- |
|9 |TRAINING_ENROLLMENT_DATA| EMPLOYEE|- |
|10 |ATTENDANCE_RECORD_DATA| EMPLOYEE|- |
|11 |ATTENDANCE_EXCEPTION_DATA| EMPLOYEE|- |
|12 |LEAVE_APPLICATION_DATA| EMPLOYEE|- |
|13 |LEAVE_BALANCE_DATA| EMPLOYEE|- |
|14 |LEAVE_APPROVAL_DATA| APPROVER|- |
|15 |PERFORMANCE_GOAL_DATA| EMPLOYEE|- |
|16 |PERFORMANCE_REVIEW_DATA| EMPLOYEE|- |
|17 |PERFORMANCE_REVIEW_DATA| REVIEWER|- |
|18 |PERFORMANCE_FEEDBACK_DATA| FEEDBACK_PROVIDER|- |
|19 |SALARY_ADJUSTMENT_DATA| EMPLOYEE|- |
|20 |BONUS_CALCULATION_DATA| EMPLOYEE|- |
|21 |SOCIAL_INSURANCE_DATA| EMPLOYEE|- |
|22 |TERMINATION_APPLICATION_DATA| EMPLOYEE|- |
|23 |EXIT_INTERVIEW_DATA| EMPLOYEE|- |
|24 |EXIT_INTERVIEW_DATA| INTERVIEWER|- |
|25 |RETIREMENT_APPLICATION_DATA| EMPLOYEE|- |
|26 |SYSTEM_USER_DATA| EMPLOYEE|- |
|27 |EMPLOYEE_DOCUMENT_DATA| EMPLOYEE|- |
|28 |NOTIFICATION_RECIPIENT_DATA| EMPLOYEE|- |
|29 |EQUIPMENT_ALLOCATION_DATA| EMPLOYEE|- |
|30 |AWARD_RECOGNITION_DATA| EMPLOYEE|- |
|31 |SKILL_ASSESSMENT_DATA| EMPLOYEE|- |
|32 |SKILL_ASSESSMENT_DATA| ASSESSOR|- |
|33 |PROJECT_ASSIGNMENT_DATA| EMPLOYEE|- |
|34 |WORK_EXPERIENCE_DATA| EMPLOYEE|- |
|35 |EDUCATION_HISTORY_DATA| EMPLOYEE|- |
|36 |CERTIFICATION_DATA| EMPLOYEE|- |
|37 |EMPLOYEE_SURVEY_DATA| PARTICIPANT|- |






 
### Table EMPLOYEE_CONTRACT_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|EMPLOYEE|Employee|BIGINT|1 |
|3|CONTRACT_NUMBER|Contract Number|VARCHAR(100)|CT2024001 |
|4|CONTRACT_TYPE|Contract Type|VARCHAR(100)|FULL_TIME |
|5|START_DATE|Start Date|DATE|2024-01-01 |
|6|END_DATE|End Date|DATE|2026-12-31 |
|7|MERCHANT|Merchant|BIGINT|1 |
|8|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|9|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_EMPLOYEE_CONTRACT_ID|ID|PRIMARY KEY||
|2|PK_EMPLOYEE_CONTRACT_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_EMPLOYEE_CONTRACT_EMPLOYEE|EMPLOYEE|INDEX||
|4|IDX_EMPLOYEE_CONTRACT_MERCHANT|MERCHANT|INDEX||
|5|IDX_EMPLOYEE_CONTRACT_START_DATE|START_DATE|INDEX||
|6|IDX_EMPLOYEE_CONTRACT_END_DATE|END_DATE|INDEX||
|7|IDX_EMPLOYEE_CONTRACT_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_EMPLOYEE_CONTRACT_ID|ID|-|-|PRIMARY KEY|
|2|FK_EMPLOYEE_CONTRACT_EMPLOYEE|EMPLOYEE|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_EMPLOYEE_CONTRACT_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |EMPLOYEE_DATA| EMPLOYEE|- |
|2 |MERCHANT_DATA| MERCHANT|- |






 
### Table EMPLOYEE_POSITION_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|EMPLOYEE|Employee|BIGINT|1 |
|3|\"POSITION\"|Position|BIGINT|1 |
|4|DEPARTMENT|Department|BIGINT|1 |
|5|START_DATE|Start Date|DATE|2024-01-01 |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_EMPLOYEE_POSITION_ID|ID|PRIMARY KEY||
|2|PK_EMPLOYEE_POSITION_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_EMPLOYEE_POSITION_EMPLOYEE|EMPLOYEE|INDEX||
|4|IDX_EMPLOYEE_POSITION_\"POSITION\"|\"POSITION\"|INDEX||
|5|IDX_EMPLOYEE_POSITION_DEPARTMENT|DEPARTMENT|INDEX||
|6|IDX_EMPLOYEE_POSITION_MERCHANT|MERCHANT|INDEX||
|7|IDX_EMPLOYEE_POSITION_START_DATE|START_DATE|INDEX||
|8|IDX_EMPLOYEE_POSITION_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_EMPLOYEE_POSITION_ID|ID|-|-|PRIMARY KEY|
|2|FK_EMPLOYEE_POSITION_EMPLOYEE|EMPLOYEE|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_EMPLOYEE_POSITION_\"POSITION\"|\"POSITION\"|POSITION_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_EMPLOYEE_POSITION_DEPARTMENT|DEPARTMENT|DEPARTMENT_DATA|ID|CASCADE ON DELETE and UPDATE|
|5|FK_EMPLOYEE_POSITION_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |EMPLOYEE_DATA| EMPLOYEE|- |
|2 |POSITION_DATA| \"POSITION\"|- |
|3 |DEPARTMENT_DATA| DEPARTMENT|- |
|4 |MERCHANT_DATA| MERCHANT|- |






 
### Table EMPLOYEE_SALARY_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|EMPLOYEE|Employee|BIGINT|1 |
|3|BASE_SALARY|Base Salary|INTEGER|30000 |
|4|PERFORMANCE_BONUS|Performance Bonus|INTEGER|5000 |
|5|ALLOWANCE|Allowance|INTEGER|2000 |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|EFFECTIVE_DATE|Effective Date|DATE|2024-01-01 |
|8|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|9|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_EMPLOYEE_SALARY_ID|ID|PRIMARY KEY||
|2|PK_EMPLOYEE_SALARY_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_EMPLOYEE_SALARY_EMPLOYEE|EMPLOYEE|INDEX||
|4|IDX_EMPLOYEE_SALARY_MERCHANT|MERCHANT|INDEX||
|5|IDX_EMPLOYEE_SALARY_EFFECTIVE_DATE|EFFECTIVE_DATE|INDEX||
|6|IDX_EMPLOYEE_SALARY_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_EMPLOYEE_SALARY_ID|ID|-|-|PRIMARY KEY|
|2|FK_EMPLOYEE_SALARY_EMPLOYEE|EMPLOYEE|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_EMPLOYEE_SALARY_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |EMPLOYEE_DATA| EMPLOYEE|- |
|2 |MERCHANT_DATA| MERCHANT|- |






 
### Table EMERGENCY_CONTACT_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|EMPLOYEE|Employee|BIGINT|1 |
|3|NAME|Name|VARCHAR(100)|王五 |
|4|RELATIONSHIP|Relationship|VARCHAR(100)|配偶 |
|5|MOBILE_PHONE|Mobile Phone|INTEGER|13900139111 |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_EMERGENCY_CONTACT_ID|ID|PRIMARY KEY||
|2|PK_EMERGENCY_CONTACT_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_EMERGENCY_CONTACT_EMPLOYEE|EMPLOYEE|INDEX||
|4|IDX_EMERGENCY_CONTACT_MERCHANT|MERCHANT|INDEX||
|5|IDX_EMERGENCY_CONTACT_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_EMERGENCY_CONTACT_ID|ID|-|-|PRIMARY KEY|
|2|FK_EMERGENCY_CONTACT_EMPLOYEE|EMPLOYEE|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_EMERGENCY_CONTACT_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |EMPLOYEE_DATA| EMPLOYEE|- |
|2 |MERCHANT_DATA| MERCHANT|- |






 
### Table ONBOARDING_PROCESS_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|EMPLOYEE|Employee|BIGINT|1 |
|3|STATUS|Status|BIGINT|1 |
|4|PLANNED_START_DATE|Planned Start Date|DATE|2024-05-01 |
|5|ACTUAL_START_DATE|Actual Start Date|DATE|2024-05-01 |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_ONBOARDING_PROCESS_ID|ID|PRIMARY KEY||
|2|PK_ONBOARDING_PROCESS_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_ONBOARDING_PROCESS_EMPLOYEE|EMPLOYEE|INDEX||
|4|IDX_ONBOARDING_PROCESS_STATUS|STATUS|INDEX||
|5|IDX_ONBOARDING_PROCESS_MERCHANT|MERCHANT|INDEX||
|6|IDX_ONBOARDING_PROCESS_PLANNED_START_DATE|PLANNED_START_DATE|INDEX||
|7|IDX_ONBOARDING_PROCESS_ACTUAL_START_DATE|ACTUAL_START_DATE|INDEX||
|8|IDX_ONBOARDING_PROCESS_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_ONBOARDING_PROCESS_ID|ID|-|-|PRIMARY KEY|
|2|FK_ONBOARDING_PROCESS_EMPLOYEE|EMPLOYEE|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_ONBOARDING_PROCESS_STATUS|STATUS|ONBOARDING_STATUS_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_ONBOARDING_PROCESS_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |EMPLOYEE_DATA| EMPLOYEE|- |
|2 |ONBOARDING_STATUS_DATA| STATUS|- |
|3 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |ONBOARDING_TASK_DATA| ONBOARDING_PROCESS|- |
|2 |ONBOARDING_DOCUMENT_DATA| ONBOARDING_PROCESS|- |






 
### Table ONBOARDING_TASK_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|ONBOARDING_PROCESS|Onboarding Process|BIGINT|1 |
|3|TASK_NAME|Task Name|VARCHAR(100)|办理入职手续 |
|4|ASSIGNED_TO|Assigned To|BIGINT|1 |
|5|DUE_DATE|Due Date|DATE|2024-05-01 |
|6|COMPLETED_DATE|Completed Date|DATE|2024-05-01 |
|7|MERCHANT|Merchant|BIGINT|1 |
|8|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|9|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_ONBOARDING_TASK_ID|ID|PRIMARY KEY||
|2|PK_ONBOARDING_TASK_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_ONBOARDING_TASK_ONBOARDING_PROCESS|ONBOARDING_PROCESS|INDEX||
|4|IDX_ONBOARDING_TASK_ASSIGNED_TO|ASSIGNED_TO|INDEX||
|5|IDX_ONBOARDING_TASK_MERCHANT|MERCHANT|INDEX||
|6|IDX_ONBOARDING_TASK_DUE_DATE|DUE_DATE|INDEX||
|7|IDX_ONBOARDING_TASK_COMPLETED_DATE|COMPLETED_DATE|INDEX||
|8|IDX_ONBOARDING_TASK_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_ONBOARDING_TASK_ID|ID|-|-|PRIMARY KEY|
|2|FK_ONBOARDING_TASK_ONBOARDING_PROCESS|ONBOARDING_PROCESS|ONBOARDING_PROCESS_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_ONBOARDING_TASK_ASSIGNED_TO|ASSIGNED_TO|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_ONBOARDING_TASK_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |ONBOARDING_PROCESS_DATA| ONBOARDING_PROCESS|- |
|2 |EMPLOYEE_DATA| ASSIGNED_TO|- |
|3 |MERCHANT_DATA| MERCHANT|- |






 
### Table ONBOARDING_DOCUMENT_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|ONBOARDING_PROCESS|Onboarding Process|BIGINT|1 |
|3|DOCUMENT_NAME|Document Name|VARCHAR(100)|劳动合同 |
|4|DOCUMENT_TYPE|Document Type|VARCHAR(100)|CONTRACT |
|5|FILE_NAME|File Name|VARCHAR(100)|contract_emp10001.pdf |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|UPLOAD_TIME|Upload Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_ONBOARDING_DOCUMENT_ID|ID|PRIMARY KEY||
|2|PK_ONBOARDING_DOCUMENT_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_ONBOARDING_DOCUMENT_ONBOARDING_PROCESS|ONBOARDING_PROCESS|INDEX||
|4|IDX_ONBOARDING_DOCUMENT_MERCHANT|MERCHANT|INDEX||
|5|IDX_ONBOARDING_DOCUMENT_UPLOAD_TIME|UPLOAD_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_ONBOARDING_DOCUMENT_ID|ID|-|-|PRIMARY KEY|
|2|FK_ONBOARDING_DOCUMENT_ONBOARDING_PROCESS|ONBOARDING_PROCESS|ONBOARDING_PROCESS_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_ONBOARDING_DOCUMENT_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |ONBOARDING_PROCESS_DATA| ONBOARDING_PROCESS|- |
|2 |MERCHANT_DATA| MERCHANT|- |






 
### Table TRAINING_COURSE_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|COURSE_NAME|Course Name|VARCHAR(100)|新员工入职培训 |
|3|COURSE_CODE|Course Code|VARCHAR(100)|TRN001 |
|4|TRAINING_TYPE|Training Type|BIGINT|1 |
|5|INSTRUCTOR|Instructor|BIGINT|1 |
|6|DURATION|Duration|INTEGER|8 |
|7|MERCHANT|Merchant|BIGINT|1 |
|8|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|9|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_TRAINING_COURSE_ID|ID|PRIMARY KEY||
|2|PK_TRAINING_COURSE_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_TRAINING_COURSE_TRAINING_TYPE|TRAINING_TYPE|INDEX||
|4|IDX_TRAINING_COURSE_INSTRUCTOR|INSTRUCTOR|INDEX||
|5|IDX_TRAINING_COURSE_MERCHANT|MERCHANT|INDEX||
|6|IDX_TRAINING_COURSE_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_TRAINING_COURSE_ID|ID|-|-|PRIMARY KEY|
|2|FK_TRAINING_COURSE_TRAINING_TYPE|TRAINING_TYPE|TRAINING_TYPE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_TRAINING_COURSE_INSTRUCTOR|INSTRUCTOR|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_TRAINING_COURSE_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |TRAINING_TYPE_DATA| TRAINING_TYPE|- |
|2 |EMPLOYEE_DATA| INSTRUCTOR|- |
|3 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |TRAINING_SCHEDULE_DATA| TRAINING_COURSE|- |






 
### Table TRAINING_SCHEDULE_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|TRAINING_COURSE|Training Course|BIGINT|1 |
|3|SCHEDULE_DATE|Schedule Date|DATE|2024-05-10 |
|4|START_TIME|Start Time|INTEGER|00 |
|5|END_TIME|End Time|INTEGER|00 |
|6|LOCATION|Location|VARCHAR(100)|培训室A |
|7|MERCHANT|Merchant|BIGINT|1 |
|8|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|9|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_TRAINING_SCHEDULE_ID|ID|PRIMARY KEY||
|2|PK_TRAINING_SCHEDULE_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_TRAINING_SCHEDULE_TRAINING_COURSE|TRAINING_COURSE|INDEX||
|4|IDX_TRAINING_SCHEDULE_MERCHANT|MERCHANT|INDEX||
|5|IDX_TRAINING_SCHEDULE_SCHEDULE_DATE|SCHEDULE_DATE|INDEX||
|6|IDX_TRAINING_SCHEDULE_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_TRAINING_SCHEDULE_ID|ID|-|-|PRIMARY KEY|
|2|FK_TRAINING_SCHEDULE_TRAINING_COURSE|TRAINING_COURSE|TRAINING_COURSE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_TRAINING_SCHEDULE_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |TRAINING_COURSE_DATA| TRAINING_COURSE|- |
|2 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |TRAINING_ENROLLMENT_DATA| TRAINING_SCHEDULE|- |






 
### Table TRAINING_ENROLLMENT_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|EMPLOYEE|Employee|BIGINT|1 |
|3|TRAINING_SCHEDULE|Training Schedule|BIGINT|1 |
|4|ENROLLMENT_STATUS|Enrollment Status|VARCHAR(100)|CONFIRMED |
|5|MERCHANT|Merchant|BIGINT|1 |
|6|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|7|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_TRAINING_ENROLLMENT_ID|ID|PRIMARY KEY||
|2|PK_TRAINING_ENROLLMENT_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_TRAINING_ENROLLMENT_EMPLOYEE|EMPLOYEE|INDEX||
|4|IDX_TRAINING_ENROLLMENT_TRAINING_SCHEDULE|TRAINING_SCHEDULE|INDEX||
|5|IDX_TRAINING_ENROLLMENT_MERCHANT|MERCHANT|INDEX||
|6|IDX_TRAINING_ENROLLMENT_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_TRAINING_ENROLLMENT_ID|ID|-|-|PRIMARY KEY|
|2|FK_TRAINING_ENROLLMENT_EMPLOYEE|EMPLOYEE|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_TRAINING_ENROLLMENT_TRAINING_SCHEDULE|TRAINING_SCHEDULE|TRAINING_SCHEDULE_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_TRAINING_ENROLLMENT_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |EMPLOYEE_DATA| EMPLOYEE|- |
|2 |TRAINING_SCHEDULE_DATA| TRAINING_SCHEDULE|- |
|3 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |TRAINING_EVALUATION_DATA| TRAINING_ENROLLMENT|- |






 
### Table TRAINING_EVALUATION_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|TRAINING_ENROLLMENT|Training Enrollment|BIGINT|1 |
|3|CONTENT_SCORE|Content Score|INTEGER|90 |
|4|INSTRUCTOR_SCORE|Instructor Score|INTEGER|95 |
|5|OVERALL_SCORE|Overall Score|INTEGER|92 |
|6|COMMENTS|Comments|VARCHAR(100)|培训内容很实用 |
|7|MERCHANT|Merchant|BIGINT|1 |
|8|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|9|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_TRAINING_EVALUATION_ID|ID|PRIMARY KEY||
|2|PK_TRAINING_EVALUATION_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_TRAINING_EVALUATION_TRAINING_ENROLLMENT|TRAINING_ENROLLMENT|INDEX||
|4|IDX_TRAINING_EVALUATION_MERCHANT|MERCHANT|INDEX||
|5|IDX_TRAINING_EVALUATION_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_TRAINING_EVALUATION_ID|ID|-|-|PRIMARY KEY|
|2|FK_TRAINING_EVALUATION_TRAINING_ENROLLMENT|TRAINING_ENROLLMENT|TRAINING_ENROLLMENT_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_TRAINING_EVALUATION_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |TRAINING_ENROLLMENT_DATA| TRAINING_ENROLLMENT|- |
|2 |MERCHANT_DATA| MERCHANT|- |






 
### Table ATTENDANCE_RECORD_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|EMPLOYEE|Employee|BIGINT|1 |
|3|RECORD_DATE|Record Date|DATE|2024-05-15 |
|4|CHECK_IN_TIME|Check In Time|INTEGER|55 |
|5|CHECK_OUT_TIME|Check Out Time|INTEGER|05 |
|6|WORK_HOURS|Work Hours|NUMERIC(19,7)|8.5 |
|7|MERCHANT|Merchant|BIGINT|1 |
|8|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|9|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_ATTENDANCE_RECORD_ID|ID|PRIMARY KEY||
|2|PK_ATTENDANCE_RECORD_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_ATTENDANCE_RECORD_EMPLOYEE|EMPLOYEE|INDEX||
|4|IDX_ATTENDANCE_RECORD_MERCHANT|MERCHANT|INDEX||
|5|IDX_ATTENDANCE_RECORD_RECORD_DATE|RECORD_DATE|INDEX||
|6|IDX_ATTENDANCE_RECORD_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_ATTENDANCE_RECORD_ID|ID|-|-|PRIMARY KEY|
|2|FK_ATTENDANCE_RECORD_EMPLOYEE|EMPLOYEE|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_ATTENDANCE_RECORD_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |EMPLOYEE_DATA| EMPLOYEE|- |
|2 |MERCHANT_DATA| MERCHANT|- |






 
### Table ATTENDANCE_EXCEPTION_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|EMPLOYEE|Employee|BIGINT|1 |
|3|EXCEPTION_DATE|Exception Date|DATE|2024-05-16 |
|4|EXCEPTION_TYPE|Exception Type|VARCHAR(100)|LATE |
|5|REASON|Reason|VARCHAR(100)|交通拥堵 |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_ATTENDANCE_EXCEPTION_ID|ID|PRIMARY KEY||
|2|PK_ATTENDANCE_EXCEPTION_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_ATTENDANCE_EXCEPTION_EMPLOYEE|EMPLOYEE|INDEX||
|4|IDX_ATTENDANCE_EXCEPTION_MERCHANT|MERCHANT|INDEX||
|5|IDX_ATTENDANCE_EXCEPTION_EXCEPTION_DATE|EXCEPTION_DATE|INDEX||
|6|IDX_ATTENDANCE_EXCEPTION_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_ATTENDANCE_EXCEPTION_ID|ID|-|-|PRIMARY KEY|
|2|FK_ATTENDANCE_EXCEPTION_EMPLOYEE|EMPLOYEE|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_ATTENDANCE_EXCEPTION_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |EMPLOYEE_DATA| EMPLOYEE|- |
|2 |MERCHANT_DATA| MERCHANT|- |






 
### Table LEAVE_APPLICATION_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|EMPLOYEE|Employee|BIGINT|1 |
|3|LEAVE_TYPE|Leave Type|BIGINT|1 |
|4|START_DATE|Start Date|DATE|2024-06-01 |
|5|END_DATE|End Date|DATE|2024-06-05 |
|6|DURATION|Duration|INTEGER|5 |
|7|REASON|Reason|VARCHAR(100)|年度休假 |
|8|STATUS|Status|VARCHAR(100)|APPROVED |
|9|MERCHANT|Merchant|BIGINT|1 |
|10|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|11|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_LEAVE_APPLICATION_ID|ID|PRIMARY KEY||
|2|PK_LEAVE_APPLICATION_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_LEAVE_APPLICATION_EMPLOYEE|EMPLOYEE|INDEX||
|4|IDX_LEAVE_APPLICATION_LEAVE_TYPE|LEAVE_TYPE|INDEX||
|5|IDX_LEAVE_APPLICATION_MERCHANT|MERCHANT|INDEX||
|6|IDX_LEAVE_APPLICATION_START_DATE|START_DATE|INDEX||
|7|IDX_LEAVE_APPLICATION_END_DATE|END_DATE|INDEX||
|8|IDX_LEAVE_APPLICATION_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_LEAVE_APPLICATION_ID|ID|-|-|PRIMARY KEY|
|2|FK_LEAVE_APPLICATION_EMPLOYEE|EMPLOYEE|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_LEAVE_APPLICATION_LEAVE_TYPE|LEAVE_TYPE|LEAVE_TYPE_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_LEAVE_APPLICATION_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |EMPLOYEE_DATA| EMPLOYEE|- |
|2 |LEAVE_TYPE_DATA| LEAVE_TYPE|- |
|3 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |LEAVE_APPROVAL_DATA| LEAVE_APPLICATION|- |






 
### Table LEAVE_BALANCE_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|EMPLOYEE|Employee|BIGINT|1 |
|3|LEAVE_TYPE|Leave Type|BIGINT|1 |
|4|TOTAL_DAYS|Total Days|INTEGER|15 |
|5|USED_DAYS|Used Days|INTEGER|5 |
|6|REMAINING_DAYS|Remaining Days|INTEGER|10 |
|7|MERCHANT|Merchant|BIGINT|1 |
|8|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|9|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_LEAVE_BALANCE_ID|ID|PRIMARY KEY||
|2|PK_LEAVE_BALANCE_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_LEAVE_BALANCE_EMPLOYEE|EMPLOYEE|INDEX||
|4|IDX_LEAVE_BALANCE_LEAVE_TYPE|LEAVE_TYPE|INDEX||
|5|IDX_LEAVE_BALANCE_MERCHANT|MERCHANT|INDEX||
|6|IDX_LEAVE_BALANCE_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_LEAVE_BALANCE_ID|ID|-|-|PRIMARY KEY|
|2|FK_LEAVE_BALANCE_EMPLOYEE|EMPLOYEE|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_LEAVE_BALANCE_LEAVE_TYPE|LEAVE_TYPE|LEAVE_TYPE_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_LEAVE_BALANCE_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |EMPLOYEE_DATA| EMPLOYEE|- |
|2 |LEAVE_TYPE_DATA| LEAVE_TYPE|- |
|3 |MERCHANT_DATA| MERCHANT|- |






 
### Table LEAVE_APPROVAL_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|LEAVE_APPLICATION|Leave Application|BIGINT|1 |
|3|APPROVER|Approver|BIGINT|1 |
|4|APPROVAL_STATUS|Approval Status|VARCHAR(100)|APPROVED |
|5|APPROVAL_TIME|Approval Time|VARCHAR(100)|30:00 |
|6|COMMENTS|Comments|VARCHAR(100)|同意休假 |
|7|MERCHANT|Merchant|BIGINT|1 |
|8|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|9|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_LEAVE_APPROVAL_ID|ID|PRIMARY KEY||
|2|PK_LEAVE_APPROVAL_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_LEAVE_APPROVAL_LEAVE_APPLICATION|LEAVE_APPLICATION|INDEX||
|4|IDX_LEAVE_APPROVAL_APPROVER|APPROVER|INDEX||
|5|IDX_LEAVE_APPROVAL_MERCHANT|MERCHANT|INDEX||
|6|IDX_LEAVE_APPROVAL_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_LEAVE_APPROVAL_ID|ID|-|-|PRIMARY KEY|
|2|FK_LEAVE_APPROVAL_LEAVE_APPLICATION|LEAVE_APPLICATION|LEAVE_APPLICATION_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_LEAVE_APPROVAL_APPROVER|APPROVER|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_LEAVE_APPROVAL_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |LEAVE_APPLICATION_DATA| LEAVE_APPLICATION|- |
|2 |EMPLOYEE_DATA| APPROVER|- |
|3 |MERCHANT_DATA| MERCHANT|- |






 
### Table PERFORMANCE_CYCLE_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|CYCLE_NAME|Cycle Name|VARCHAR(100)|2024年第一季度绩效考核 |
|3|CYCLE_CODE|Cycle Code|VARCHAR(100)|PC2024Q1 |
|4|START_DATE|Start Date|DATE|2024-01-01 |
|5|END_DATE|End Date|DATE|2024-03-31 |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_PERFORMANCE_CYCLE_ID|ID|PRIMARY KEY||
|2|PK_PERFORMANCE_CYCLE_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_PERFORMANCE_CYCLE_MERCHANT|MERCHANT|INDEX||
|4|IDX_PERFORMANCE_CYCLE_START_DATE|START_DATE|INDEX||
|5|IDX_PERFORMANCE_CYCLE_END_DATE|END_DATE|INDEX||
|6|IDX_PERFORMANCE_CYCLE_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_PERFORMANCE_CYCLE_ID|ID|-|-|PRIMARY KEY|
|2|FK_PERFORMANCE_CYCLE_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |PERFORMANCE_GOAL_DATA| PERFORMANCE_CYCLE|- |
|2 |PERFORMANCE_REVIEW_DATA| PERFORMANCE_CYCLE|- |






 
### Table PERFORMANCE_GOAL_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|EMPLOYEE|Employee|BIGINT|1 |
|3|PERFORMANCE_CYCLE|Performance Cycle|BIGINT|1 |
|4|GOAL_NAME|Goal Name|VARCHAR(100)|完成项目A开发 |
|5|WEIGHT|Weight|INTEGER|30 |
|6|TARGET_VALUE|Target Value|INTEGER|100 |
|7|MERCHANT|Merchant|BIGINT|1 |
|8|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|9|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_PERFORMANCE_GOAL_ID|ID|PRIMARY KEY||
|2|PK_PERFORMANCE_GOAL_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_PERFORMANCE_GOAL_EMPLOYEE|EMPLOYEE|INDEX||
|4|IDX_PERFORMANCE_GOAL_PERFORMANCE_CYCLE|PERFORMANCE_CYCLE|INDEX||
|5|IDX_PERFORMANCE_GOAL_MERCHANT|MERCHANT|INDEX||
|6|IDX_PERFORMANCE_GOAL_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_PERFORMANCE_GOAL_ID|ID|-|-|PRIMARY KEY|
|2|FK_PERFORMANCE_GOAL_EMPLOYEE|EMPLOYEE|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_PERFORMANCE_GOAL_PERFORMANCE_CYCLE|PERFORMANCE_CYCLE|PERFORMANCE_CYCLE_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_PERFORMANCE_GOAL_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |EMPLOYEE_DATA| EMPLOYEE|- |
|2 |PERFORMANCE_CYCLE_DATA| PERFORMANCE_CYCLE|- |
|3 |MERCHANT_DATA| MERCHANT|- |






 
### Table PERFORMANCE_REVIEW_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|EMPLOYEE|Employee|BIGINT|1 |
|3|PERFORMANCE_CYCLE|Performance Cycle|BIGINT|1 |
|4|REVIEWER|Reviewer|BIGINT|1 |
|5|OVERALL_SCORE|Overall Score|INTEGER|85 |
|6|PERFORMANCE_LEVEL|Performance Level|BIGINT|1 |
|7|MERCHANT|Merchant|BIGINT|1 |
|8|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|9|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_PERFORMANCE_REVIEW_ID|ID|PRIMARY KEY||
|2|PK_PERFORMANCE_REVIEW_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_PERFORMANCE_REVIEW_EMPLOYEE|EMPLOYEE|INDEX||
|4|IDX_PERFORMANCE_REVIEW_PERFORMANCE_CYCLE|PERFORMANCE_CYCLE|INDEX||
|5|IDX_PERFORMANCE_REVIEW_REVIEWER|REVIEWER|INDEX||
|6|IDX_PERFORMANCE_REVIEW_PERFORMANCE_LEVEL|PERFORMANCE_LEVEL|INDEX||
|7|IDX_PERFORMANCE_REVIEW_MERCHANT|MERCHANT|INDEX||
|8|IDX_PERFORMANCE_REVIEW_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_PERFORMANCE_REVIEW_ID|ID|-|-|PRIMARY KEY|
|2|FK_PERFORMANCE_REVIEW_EMPLOYEE|EMPLOYEE|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_PERFORMANCE_REVIEW_PERFORMANCE_CYCLE|PERFORMANCE_CYCLE|PERFORMANCE_CYCLE_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_PERFORMANCE_REVIEW_REVIEWER|REVIEWER|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|5|FK_PERFORMANCE_REVIEW_PERFORMANCE_LEVEL|PERFORMANCE_LEVEL|PERFORMANCE_LEVEL_DATA|ID|CASCADE ON DELETE and UPDATE|
|6|FK_PERFORMANCE_REVIEW_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |EMPLOYEE_DATA| EMPLOYEE|- |
|2 |PERFORMANCE_CYCLE_DATA| PERFORMANCE_CYCLE|- |
|3 |EMPLOYEE_DATA| REVIEWER|- |
|4 |PERFORMANCE_LEVEL_DATA| PERFORMANCE_LEVEL|- |
|5 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |PERFORMANCE_FEEDBACK_DATA| PERFORMANCE_REVIEW|- |






 
### Table PERFORMANCE_FEEDBACK_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|PERFORMANCE_REVIEW|Performance Review|BIGINT|1 |
|3|FEEDBACK_PROVIDER|Feedback Provider|BIGINT|1 |
|4|FEEDBACK_CONTENT|Feedback Content|VARCHAR(100)|工作认真负责，技术能力突出 |
|5|MERCHANT|Merchant|BIGINT|1 |
|6|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|7|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_PERFORMANCE_FEEDBACK_ID|ID|PRIMARY KEY||
|2|PK_PERFORMANCE_FEEDBACK_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_PERFORMANCE_FEEDBACK_PERFORMANCE_REVIEW|PERFORMANCE_REVIEW|INDEX||
|4|IDX_PERFORMANCE_FEEDBACK_FEEDBACK_PROVIDER|FEEDBACK_PROVIDER|INDEX||
|5|IDX_PERFORMANCE_FEEDBACK_MERCHANT|MERCHANT|INDEX||
|6|IDX_PERFORMANCE_FEEDBACK_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_PERFORMANCE_FEEDBACK_ID|ID|-|-|PRIMARY KEY|
|2|FK_PERFORMANCE_FEEDBACK_PERFORMANCE_REVIEW|PERFORMANCE_REVIEW|PERFORMANCE_REVIEW_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_PERFORMANCE_FEEDBACK_FEEDBACK_PROVIDER|FEEDBACK_PROVIDER|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_PERFORMANCE_FEEDBACK_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |PERFORMANCE_REVIEW_DATA| PERFORMANCE_REVIEW|- |
|2 |EMPLOYEE_DATA| FEEDBACK_PROVIDER|- |
|3 |MERCHANT_DATA| MERCHANT|- |






 
### Table SALARY_ADJUSTMENT_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|EMPLOYEE|Employee|BIGINT|1 |
|3|ADJUSTMENT_TYPE|Adjustment Type|VARCHAR(100)|PROMOTION |
|4|OLD_SALARY|Old Salary|INTEGER|25000 |
|5|NEW_SALARY|New Salary|INTEGER|30000 |
|6|EFFECTIVE_DATE|Effective Date|DATE|2024-04-01 |
|7|REASON|Reason|VARCHAR(100)|晋升调薪 |
|8|MERCHANT|Merchant|BIGINT|1 |
|9|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|10|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_SALARY_ADJUSTMENT_ID|ID|PRIMARY KEY||
|2|PK_SALARY_ADJUSTMENT_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_SALARY_ADJUSTMENT_EMPLOYEE|EMPLOYEE|INDEX||
|4|IDX_SALARY_ADJUSTMENT_MERCHANT|MERCHANT|INDEX||
|5|IDX_SALARY_ADJUSTMENT_EFFECTIVE_DATE|EFFECTIVE_DATE|INDEX||
|6|IDX_SALARY_ADJUSTMENT_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_SALARY_ADJUSTMENT_ID|ID|-|-|PRIMARY KEY|
|2|FK_SALARY_ADJUSTMENT_EMPLOYEE|EMPLOYEE|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_SALARY_ADJUSTMENT_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |EMPLOYEE_DATA| EMPLOYEE|- |
|2 |MERCHANT_DATA| MERCHANT|- |






 
### Table BONUS_CALCULATION_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|EMPLOYEE|Employee|BIGINT|1 |
|3|BONUS_PERIOD|Bonus Period|VARCHAR(100)|2024Q1 |
|4|BASE_AMOUNT|Base Amount|INTEGER|30000 |
|5|PERFORMANCE_MULTIPLIER|Performance Multiplier|NUMERIC(19,7)|1.2 |
|6|FINAL_AMOUNT|Final Amount|INTEGER|36000 |
|7|MERCHANT|Merchant|BIGINT|1 |
|8|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|9|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_BONUS_CALCULATION_ID|ID|PRIMARY KEY||
|2|PK_BONUS_CALCULATION_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_BONUS_CALCULATION_EMPLOYEE|EMPLOYEE|INDEX||
|4|IDX_BONUS_CALCULATION_MERCHANT|MERCHANT|INDEX||
|5|IDX_BONUS_CALCULATION_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_BONUS_CALCULATION_ID|ID|-|-|PRIMARY KEY|
|2|FK_BONUS_CALCULATION_EMPLOYEE|EMPLOYEE|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_BONUS_CALCULATION_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |EMPLOYEE_DATA| EMPLOYEE|- |
|2 |MERCHANT_DATA| MERCHANT|- |






 
### Table SOCIAL_INSURANCE_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|EMPLOYEE|Employee|BIGINT|1 |
|3|INSURANCE_TYPE|Insurance Type|VARCHAR(100)|PENSION |
|4|BASE_AMOUNT|Base Amount|INTEGER|30000 |
|5|EMPLOYEE_CONTRIBUTION|Employee Contribution|INTEGER|2400 |
|6|EMPLOYER_CONTRIBUTION|Employer Contribution|INTEGER|6000 |
|7|MERCHANT|Merchant|BIGINT|1 |
|8|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|9|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_SOCIAL_INSURANCE_ID|ID|PRIMARY KEY||
|2|PK_SOCIAL_INSURANCE_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_SOCIAL_INSURANCE_EMPLOYEE|EMPLOYEE|INDEX||
|4|IDX_SOCIAL_INSURANCE_MERCHANT|MERCHANT|INDEX||
|5|IDX_SOCIAL_INSURANCE_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_SOCIAL_INSURANCE_ID|ID|-|-|PRIMARY KEY|
|2|FK_SOCIAL_INSURANCE_EMPLOYEE|EMPLOYEE|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_SOCIAL_INSURANCE_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |EMPLOYEE_DATA| EMPLOYEE|- |
|2 |MERCHANT_DATA| MERCHANT|- |






 
### Table TERMINATION_APPLICATION_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|EMPLOYEE|Employee|BIGINT|1 |
|3|TERMINATION_TYPE|Termination Type|BIGINT|1 |
|4|PROPOSED_LAST_DATE|Proposed Last Date|DATE|2024-06-30 |
|5|REASON|Reason|VARCHAR(100)|个人发展 |
|6|STATUS|Status|VARCHAR(100)|PENDING_APPROVAL |
|7|MERCHANT|Merchant|BIGINT|1 |
|8|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|9|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_TERMINATION_APPLICATION_ID|ID|PRIMARY KEY||
|2|PK_TERMINATION_APPLICATION_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_TERMINATION_APPLICATION_EMPLOYEE|EMPLOYEE|INDEX||
|4|IDX_TERMINATION_APPLICATION_TERMINATION_TYPE|TERMINATION_TYPE|INDEX||
|5|IDX_TERMINATION_APPLICATION_MERCHANT|MERCHANT|INDEX||
|6|IDX_TERMINATION_APPLICATION_PROPOSED_LAST_DATE|PROPOSED_LAST_DATE|INDEX||
|7|IDX_TERMINATION_APPLICATION_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_TERMINATION_APPLICATION_ID|ID|-|-|PRIMARY KEY|
|2|FK_TERMINATION_APPLICATION_EMPLOYEE|EMPLOYEE|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_TERMINATION_APPLICATION_TERMINATION_TYPE|TERMINATION_TYPE|TERMINATION_TYPE_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_TERMINATION_APPLICATION_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |EMPLOYEE_DATA| EMPLOYEE|- |
|2 |TERMINATION_TYPE_DATA| TERMINATION_TYPE|- |
|3 |MERCHANT_DATA| MERCHANT|- |






 
### Table EXIT_INTERVIEW_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|EMPLOYEE|Employee|BIGINT|1 |
|3|INTERVIEWER|Interviewer|BIGINT|1 |
|4|INTERVIEW_DATE|Interview Date|DATE|2024-06-25 |
|5|OVERALL_SATISFACTION|Overall Satisfaction|INTEGER|4 |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_EXIT_INTERVIEW_ID|ID|PRIMARY KEY||
|2|PK_EXIT_INTERVIEW_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_EXIT_INTERVIEW_EMPLOYEE|EMPLOYEE|INDEX||
|4|IDX_EXIT_INTERVIEW_INTERVIEWER|INTERVIEWER|INDEX||
|5|IDX_EXIT_INTERVIEW_MERCHANT|MERCHANT|INDEX||
|6|IDX_EXIT_INTERVIEW_INTERVIEW_DATE|INTERVIEW_DATE|INDEX||
|7|IDX_EXIT_INTERVIEW_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_EXIT_INTERVIEW_ID|ID|-|-|PRIMARY KEY|
|2|FK_EXIT_INTERVIEW_EMPLOYEE|EMPLOYEE|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_EXIT_INTERVIEW_INTERVIEWER|INTERVIEWER|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_EXIT_INTERVIEW_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |EMPLOYEE_DATA| EMPLOYEE|- |
|2 |EMPLOYEE_DATA| INTERVIEWER|- |
|3 |MERCHANT_DATA| MERCHANT|- |






 
### Table RETIREMENT_APPLICATION_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|EMPLOYEE|Employee|BIGINT|1 |
|3|RETIREMENT_DATE|Retirement Date|DATE|2024-12-31 |
|4|PENSION_AMOUNT|Pension Amount|INTEGER|8000 |
|5|STATUS|Status|VARCHAR(100)|APPROVED |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_RETIREMENT_APPLICATION_ID|ID|PRIMARY KEY||
|2|PK_RETIREMENT_APPLICATION_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_RETIREMENT_APPLICATION_EMPLOYEE|EMPLOYEE|INDEX||
|4|IDX_RETIREMENT_APPLICATION_MERCHANT|MERCHANT|INDEX||
|5|IDX_RETIREMENT_APPLICATION_RETIREMENT_DATE|RETIREMENT_DATE|INDEX||
|6|IDX_RETIREMENT_APPLICATION_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_RETIREMENT_APPLICATION_ID|ID|-|-|PRIMARY KEY|
|2|FK_RETIREMENT_APPLICATION_EMPLOYEE|EMPLOYEE|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_RETIREMENT_APPLICATION_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |EMPLOYEE_DATA| EMPLOYEE|- |
|2 |MERCHANT_DATA| MERCHANT|- |






 
### Table SYSTEM_USER_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|USERNAME|Username|VARCHAR(100)|lisi |
|3|EMPLOYEE|Employee|BIGINT|1 |
|4|EMAIL|Email|VARCHAR(100)|lisi@company.com |
|5|STATUS|Status|VARCHAR(100)|ACTIVE |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|LAST_LOGIN|Last Login|TIMESTAMP|updateTime() |
|9|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_SYSTEM_USER_ID|ID|PRIMARY KEY||
|2|PK_SYSTEM_USER_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_SYSTEM_USER_EMPLOYEE|EMPLOYEE|INDEX||
|4|IDX_SYSTEM_USER_MERCHANT|MERCHANT|INDEX||
|5|IDX_SYSTEM_USER_CREATE_TIME|CREATE_TIME|INDEX||
|6|IDX_SYSTEM_USER_LAST_LOGIN|LAST_LOGIN|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_SYSTEM_USER_ID|ID|-|-|PRIMARY KEY|
|2|FK_SYSTEM_USER_EMPLOYEE|EMPLOYEE|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_SYSTEM_USER_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |EMPLOYEE_DATA| EMPLOYEE|- |
|2 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |USER_ROLE_DATA| \"SYSTEM_USER\"|- |
|2 |AUDIT_LOG_DATA| \"SYSTEM_USER\"|- |






 
### Table USER_ROLE_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|\"SYSTEM_USER\"|System User|BIGINT|1 |
|3|ROLE_NAME|Role Name|VARCHAR(100)|HR_ADMIN |
|4|MERCHANT|Merchant|BIGINT|1 |
|5|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|6|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_USER_ROLE_ID|ID|PRIMARY KEY||
|2|PK_USER_ROLE_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_USER_ROLE_\"SYSTEM_USER\"|\"SYSTEM_USER\"|INDEX||
|4|IDX_USER_ROLE_MERCHANT|MERCHANT|INDEX||
|5|IDX_USER_ROLE_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_USER_ROLE_ID|ID|-|-|PRIMARY KEY|
|2|FK_USER_ROLE_\"SYSTEM_USER\"|\"SYSTEM_USER\"|SYSTEM_USER_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_USER_ROLE_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |SYSTEM_USER_DATA| \"SYSTEM_USER\"|- |
|2 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |ACCESS_PERMISSION_DATA| USER_ROLE|- |






 
### Table ACCESS_PERMISSION_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|USER_ROLE|User Role|BIGINT|1 |
|3|PERMISSION_CODE|Permission Code|VARCHAR(100)|EMPLOYEE_READ |
|4|MERCHANT|Merchant|BIGINT|1 |
|5|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|6|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_ACCESS_PERMISSION_ID|ID|PRIMARY KEY||
|2|PK_ACCESS_PERMISSION_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_ACCESS_PERMISSION_USER_ROLE|USER_ROLE|INDEX||
|4|IDX_ACCESS_PERMISSION_MERCHANT|MERCHANT|INDEX||
|5|IDX_ACCESS_PERMISSION_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_ACCESS_PERMISSION_ID|ID|-|-|PRIMARY KEY|
|2|FK_ACCESS_PERMISSION_USER_ROLE|USER_ROLE|USER_ROLE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_ACCESS_PERMISSION_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |USER_ROLE_DATA| USER_ROLE|- |
|2 |MERCHANT_DATA| MERCHANT|- |






 
### Table AUDIT_LOG_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|\"SYSTEM_USER\"|System User|BIGINT|1 |
|3|ACTION_TYPE|Action Type|VARCHAR(100)|CREATE |
|4|ACTION_TARGET|Action Target|VARCHAR(100)|EMPLOYEE |
|5|TARGET_ID|Target Id|VARCHAR(100)|EMP10001 |
|6|IP_ADDRESS|Ip Address|VARCHAR(100)|remoteIp() |
|7|ACTION_TIME|Action Time|TIMESTAMP|createTime() |
|8|MERCHANT|Merchant|BIGINT|1 |
|9|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_AUDIT_LOG_ID|ID|PRIMARY KEY||
|2|PK_AUDIT_LOG_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_AUDIT_LOG_\"SYSTEM_USER\"|\"SYSTEM_USER\"|INDEX||
|4|IDX_AUDIT_LOG_MERCHANT|MERCHANT|INDEX||
|5|IDX_AUDIT_LOG_ACTION_TIME|ACTION_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_AUDIT_LOG_ID|ID|-|-|PRIMARY KEY|
|2|FK_AUDIT_LOG_\"SYSTEM_USER\"|\"SYSTEM_USER\"|SYSTEM_USER_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_AUDIT_LOG_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |SYSTEM_USER_DATA| \"SYSTEM_USER\"|- |
|2 |MERCHANT_DATA| MERCHANT|- |






 
### Table DOCUMENT_TEMPLATE_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|TEMPLATE_NAME|Template Name|VARCHAR(100)|劳动合同模板 |
|3|TEMPLATE_TYPE|Template Type|VARCHAR(100)|CONTRACT |
|4|TEMPLATE_VERSION|Template Version|VARCHAR(100)|V2.0 |
|5|FILE_NAME|File Name|VARCHAR(100)|contract_template_v2.docx |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_DOCUMENT_TEMPLATE_ID|ID|PRIMARY KEY||
|2|PK_DOCUMENT_TEMPLATE_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_DOCUMENT_TEMPLATE_MERCHANT|MERCHANT|INDEX||
|4|IDX_DOCUMENT_TEMPLATE_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_DOCUMENT_TEMPLATE_ID|ID|-|-|PRIMARY KEY|
|2|FK_DOCUMENT_TEMPLATE_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |






 
### Table EMPLOYEE_DOCUMENT_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|EMPLOYEE|Employee|BIGINT|1 |
|3|DOCUMENT_TYPE|Document Type|VARCHAR(100)|ID_CARD |
|4|FILE_NAME|File Name|VARCHAR(100)|id_card_emp10001.jpg |
|5|EXPIRY_DATE|Expiry Date|DATE|2030-12-31 |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|UPLOAD_TIME|Upload Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_EMPLOYEE_DOCUMENT_ID|ID|PRIMARY KEY||
|2|PK_EMPLOYEE_DOCUMENT_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_EMPLOYEE_DOCUMENT_EMPLOYEE|EMPLOYEE|INDEX||
|4|IDX_EMPLOYEE_DOCUMENT_MERCHANT|MERCHANT|INDEX||
|5|IDX_EMPLOYEE_DOCUMENT_EXPIRY_DATE|EXPIRY_DATE|INDEX||
|6|IDX_EMPLOYEE_DOCUMENT_UPLOAD_TIME|UPLOAD_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_EMPLOYEE_DOCUMENT_ID|ID|-|-|PRIMARY KEY|
|2|FK_EMPLOYEE_DOCUMENT_EMPLOYEE|EMPLOYEE|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_EMPLOYEE_DOCUMENT_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |EMPLOYEE_DATA| EMPLOYEE|- |
|2 |MERCHANT_DATA| MERCHANT|- |






 
### Table HR_REPORT_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|REPORT_NAME|Report Name|VARCHAR(100)|员工离职率分析 |
|3|REPORT_PERIOD|Report Period|VARCHAR(100)|2024Q1 |
|4|GENERATION_DATE|Generation Date|DATE|2024-04-01 |
|5|FILE_NAME|File Name|VARCHAR(100)|turnover_report_2024q1.pdf |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_HR_REPORT_ID|ID|PRIMARY KEY||
|2|PK_HR_REPORT_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_HR_REPORT_MERCHANT|MERCHANT|INDEX||
|4|IDX_HR_REPORT_GENERATION_DATE|GENERATION_DATE|INDEX||
|5|IDX_HR_REPORT_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_HR_REPORT_ID|ID|-|-|PRIMARY KEY|
|2|FK_HR_REPORT_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |REPORT_PARAMETER_DATA| HR_REPORT|- |






 
### Table REPORT_PARAMETER_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|HR_REPORT|Hr Report|BIGINT|1 |
|3|PARAMETER_NAME|Parameter Name|VARCHAR(100)|department |
|4|PARAMETER_VALUE|Parameter Value|VARCHAR(100)|ALL |
|5|MERCHANT|Merchant|BIGINT|1 |
|6|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|7|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_REPORT_PARAMETER_ID|ID|PRIMARY KEY||
|2|PK_REPORT_PARAMETER_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_REPORT_PARAMETER_HR_REPORT|HR_REPORT|INDEX||
|4|IDX_REPORT_PARAMETER_MERCHANT|MERCHANT|INDEX||
|5|IDX_REPORT_PARAMETER_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_REPORT_PARAMETER_ID|ID|-|-|PRIMARY KEY|
|2|FK_REPORT_PARAMETER_HR_REPORT|HR_REPORT|HR_REPORT_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_REPORT_PARAMETER_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |HR_REPORT_DATA| HR_REPORT|- |
|2 |MERCHANT_DATA| MERCHANT|- |






 
### Table SYSTEM_NOTIFICATION_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NOTIFICATION_TITLE|Notification Title|VARCHAR(100)|绩效考核通知 |
|3|NOTIFICATION_CONTENT|Notification Content|VARCHAR(100)|2024年第一季度绩效考核即将开始 |
|4|NOTIFICATION_TYPE|Notification Type|VARCHAR(100)|REMINDER |
|5|TARGET_AUDIENCE|Target Audience|VARCHAR(100)|ALL_EMPLOYEES |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|SEND_TIME|Send Time|TIMESTAMP|updateTime() |
|9|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_SYSTEM_NOTIFICATION_ID|ID|PRIMARY KEY||
|2|PK_SYSTEM_NOTIFICATION_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_SYSTEM_NOTIFICATION_MERCHANT|MERCHANT|INDEX||
|4|IDX_SYSTEM_NOTIFICATION_CREATE_TIME|CREATE_TIME|INDEX||
|5|IDX_SYSTEM_NOTIFICATION_SEND_TIME|SEND_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_SYSTEM_NOTIFICATION_ID|ID|-|-|PRIMARY KEY|
|2|FK_SYSTEM_NOTIFICATION_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |NOTIFICATION_RECIPIENT_DATA| SYSTEM_NOTIFICATION|- |






 
### Table NOTIFICATION_RECIPIENT_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|SYSTEM_NOTIFICATION|System Notification|BIGINT|1 |
|3|EMPLOYEE|Employee|BIGINT|1 |
|4|READ_STATUS|Read Status|VARCHAR(100)|UNREAD |
|5|MERCHANT|Merchant|BIGINT|1 |
|6|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|7|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_NOTIFICATION_RECIPIENT_ID|ID|PRIMARY KEY||
|2|PK_NOTIFICATION_RECIPIENT_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_NOTIFICATION_RECIPIENT_SYSTEM_NOTIFICATION|SYSTEM_NOTIFICATION|INDEX||
|4|IDX_NOTIFICATION_RECIPIENT_EMPLOYEE|EMPLOYEE|INDEX||
|5|IDX_NOTIFICATION_RECIPIENT_MERCHANT|MERCHANT|INDEX||
|6|IDX_NOTIFICATION_RECIPIENT_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_NOTIFICATION_RECIPIENT_ID|ID|-|-|PRIMARY KEY|
|2|FK_NOTIFICATION_RECIPIENT_SYSTEM_NOTIFICATION|SYSTEM_NOTIFICATION|SYSTEM_NOTIFICATION_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_NOTIFICATION_RECIPIENT_EMPLOYEE|EMPLOYEE|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_NOTIFICATION_RECIPIENT_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |SYSTEM_NOTIFICATION_DATA| SYSTEM_NOTIFICATION|- |
|2 |EMPLOYEE_DATA| EMPLOYEE|- |
|3 |MERCHANT_DATA| MERCHANT|- |






 
### Table WORKFLOW_DEFINITION_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|WORKFLOW_NAME|Workflow Name|VARCHAR(100)|请假审批流程 |
|3|WORKFLOW_VERSION|Workflow Version|NUMERIC(19,7)|1.0 |
|4|IS_ACTIVE|Is Active|BOOLEAN|true |
|5|MERCHANT|Merchant|BIGINT|1 |
|6|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|7|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_WORKFLOW_DEFINITION_ID|ID|PRIMARY KEY||
|2|PK_WORKFLOW_DEFINITION_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_WORKFLOW_DEFINITION_MERCHANT|MERCHANT|INDEX||
|4|IDX_WORKFLOW_DEFINITION_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_WORKFLOW_DEFINITION_ID|ID|-|-|PRIMARY KEY|
|2|FK_WORKFLOW_DEFINITION_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |WORKFLOW_STEP_DATA| WORKFLOW_DEFINITION|- |
|2 |WORKFLOW_INSTANCE_DATA| WORKFLOW_DEFINITION|- |






 
### Table WORKFLOW_STEP_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|WORKFLOW_DEFINITION|Workflow Definition|BIGINT|1 |
|3|STEP_NAME|Step Name|VARCHAR(100)|部门经理审批 |
|4|STEP_ORDER|Step Order|INTEGER|1 |
|5|APPROVER_ROLE|Approver Role|VARCHAR(100)|DEPARTMENT_MANAGER |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_WORKFLOW_STEP_ID|ID|PRIMARY KEY||
|2|PK_WORKFLOW_STEP_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_WORKFLOW_STEP_WORKFLOW_DEFINITION|WORKFLOW_DEFINITION|INDEX||
|4|IDX_WORKFLOW_STEP_MERCHANT|MERCHANT|INDEX||
|5|IDX_WORKFLOW_STEP_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_WORKFLOW_STEP_ID|ID|-|-|PRIMARY KEY|
|2|FK_WORKFLOW_STEP_WORKFLOW_DEFINITION|WORKFLOW_DEFINITION|WORKFLOW_DEFINITION_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_WORKFLOW_STEP_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |WORKFLOW_DEFINITION_DATA| WORKFLOW_DEFINITION|- |
|2 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |WORKFLOW_INSTANCE_DATA| CURRENT_STEP|- |






 
### Table WORKFLOW_INSTANCE_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|WORKFLOW_DEFINITION|Workflow Definition|BIGINT|1 |
|3|CURRENT_STEP|Current Step|BIGINT|1 |
|4|STATUS|Status|VARCHAR(100)|IN_PROGRESS |
|5|MERCHANT|Merchant|BIGINT|1 |
|6|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|7|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_WORKFLOW_INSTANCE_ID|ID|PRIMARY KEY||
|2|PK_WORKFLOW_INSTANCE_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_WORKFLOW_INSTANCE_WORKFLOW_DEFINITION|WORKFLOW_DEFINITION|INDEX||
|4|IDX_WORKFLOW_INSTANCE_CURRENT_STEP|CURRENT_STEP|INDEX||
|5|IDX_WORKFLOW_INSTANCE_MERCHANT|MERCHANT|INDEX||
|6|IDX_WORKFLOW_INSTANCE_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_WORKFLOW_INSTANCE_ID|ID|-|-|PRIMARY KEY|
|2|FK_WORKFLOW_INSTANCE_WORKFLOW_DEFINITION|WORKFLOW_DEFINITION|WORKFLOW_DEFINITION_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_WORKFLOW_INSTANCE_CURRENT_STEP|CURRENT_STEP|WORKFLOW_STEP_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_WORKFLOW_INSTANCE_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |WORKFLOW_DEFINITION_DATA| WORKFLOW_DEFINITION|- |
|2 |WORKFLOW_STEP_DATA| CURRENT_STEP|- |
|3 |MERCHANT_DATA| MERCHANT|- |






 
### Table COMPANY_POLICY_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|POLICY_NAME|Policy Name|VARCHAR(100)|考勤管理制度 |
|3|POLICY_VERSION|Policy Version|VARCHAR(100)|V3.0 |
|4|EFFECTIVE_DATE|Effective Date|DATE|2024-01-01 |
|5|FILE_NAME|File Name|VARCHAR(100)|attendance_policy_v3.pdf |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_COMPANY_POLICY_ID|ID|PRIMARY KEY||
|2|PK_COMPANY_POLICY_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_COMPANY_POLICY_MERCHANT|MERCHANT|INDEX||
|4|IDX_COMPANY_POLICY_EFFECTIVE_DATE|EFFECTIVE_DATE|INDEX||
|5|IDX_COMPANY_POLICY_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_COMPANY_POLICY_ID|ID|-|-|PRIMARY KEY|
|2|FK_COMPANY_POLICY_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |






 
### Table EQUIPMENT_ALLOCATION_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|EMPLOYEE|Employee|BIGINT|1 |
|3|EQUIPMENT_TYPE|Equipment Type|VARCHAR(100)|LAPTOP |
|4|EQUIPMENT_MODEL|Equipment Model|VARCHAR(100)|ThinkPad X1 |
|5|SERIAL_NUMBER|Serial Number|VARCHAR(100)|SN123456789 |
|6|ALLOCATION_DATE|Allocation Date|DATE|2024-01-01 |
|7|MERCHANT|Merchant|BIGINT|1 |
|8|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|9|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_EQUIPMENT_ALLOCATION_ID|ID|PRIMARY KEY||
|2|PK_EQUIPMENT_ALLOCATION_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_EQUIPMENT_ALLOCATION_EMPLOYEE|EMPLOYEE|INDEX||
|4|IDX_EQUIPMENT_ALLOCATION_MERCHANT|MERCHANT|INDEX||
|5|IDX_EQUIPMENT_ALLOCATION_ALLOCATION_DATE|ALLOCATION_DATE|INDEX||
|6|IDX_EQUIPMENT_ALLOCATION_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_EQUIPMENT_ALLOCATION_ID|ID|-|-|PRIMARY KEY|
|2|FK_EQUIPMENT_ALLOCATION_EMPLOYEE|EMPLOYEE|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_EQUIPMENT_ALLOCATION_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |EMPLOYEE_DATA| EMPLOYEE|- |
|2 |MERCHANT_DATA| MERCHANT|- |






 
### Table AWARD_RECOGNITION_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|EMPLOYEE|Employee|BIGINT|1 |
|3|AWARD_TYPE|Award Type|VARCHAR(100)|PERFORMANCE |
|4|AWARD_NAME|Award Name|VARCHAR(100)|季度优秀员工 |
|5|AWARD_DATE|Award Date|DATE|2024-04-01 |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_AWARD_RECOGNITION_ID|ID|PRIMARY KEY||
|2|PK_AWARD_RECOGNITION_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_AWARD_RECOGNITION_EMPLOYEE|EMPLOYEE|INDEX||
|4|IDX_AWARD_RECOGNITION_MERCHANT|MERCHANT|INDEX||
|5|IDX_AWARD_RECOGNITION_AWARD_DATE|AWARD_DATE|INDEX||
|6|IDX_AWARD_RECOGNITION_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_AWARD_RECOGNITION_ID|ID|-|-|PRIMARY KEY|
|2|FK_AWARD_RECOGNITION_EMPLOYEE|EMPLOYEE|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_AWARD_RECOGNITION_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |EMPLOYEE_DATA| EMPLOYEE|- |
|2 |MERCHANT_DATA| MERCHANT|- |






 
### Table SKILL_ASSESSMENT_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|EMPLOYEE|Employee|BIGINT|1 |
|3|SKILL_NAME|Skill Name|VARCHAR(100)|Java编程 |
|4|SKILL_LEVEL|Skill Level|VARCHAR(100)|ADVANCED |
|5|ASSESSMENT_DATE|Assessment Date|DATE|2024-03-15 |
|6|ASSESSOR|Assessor|BIGINT|1 |
|7|MERCHANT|Merchant|BIGINT|1 |
|8|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|9|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_SKILL_ASSESSMENT_ID|ID|PRIMARY KEY||
|2|PK_SKILL_ASSESSMENT_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_SKILL_ASSESSMENT_EMPLOYEE|EMPLOYEE|INDEX||
|4|IDX_SKILL_ASSESSMENT_ASSESSOR|ASSESSOR|INDEX||
|5|IDX_SKILL_ASSESSMENT_MERCHANT|MERCHANT|INDEX||
|6|IDX_SKILL_ASSESSMENT_ASSESSMENT_DATE|ASSESSMENT_DATE|INDEX||
|7|IDX_SKILL_ASSESSMENT_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_SKILL_ASSESSMENT_ID|ID|-|-|PRIMARY KEY|
|2|FK_SKILL_ASSESSMENT_EMPLOYEE|EMPLOYEE|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_SKILL_ASSESSMENT_ASSESSOR|ASSESSOR|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_SKILL_ASSESSMENT_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |EMPLOYEE_DATA| EMPLOYEE|- |
|2 |EMPLOYEE_DATA| ASSESSOR|- |
|3 |MERCHANT_DATA| MERCHANT|- |






 
### Table PROJECT_ASSIGNMENT_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|EMPLOYEE|Employee|BIGINT|1 |
|3|PROJECT_NAME|Project Name|VARCHAR(100)|电商平台重构 |
|4|ROLE|Role|VARCHAR(100)|技术负责人 |
|5|START_DATE|Start Date|DATE|2024-02-01 |
|6|END_DATE|End Date|DATE|2024-08-31 |
|7|MERCHANT|Merchant|BIGINT|1 |
|8|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|9|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_PROJECT_ASSIGNMENT_ID|ID|PRIMARY KEY||
|2|PK_PROJECT_ASSIGNMENT_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_PROJECT_ASSIGNMENT_EMPLOYEE|EMPLOYEE|INDEX||
|4|IDX_PROJECT_ASSIGNMENT_MERCHANT|MERCHANT|INDEX||
|5|IDX_PROJECT_ASSIGNMENT_START_DATE|START_DATE|INDEX||
|6|IDX_PROJECT_ASSIGNMENT_END_DATE|END_DATE|INDEX||
|7|IDX_PROJECT_ASSIGNMENT_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_PROJECT_ASSIGNMENT_ID|ID|-|-|PRIMARY KEY|
|2|FK_PROJECT_ASSIGNMENT_EMPLOYEE|EMPLOYEE|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_PROJECT_ASSIGNMENT_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |EMPLOYEE_DATA| EMPLOYEE|- |
|2 |MERCHANT_DATA| MERCHANT|- |






 
### Table WORK_EXPERIENCE_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|EMPLOYEE|Employee|BIGINT|1 |
|3|COMPANY_NAME|Company Name|VARCHAR(100)|前公司 |
|4|\"POSITION\"|Position|VARCHAR(100)|软件工程师 |
|5|START_DATE|Start Date|DATE|2020-01-01 |
|6|END_DATE|End Date|DATE|2023-12-31 |
|7|\"DESCRIPTION\"|Description|VARCHAR(100)|负责系统开发 |
|8|MERCHANT|Merchant|BIGINT|1 |
|9|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|10|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_WORK_EXPERIENCE_ID|ID|PRIMARY KEY||
|2|PK_WORK_EXPERIENCE_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_WORK_EXPERIENCE_EMPLOYEE|EMPLOYEE|INDEX||
|4|IDX_WORK_EXPERIENCE_MERCHANT|MERCHANT|INDEX||
|5|IDX_WORK_EXPERIENCE_START_DATE|START_DATE|INDEX||
|6|IDX_WORK_EXPERIENCE_END_DATE|END_DATE|INDEX||
|7|IDX_WORK_EXPERIENCE_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_WORK_EXPERIENCE_ID|ID|-|-|PRIMARY KEY|
|2|FK_WORK_EXPERIENCE_EMPLOYEE|EMPLOYEE|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_WORK_EXPERIENCE_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |EMPLOYEE_DATA| EMPLOYEE|- |
|2 |MERCHANT_DATA| MERCHANT|- |






 
### Table EDUCATION_HISTORY_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|EMPLOYEE|Employee|BIGINT|1 |
|3|SCHOOL_NAME|School Name|VARCHAR(100)|清华大学 |
|4|MAJOR|Major|VARCHAR(100)|计算机科学 |
|5|DEGREE|Degree|BIGINT|1 |
|6|GRADUATION_DATE|Graduation Date|DATE|2019-06-30 |
|7|MERCHANT|Merchant|BIGINT|1 |
|8|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|9|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_EDUCATION_HISTORY_ID|ID|PRIMARY KEY||
|2|PK_EDUCATION_HISTORY_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_EDUCATION_HISTORY_EMPLOYEE|EMPLOYEE|INDEX||
|4|IDX_EDUCATION_HISTORY_DEGREE|DEGREE|INDEX||
|5|IDX_EDUCATION_HISTORY_MERCHANT|MERCHANT|INDEX||
|6|IDX_EDUCATION_HISTORY_GRADUATION_DATE|GRADUATION_DATE|INDEX||
|7|IDX_EDUCATION_HISTORY_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_EDUCATION_HISTORY_ID|ID|-|-|PRIMARY KEY|
|2|FK_EDUCATION_HISTORY_EMPLOYEE|EMPLOYEE|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_EDUCATION_HISTORY_DEGREE|DEGREE|EDUCATION_LEVEL_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_EDUCATION_HISTORY_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |EMPLOYEE_DATA| EMPLOYEE|- |
|2 |EDUCATION_LEVEL_DATA| DEGREE|- |
|3 |MERCHANT_DATA| MERCHANT|- |






 
### Table CERTIFICATION_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|EMPLOYEE|Employee|BIGINT|1 |
|3|CERTIFICATE_NAME|Certificate Name|VARCHAR(100)|PMP认证 |
|4|ISSUING_AUTHORITY|Issuing Authority|VARCHAR(100)|PMI |
|5|ISSUE_DATE|Issue Date|DATE|2023-03-15 |
|6|EXPIRY_DATE|Expiry Date|DATE|2026-03-15 |
|7|MERCHANT|Merchant|BIGINT|1 |
|8|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|9|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_CERTIFICATION_ID|ID|PRIMARY KEY||
|2|PK_CERTIFICATION_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_CERTIFICATION_EMPLOYEE|EMPLOYEE|INDEX||
|4|IDX_CERTIFICATION_MERCHANT|MERCHANT|INDEX||
|5|IDX_CERTIFICATION_ISSUE_DATE|ISSUE_DATE|INDEX||
|6|IDX_CERTIFICATION_EXPIRY_DATE|EXPIRY_DATE|INDEX||
|7|IDX_CERTIFICATION_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_CERTIFICATION_ID|ID|-|-|PRIMARY KEY|
|2|FK_CERTIFICATION_EMPLOYEE|EMPLOYEE|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_CERTIFICATION_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |EMPLOYEE_DATA| EMPLOYEE|- |
|2 |MERCHANT_DATA| MERCHANT|- |






 
### Table EMPLOYEE_SURVEY_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|SURVEY_NAME|Survey Name|VARCHAR(100)|员工满意度调研 |
|3|SURVEY_DATE|Survey Date|DATE|2024-03-01 |
|4|PARTICIPANT|Participant|BIGINT|1 |
|5|OVERALL_SCORE|Overall Score|NUMERIC(19,7)|4.2 |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_EMPLOYEE_SURVEY_ID|ID|PRIMARY KEY||
|2|PK_EMPLOYEE_SURVEY_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_EMPLOYEE_SURVEY_PARTICIPANT|PARTICIPANT|INDEX||
|4|IDX_EMPLOYEE_SURVEY_MERCHANT|MERCHANT|INDEX||
|5|IDX_EMPLOYEE_SURVEY_SURVEY_DATE|SURVEY_DATE|INDEX||
|6|IDX_EMPLOYEE_SURVEY_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_EMPLOYEE_SURVEY_ID|ID|-|-|PRIMARY KEY|
|2|FK_EMPLOYEE_SURVEY_PARTICIPANT|PARTICIPANT|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_EMPLOYEE_SURVEY_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |EMPLOYEE_DATA| PARTICIPANT|- |
|2 |MERCHANT_DATA| MERCHANT|- |






 
### Table BUDGET_ALLOCATION_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|DEPARTMENT|Department|BIGINT|1 |
|3|BUDGET_YEAR|Budget Year|INTEGER|2024 |
|4|BUDGET_AMOUNT|Budget Amount|INTEGER|500000 |
|5|BUDGET_TYPE|Budget Type|VARCHAR(100)|OPERATIONAL |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_BUDGET_ALLOCATION_ID|ID|PRIMARY KEY||
|2|PK_BUDGET_ALLOCATION_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_BUDGET_ALLOCATION_DEPARTMENT|DEPARTMENT|INDEX||
|4|IDX_BUDGET_ALLOCATION_MERCHANT|MERCHANT|INDEX||
|5|IDX_BUDGET_ALLOCATION_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_BUDGET_ALLOCATION_ID|ID|-|-|PRIMARY KEY|
|2|FK_BUDGET_ALLOCATION_DEPARTMENT|DEPARTMENT|DEPARTMENT_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_BUDGET_ALLOCATION_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |DEPARTMENT_DATA| DEPARTMENT|- |
|2 |MERCHANT_DATA| MERCHANT|- |







