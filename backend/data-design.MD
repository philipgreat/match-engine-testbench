#  employee-service Data Design Document

## Change History
| # |    Date    |        Author |
|:--|:----------:|--------------:|
| 1 | 2025-03-04 | TeaQL Doc Rob |
| 2 | 2025-03-04 | TeaQL Doc Rob |

## Summary of Concepts

@model.svg
<html>
<head><title>502 Bad Gateway</title></head>
<body>
<center><h1>502 Bad Gateway</h1></center>
<hr><center>nginx/1.24.0 (Ubuntu)</center>
</body>
</html>

@model.svg



## Tables Index


| # |  Table Name  |Columns Count |Relation Count |
|:-------------|:-----------------------|:-----------------------|:-----------------------|
 | 1 | [PLATFORM_DATA](#Table-PLATFORM_DATA) |3|1|
 | 2 | [MERCHANT_DATA](#Table-MERCHANT_DATA) |7|115|
 | 3 | [EMPLOYEE_DATA](#Table-EMPLOYEE_DATA) |8|28|
 | 4 | [GENDER_TYPE_DATA](#Table-GENDER_TYPE_DATA) |3|1|
 | 5 | [UNIT_OF_MEASURE_DATA](#Table-UNIT_OF_MEASURE_DATA) |3|1|
 | 6 | [CURRENCY_TYPE_DATA](#Table-CURRENCY_TYPE_DATA) |3|3|
 | 7 | [DELIVERY_STATUS_DATA](#Table-DELIVERY_STATUS_DATA) |3|1|
 | 8 | [ORDER_STATUS_DATA](#Table-ORDER_STATUS_DATA) |3|2|
 | 9 | [PAYMENT_STATUS_DATA](#Table-PAYMENT_STATUS_DATA) |3|1|
 | 10 | [SUPPLIER_TYPE_DATA](#Table-SUPPLIER_TYPE_DATA) |3|1|
 | 11 | [QUALITY_CHECK_STATUS_DATA](#Table-QUALITY_CHECK_STATUS_DATA) |3|1|
 | 12 | [WAREHOUSE_TYPE_DATA](#Table-WAREHOUSE_TYPE_DATA) |3|1|
 | 13 | [INVENTORY_TRANSACTION_TYPE_DATA](#Table-INVENTORY_TRANSACTION_TYPE_DATA) |3|1|
 | 14 | [SOURCING_STATUS_DATA](#Table-SOURCING_STATUS_DATA) |3|1|
 | 15 | [LEGAL_DOCUMENT_TYPE_DATA](#Table-LEGAL_DOCUMENT_TYPE_DATA) |3|1|
 | 16 | [DEMAND_FORECAST_METHOD_DATA](#Table-DEMAND_FORECAST_METHOD_DATA) |3|1|
 | 17 | [RISK_LEVEL_DATA](#Table-RISK_LEVEL_DATA) |3|2|
 | 18 | [SUPPLIER_DATA](#Table-SUPPLIER_DATA) |8|11|
 | 19 | [MATERIAL_DATA](#Table-MATERIAL_DATA) |7|17|
 | 20 | [REQUEST_FOR_QUOTATION_DATA](#Table-REQUEST_FOR_QUOTATION_DATA) |7|2|
 | 21 | [RFQ_ITEM_DATA](#Table-RFQ_ITEM_DATA) |6|0|
 | 22 | [QUOTATION_DATA](#Table-QUOTATION_DATA) |8|1|
 | 23 | [QUOTATION_ITEM_DATA](#Table-QUOTATION_ITEM_DATA) |6|0|
 | 24 | [PURCHASE_ORDER_DATA](#Table-PURCHASE_ORDER_DATA) |9|5|
 | 25 | [PURCHASE_ORDER_ITEM_DATA](#Table-PURCHASE_ORDER_ITEM_DATA) |6|0|
 | 26 | [VENDOR_EVALUATION_DATA](#Table-VENDOR_EVALUATION_DATA) |7|0|
 | 27 | [WAREHOUSE_DATA](#Table-WAREHOUSE_DATA) |6|6|
 | 28 | [INVENTORY_DATA](#Table-INVENTORY_DATA) |6|0|
 | 29 | [INVENTORY_TRANSACTION_DATA](#Table-INVENTORY_TRANSACTION_DATA) |8|0|
 | 30 | [SHIPMENT_DATA](#Table-SHIPMENT_DATA) |9|2|
 | 31 | [RECEIVING_NOTE_DATA](#Table-RECEIVING_NOTE_DATA) |7|2|
 | 32 | [RECEIVING_ITEM_DATA](#Table-RECEIVING_ITEM_DATA) |6|0|
 | 33 | [INVOICE_DATA](#Table-INVOICE_DATA) |9|2|
 | 34 | [PAYMENT_RECORD_DATA](#Table-PAYMENT_RECORD_DATA) |7|0|
 | 35 | [EXPENSE_REPORT_DATA](#Table-EXPENSE_REPORT_DATA) |6|0|
 | 36 | [FINANCIAL_STATEMENT_DATA](#Table-FINANCIAL_STATEMENT_DATA) |7|0|
 | 37 | [DEMAND_FORECAST_DATA](#Table-DEMAND_FORECAST_DATA) |6|0|
 | 38 | [SALES_ORDER_DATA](#Table-SALES_ORDER_DATA) |7|1|
 | 39 | [SALES_ORDER_ITEM_DATA](#Table-SALES_ORDER_ITEM_DATA) |6|0|
 | 40 | [QUALITY_CONTROL_PLAN_DATA](#Table-QUALITY_CONTROL_PLAN_DATA) |6|0|
 | 41 | [INSPECTION_REPORT_DATA](#Table-INSPECTION_REPORT_DATA) |8|1|
 | 42 | [NON_CONFORMANCE_REPORT_DATA](#Table-NON_CONFORMANCE_REPORT_DATA) |7|0|
 | 43 | [CONTRACT_DATA](#Table-CONTRACT_DATA) |8|2|
 | 44 | [LEGAL_DOCUMENT_DATA](#Table-LEGAL_DOCUMENT_DATA) |5|0|
 | 45 | [COMPLIANCE_CHECK_DATA](#Table-COMPLIANCE_CHECK_DATA) |6|0|
 | 46 | [TASK_DATA](#Table-TASK_DATA) |7|0|
 | 47 | [NOTIFICATION_DATA](#Table-NOTIFICATION_DATA) |6|0|
 | 48 | [REPORT_DATA](#Table-REPORT_DATA) |6|0|
 | 49 | [TRANSPORTATION_ROUTE_DATA](#Table-TRANSPORTATION_ROUTE_DATA) |6|1|
 | 50 | [ROUTE_LEG_DATA](#Table-ROUTE_LEG_DATA) |6|0|
 | 51 | [TRUCK_DATA](#Table-TRUCK_DATA) |6|0|
 | 52 | [CONTAINER_DATA](#Table-CONTAINER_DATA) |5|0|
 | 53 | [CONSIGNMENT_DATA](#Table-CONSIGNMENT_DATA) |5|0|
 | 54 | [STOCK_TAKE_DATA](#Table-STOCK_TAKE_DATA) |6|1|
 | 55 | [STOCK_TAKE_ITEM_DATA](#Table-STOCK_TAKE_ITEM_DATA) |7|0|
 | 56 | [MATERIAL_CATEGORY_DATA](#Table-MATERIAL_CATEGORY_DATA) |5|0|
 | 57 | [CUSTOMER_DATA](#Table-CUSTOMER_DATA) |5|4|
 | 58 | [CUSTOMER_ADDRESS_DATA](#Table-CUSTOMER_ADDRESS_DATA) |6|0|
 | 59 | [SALES_FORECAST_DATA](#Table-SALES_FORECAST_DATA) |5|0|
 | 60 | [PRODUCT_DATA](#Table-PRODUCT_DATA) |5|1|
 | 61 | [BILL_OF_MATERIAL_DATA](#Table-BILL_OF_MATERIAL_DATA) |3|1|
 | 62 | [BOM_ITEM_DATA](#Table-BOM_ITEM_DATA) |5|0|
 | 63 | [SUPPLIER_PERFORMANCE_DATA](#Table-SUPPLIER_PERFORMANCE_DATA) |6|0|
 | 64 | [AUDIT_LOG_DATA](#Table-AUDIT_LOG_DATA) |6|0|
 | 65 | [USER_GROUP_DATA](#Table-USER_GROUP_DATA) |4|0|
 | 66 | [PERMISSION_DATA](#Table-PERMISSION_DATA) |4|1|
 | 67 | [ROLE_DATA](#Table-ROLE_DATA) |3|2|
 | 68 | [USER_ROLE_DATA](#Table-USER_ROLE_DATA) |4|0|
 | 69 | [ROLE_PERMISSION_DATA](#Table-ROLE_PERMISSION_DATA) |4|0|
 | 70 | [SUPPLY_CHAIN_EVENT_DATA](#Table-SUPPLY_CHAIN_EVENT_DATA) |5|1|
 | 71 | [EVENT_LOG_DATA](#Table-EVENT_LOG_DATA) |5|0|
 | 72 | [COST_CENTER_DATA](#Table-COST_CENTER_DATA) |3|1|
 | 73 | [BUDGET_DATA](#Table-BUDGET_DATA) |5|0|
 | 74 | [ACCOUNT_DATA](#Table-ACCOUNT_DATA) |4|1|
 | 75 | [TRANSACTION_DATA](#Table-TRANSACTION_DATA) |6|0|
 | 76 | [PAYMENT_METHOD_DATA](#Table-PAYMENT_METHOD_DATA) |4|0|
 | 77 | [PAYMENT_TERM_DATA](#Table-PAYMENT_TERM_DATA) |5|0|
 | 78 | [INVOICE_ITEM_DATA](#Table-INVOICE_ITEM_DATA) |7|0|
 | 79 | [SUPPLIER_CONTACT_DATA](#Table-SUPPLIER_CONTACT_DATA) |6|0|
 | 80 | [EMPLOYEE_TITLE_DATA](#Table-EMPLOYEE_TITLE_DATA) |3|1|
 | 81 | [EMPLOYEE_TITLE_ASSIGNMENT_DATA](#Table-EMPLOYEE_TITLE_ASSIGNMENT_DATA) |5|0|
 | 82 | [EMPLOYEE_TRAINING_DATA](#Table-EMPLOYEE_TRAINING_DATA) |6|0|
 | 83 | [SUPPLY_CHAIN_RISK_DATA](#Table-SUPPLY_CHAIN_RISK_DATA) |6|1|
 | 84 | [RISK_EVENT_DATA](#Table-RISK_EVENT_DATA) |5|0|
 | 85 | [QUALITY_ISSUE_DATA](#Table-QUALITY_ISSUE_DATA) |6|1|
 | 86 | [CORRECTIVE_ACTION_DATA](#Table-CORRECTIVE_ACTION_DATA) |6|0|
 | 87 | [SUPPLIER_RATING_DATA](#Table-SUPPLIER_RATING_DATA) |5|0|
 | 88 | [VENDOR_ONBOARDING_DATA](#Table-VENDOR_ONBOARDING_DATA) |6|0|
 | 89 | [VENDOR_CONTRACT_TEMPLATE_DATA](#Table-VENDOR_CONTRACT_TEMPLATE_DATA) |3|0|
 | 90 | [DATA_BACKUP_DATA](#Table-DATA_BACKUP_DATA) |5|0|
 | 91 | [USER_LOGIN_LOG_DATA](#Table-USER_LOGIN_LOG_DATA) |6|0|
 | 92 | [SYSTEM_ANNOUNCEMENT_DATA](#Table-SYSTEM_ANNOUNCEMENT_DATA) |6|0|
 | 93 | [WAREHOUSE_SHELF_DATA](#Table-WAREHOUSE_SHELF_DATA) |5|0|
 | 94 | [STOCK_TRANSFER_DATA](#Table-STOCK_TRANSFER_DATA) |7|1|
 | 95 | [TRANSFER_ITEM_DATA](#Table-TRANSFER_ITEM_DATA) |5|0|
 | 96 | [RETURN_MERCHANDISE_AUTHORIZATION_DATA](#Table-RETURN_MERCHANDISE_AUTHORIZATION_DATA) |6|1|
 | 97 | [RETURN_ITEM_DATA](#Table-RETURN_ITEM_DATA) |5|0|
 | 98 | [CUSTOMER_FEEDBACK_DATA](#Table-CUSTOMER_FEEDBACK_DATA) |5|0|
 | 99 | [FEEDBACK_TYPE_DATA](#Table-FEEDBACK_TYPE_DATA) |3|0|
 | 100 | [CUSTOMER_SERVICE_CASE_DATA](#Table-CUSTOMER_SERVICE_CASE_DATA) |7|0|
 | 101 | [CUSTOMER_SATISFACTION_SURVEY_DATA](#Table-CUSTOMER_SATISFACTION_SURVEY_DATA) |5|0|
 | 102 | [MARKET_INTELLIGENCE_DATA](#Table-MARKET_INTELLIGENCE_DATA) |5|0|
 | 103 | [SUPPLY_CHAIN_METRICS_DATA](#Table-SUPPLY_CHAIN_METRICS_DATA) |5|0|
 | 104 | [REPORT_GENERATION_TASK_DATA](#Table-REPORT_GENERATION_TASK_DATA) |6|0|
 | 105 | [SYSTEM_CONFIGURATION_DATA](#Table-SYSTEM_CONFIGURATION_DATA) |5|0|
 | 106 | [API_KEY_DATA](#Table-API_KEY_DATA) |5|0|
 | 107 | [SERVICE_LEVEL_AGREEMENT_DATA](#Table-SERVICE_LEVEL_AGREEMENT_DATA) |5|0|
 | 108 | [DISPUTE_DATA](#Table-DISPUTE_DATA) |5|0|
 | 109 | [ASSET_MANAGEMENT_DATA](#Table-ASSET_MANAGEMENT_DATA) |6|1|
 | 110 | [MAINTENANCE_RECORD_DATA](#Table-MAINTENANCE_RECORD_DATA) |6|0|
 | 111 | [SALES_PIPELINE_DATA](#Table-SALES_PIPELINE_DATA) |5|0|
 | 112 | [PROCUREMENT_STRATEGY_DATA](#Table-PROCUREMENT_STRATEGY_DATA) |5|0|
 | 113 | [SUPPLIER_AUDIT_DATA](#Table-SUPPLIER_AUDIT_DATA) |6|0|
 | 114 | [TRANSPORTATION_MODE_DATA](#Table-TRANSPORTATION_MODE_DATA) |3|0|
 | 115 | [DELIVERY_ROUTE_DATA](#Table-DELIVERY_ROUTE_DATA) |3|1|
 | 116 | [ROUTE_STOP_DATA](#Table-ROUTE_STOP_DATA) |5|0|
 | 117 | [TRANSPORTATION_COST_DATA](#Table-TRANSPORTATION_COST_DATA) |5|0|


## Tables

 
### Table PLATFORM_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(100)|SupplyChainPlatform |
|3|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|4|UPDATE_TIME|Update Time|TIMESTAMP|updateTime() |
|5|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_PLATFORM_ID|ID|PRIMARY KEY||
|2|PK_PLATFORM_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_PLATFORM_CREATE_TIME|CREATE_TIME|INDEX||
|4|IDX_PLATFORM_UPDATE_TIME|UPDATE_TIME|INDEX||




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
|2|NAME|Name|VARCHAR(100)|全球供应链解决方案有限公司 |
|3|TAX_NUMBER|Tax Number|VARCHAR(100)|91310115MA1H23R57E |
|4|ADDRESS|Address|VARCHAR(100)|上海市浦东新区张江高科园区 |
|5|EXTERNAL_ID|External Id|VARCHAR(100)|EX0001 |
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
|1 |EMPLOYEE_DATA| MERCHANT|- |
|2 |GENDER_TYPE_DATA| MERCHANT|- |
|3 |UNIT_OF_MEASURE_DATA| MERCHANT|- |
|4 |CURRENCY_TYPE_DATA| MERCHANT|- |
|5 |DELIVERY_STATUS_DATA| MERCHANT|- |
|6 |ORDER_STATUS_DATA| MERCHANT|- |
|7 |PAYMENT_STATUS_DATA| MERCHANT|- |
|8 |SUPPLIER_TYPE_DATA| MERCHANT|- |
|9 |QUALITY_CHECK_STATUS_DATA| MERCHANT|- |
|10 |WAREHOUSE_TYPE_DATA| MERCHANT|- |
|11 |INVENTORY_TRANSACTION_TYPE_DATA| MERCHANT|- |
|12 |SOURCING_STATUS_DATA| MERCHANT|- |
|13 |LEGAL_DOCUMENT_TYPE_DATA| MERCHANT|- |
|14 |DEMAND_FORECAST_METHOD_DATA| MERCHANT|- |
|15 |RISK_LEVEL_DATA| MERCHANT|- |
|16 |SUPPLIER_DATA| MERCHANT|- |
|17 |MATERIAL_DATA| MERCHANT|- |
|18 |REQUEST_FOR_QUOTATION_DATA| MERCHANT|- |
|19 |RFQ_ITEM_DATA| MERCHANT|- |
|20 |QUOTATION_DATA| MERCHANT|- |
|21 |QUOTATION_ITEM_DATA| MERCHANT|- |
|22 |PURCHASE_ORDER_DATA| MERCHANT|- |
|23 |PURCHASE_ORDER_ITEM_DATA| MERCHANT|- |
|24 |VENDOR_EVALUATION_DATA| MERCHANT|- |
|25 |WAREHOUSE_DATA| MERCHANT|- |
|26 |INVENTORY_DATA| MERCHANT|- |
|27 |INVENTORY_TRANSACTION_DATA| MERCHANT|- |
|28 |SHIPMENT_DATA| MERCHANT|- |
|29 |RECEIVING_NOTE_DATA| MERCHANT|- |
|30 |RECEIVING_ITEM_DATA| MERCHANT|- |
|31 |INVOICE_DATA| MERCHANT|- |
|32 |PAYMENT_RECORD_DATA| MERCHANT|- |
|33 |EXPENSE_REPORT_DATA| MERCHANT|- |
|34 |FINANCIAL_STATEMENT_DATA| MERCHANT|- |
|35 |DEMAND_FORECAST_DATA| MERCHANT|- |
|36 |SALES_ORDER_DATA| MERCHANT|- |
|37 |SALES_ORDER_ITEM_DATA| MERCHANT|- |
|38 |QUALITY_CONTROL_PLAN_DATA| MERCHANT|- |
|39 |INSPECTION_REPORT_DATA| MERCHANT|- |
|40 |NON_CONFORMANCE_REPORT_DATA| MERCHANT|- |
|41 |CONTRACT_DATA| MERCHANT|- |
|42 |LEGAL_DOCUMENT_DATA| MERCHANT|- |
|43 |COMPLIANCE_CHECK_DATA| MERCHANT|- |
|44 |TASK_DATA| MERCHANT|- |
|45 |NOTIFICATION_DATA| MERCHANT|- |
|46 |REPORT_DATA| MERCHANT|- |
|47 |TRANSPORTATION_ROUTE_DATA| MERCHANT|- |
|48 |ROUTE_LEG_DATA| MERCHANT|- |
|49 |TRUCK_DATA| MERCHANT|- |
|50 |CONTAINER_DATA| MERCHANT|- |
|51 |CONSIGNMENT_DATA| MERCHANT|- |
|52 |STOCK_TAKE_DATA| MERCHANT|- |
|53 |STOCK_TAKE_ITEM_DATA| MERCHANT|- |
|54 |MATERIAL_CATEGORY_DATA| MERCHANT|- |
|55 |CUSTOMER_DATA| MERCHANT|- |
|56 |CUSTOMER_ADDRESS_DATA| MERCHANT|- |
|57 |SALES_FORECAST_DATA| MERCHANT|- |
|58 |PRODUCT_DATA| MERCHANT|- |
|59 |BILL_OF_MATERIAL_DATA| MERCHANT|- |
|60 |BOM_ITEM_DATA| MERCHANT|- |
|61 |SUPPLIER_PERFORMANCE_DATA| MERCHANT|- |
|62 |AUDIT_LOG_DATA| MERCHANT|- |
|63 |USER_GROUP_DATA| MERCHANT|- |
|64 |PERMISSION_DATA| MERCHANT|- |
|65 |ROLE_DATA| MERCHANT|- |
|66 |USER_ROLE_DATA| MERCHANT|- |
|67 |ROLE_PERMISSION_DATA| MERCHANT|- |
|68 |SUPPLY_CHAIN_EVENT_DATA| MERCHANT|- |
|69 |EVENT_LOG_DATA| MERCHANT|- |
|70 |COST_CENTER_DATA| MERCHANT|- |
|71 |BUDGET_DATA| MERCHANT|- |
|72 |ACCOUNT_DATA| MERCHANT|- |
|73 |TRANSACTION_DATA| MERCHANT|- |
|74 |PAYMENT_METHOD_DATA| MERCHANT|- |
|75 |PAYMENT_TERM_DATA| MERCHANT|- |
|76 |INVOICE_ITEM_DATA| MERCHANT|- |
|77 |SUPPLIER_CONTACT_DATA| MERCHANT|- |
|78 |EMPLOYEE_TITLE_DATA| MERCHANT|- |
|79 |EMPLOYEE_TITLE_ASSIGNMENT_DATA| MERCHANT|- |
|80 |EMPLOYEE_TRAINING_DATA| MERCHANT|- |
|81 |SUPPLY_CHAIN_RISK_DATA| MERCHANT|- |
|82 |RISK_EVENT_DATA| MERCHANT|- |
|83 |QUALITY_ISSUE_DATA| MERCHANT|- |
|84 |CORRECTIVE_ACTION_DATA| MERCHANT|- |
|85 |SUPPLIER_RATING_DATA| MERCHANT|- |
|86 |VENDOR_ONBOARDING_DATA| MERCHANT|- |
|87 |VENDOR_CONTRACT_TEMPLATE_DATA| MERCHANT|- |
|88 |DATA_BACKUP_DATA| MERCHANT|- |
|89 |USER_LOGIN_LOG_DATA| MERCHANT|- |
|90 |SYSTEM_ANNOUNCEMENT_DATA| MERCHANT|- |
|91 |WAREHOUSE_SHELF_DATA| MERCHANT|- |
|92 |STOCK_TRANSFER_DATA| MERCHANT|- |
|93 |TRANSFER_ITEM_DATA| MERCHANT|- |
|94 |RETURN_MERCHANDISE_AUTHORIZATION_DATA| MERCHANT|- |
|95 |RETURN_ITEM_DATA| MERCHANT|- |
|96 |CUSTOMER_FEEDBACK_DATA| MERCHANT|- |
|97 |FEEDBACK_TYPE_DATA| MERCHANT|- |
|98 |CUSTOMER_SERVICE_CASE_DATA| MERCHANT|- |
|99 |CUSTOMER_SATISFACTION_SURVEY_DATA| MERCHANT|- |
|100 |MARKET_INTELLIGENCE_DATA| MERCHANT|- |
|101 |SUPPLY_CHAIN_METRICS_DATA| MERCHANT|- |
|102 |REPORT_GENERATION_TASK_DATA| MERCHANT|- |
|103 |SYSTEM_CONFIGURATION_DATA| MERCHANT|- |
|104 |API_KEY_DATA| MERCHANT|- |
|105 |SERVICE_LEVEL_AGREEMENT_DATA| MERCHANT|- |
|106 |DISPUTE_DATA| MERCHANT|- |
|107 |ASSET_MANAGEMENT_DATA| MERCHANT|- |
|108 |MAINTENANCE_RECORD_DATA| MERCHANT|- |
|109 |SALES_PIPELINE_DATA| MERCHANT|- |
|110 |PROCUREMENT_STRATEGY_DATA| MERCHANT|- |
|111 |SUPPLIER_AUDIT_DATA| MERCHANT|- |
|112 |TRANSPORTATION_MODE_DATA| MERCHANT|- |
|113 |DELIVERY_ROUTE_DATA| MERCHANT|- |
|114 |ROUTE_STOP_DATA| MERCHANT|- |
|115 |TRANSPORTATION_COST_DATA| MERCHANT|- |






 
### Table EMPLOYEE_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|EMPLOYEE_NUMBER|Employee Number|VARCHAR(100)|SCM10001 |
|3|EXTERNAL_ID|External Id|VARCHAR(100)|EX0001 |
|4|NAME|Name|VARCHAR(100)|王伟 |
|5|GENDER|Gender|BIGINT|1 |
|6|MOBILE_PHONE|Mobile Phone|INTEGER|13900010001 |
|7|EMAIL|Email|VARCHAR(100)|wangwei@scm.com |
|8|MERCHANT|Merchant|BIGINT|1 |
|9|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|10|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_EMPLOYEE_ID|ID|PRIMARY KEY||
|2|PK_EMPLOYEE_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_EMPLOYEE_GENDER|GENDER|INDEX||
|4|IDX_EMPLOYEE_MERCHANT|MERCHANT|INDEX||
|5|IDX_EMPLOYEE_CREATE_TIME|CREATE_TIME|INDEX||




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
|1 |REQUEST_FOR_QUOTATION_DATA| REQUESTOR|- |
|2 |PURCHASE_ORDER_DATA| APPROVER|- |
|3 |VENDOR_EVALUATION_DATA| EVALUATOR|- |
|4 |WAREHOUSE_DATA| MANAGER|- |
|5 |INVENTORY_TRANSACTION_DATA| OPERATOR|- |
|6 |RECEIVING_NOTE_DATA| RECEIVER|- |
|7 |PAYMENT_RECORD_DATA| PAYER|- |
|8 |QUALITY_CONTROL_PLAN_DATA| RESPONSIBLE_PERSON|- |
|9 |INSPECTION_REPORT_DATA| INSPECTOR|- |
|10 |NON_CONFORMANCE_REPORT_DATA| REPORTED_BY|- |
|11 |CONTRACT_DATA| LEGAL_REVIEWER|- |
|12 |COMPLIANCE_CHECK_DATA| CHECKED_BY|- |
|13 |TASK_DATA| ASSIGNED_TO|- |
|14 |NOTIFICATION_DATA| RECIPIENT|- |
|15 |REPORT_DATA| GENERATOR|- |
|16 |STOCK_TAKE_DATA| AUDITOR|- |
|17 |AUDIT_LOG_DATA| \"USER\"|- |
|18 |USER_ROLE_DATA| EMPLOYEE|- |
|19 |EMPLOYEE_TITLE_ASSIGNMENT_DATA| EMPLOYEE|- |
|20 |EMPLOYEE_TRAINING_DATA| PARTICIPANT|- |
|21 |QUALITY_ISSUE_DATA| REPORTED_BY|- |
|22 |CORRECTIVE_ACTION_DATA| RESPONSIBLE_PERSON|- |
|23 |VENDOR_ONBOARDING_DATA| REVIEWER|- |
|24 |USER_LOGIN_LOG_DATA| EMPLOYEE|- |
|25 |SYSTEM_ANNOUNCEMENT_DATA| PUBLISHER|- |
|26 |CUSTOMER_SERVICE_CASE_DATA| ASSIGNED_TO|- |
|27 |PROCUREMENT_STRATEGY_DATA| RESPONSIBLE_PERSON|- |
|28 |SUPPLIER_AUDIT_DATA| AUDITOR|- |






 
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
|1 |EMPLOYEE_DATA| GENDER|- |






#### Internal Data
|ID |NAME |CODE |MERCHANT |VERSION |
|:----------|:----------|:----------|:----------|:----------|
|1|男|MALE|1|1|
|2|女|FEMALE|1|1|
|3|未知|UNKNOWN|1|1|
 
### Table UNIT_OF_MEASURE_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(100)|个 |
|3|CODE|Code|VARCHAR(100)|PCS |
|4|MERCHANT|Merchant|BIGINT|1 |
|5|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_UNIT_OF_MEASURE_ID|ID|PRIMARY KEY||
|2|PK_UNIT_OF_MEASURE_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_UNIT_OF_MEASURE_MERCHANT|MERCHANT|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_UNIT_OF_MEASURE_ID|ID|-|-|PRIMARY KEY|
|2|FK_UNIT_OF_MEASURE_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MATERIAL_DATA| UNIT|- |






#### Internal Data
|ID |NAME |CODE |MERCHANT |VERSION |
|:----------|:----------|:----------|:----------|:----------|
|1|个|PCS|1|1|
|2|箱|CTN|1|1|
|3|千克|KG|1|1|
|4|米|M|1|1|
|5|升|L|1|1|
 
### Table CURRENCY_TYPE_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(100)|人民币 |
|3|CODE|Code|VARCHAR(100)|CNY |
|4|MERCHANT|Merchant|BIGINT|1 |
|5|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_CURRENCY_TYPE_ID|ID|PRIMARY KEY||
|2|PK_CURRENCY_TYPE_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_CURRENCY_TYPE_MERCHANT|MERCHANT|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_CURRENCY_TYPE_ID|ID|-|-|PRIMARY KEY|
|2|FK_CURRENCY_TYPE_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |QUOTATION_DATA| CURRENCY|- |
|2 |PURCHASE_ORDER_DATA| CURRENCY|- |
|3 |INVOICE_DATA| CURRENCY|- |






#### Internal Data
|ID |NAME |CODE |MERCHANT |VERSION |
|:----------|:----------|:----------|:----------|:----------|
|1|人民币|CNY|1|1|
|2|美元|USD|1|1|
|3|欧元|EUR|1|1|
|4|日元|JPY|1|1|
 
### Table DELIVERY_STATUS_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(100)|待发货 |
|3|CODE|Code|VARCHAR(100)|PENDING_SHIPMENT |
|4|MERCHANT|Merchant|BIGINT|1 |
|5|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_DELIVERY_STATUS_ID|ID|PRIMARY KEY||
|2|PK_DELIVERY_STATUS_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_DELIVERY_STATUS_MERCHANT|MERCHANT|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_DELIVERY_STATUS_ID|ID|-|-|PRIMARY KEY|
|2|FK_DELIVERY_STATUS_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |SHIPMENT_DATA| STATUS|- |






#### Internal Data
|ID |NAME |CODE |MERCHANT |VERSION |
|:----------|:----------|:----------|:----------|:----------|
|1|待发货|PENDING_SHIPMENT|1|1|
|2|已发货|SHIPPED|1|1|
|3|部分发货|PARTIALLY_SHIPPED|1|1|
|4|已签收|DELIVERED|1|1|
|5|已退回|RETURNED|1|1|
 
### Table ORDER_STATUS_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(100)|草稿 |
|3|CODE|Code|VARCHAR(100)|DRAFT |
|4|MERCHANT|Merchant|BIGINT|1 |
|5|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_ORDER_STATUS_ID|ID|PRIMARY KEY||
|2|PK_ORDER_STATUS_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_ORDER_STATUS_MERCHANT|MERCHANT|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_ORDER_STATUS_ID|ID|-|-|PRIMARY KEY|
|2|FK_ORDER_STATUS_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |PURCHASE_ORDER_DATA| STATUS|- |
|2 |SALES_ORDER_DATA| STATUS|- |






#### Internal Data
|ID |NAME |CODE |MERCHANT |VERSION |
|:----------|:----------|:----------|:----------|:----------|
|1|草稿|DRAFT|1|1|
|2|待审核|PENDING_APPROVAL|1|1|
|3|已批准|APPROVED|1|1|
|4|已完成|COMPLETED|1|1|
|5|已取消|CANCELLED|1|1|
 
### Table PAYMENT_STATUS_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(100)|待支付 |
|3|CODE|Code|VARCHAR(100)|PENDING |
|4|MERCHANT|Merchant|BIGINT|1 |
|5|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_PAYMENT_STATUS_ID|ID|PRIMARY KEY||
|2|PK_PAYMENT_STATUS_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_PAYMENT_STATUS_MERCHANT|MERCHANT|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_PAYMENT_STATUS_ID|ID|-|-|PRIMARY KEY|
|2|FK_PAYMENT_STATUS_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |INVOICE_DATA| STATUS|- |






#### Internal Data
|ID |NAME |CODE |MERCHANT |VERSION |
|:----------|:----------|:----------|:----------|:----------|
|1|待支付|PENDING|1|1|
|2|已支付|PAID|1|1|
|3|部分支付|PARTIALLY_PAID|1|1|
|4|已退款|REFUNDED|1|1|
 
### Table SUPPLIER_TYPE_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(100)|原材料供应商 |
|3|CODE|Code|VARCHAR(100)|RAW_MATERIAL_SUPPLIER |
|4|MERCHANT|Merchant|BIGINT|1 |
|5|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_SUPPLIER_TYPE_ID|ID|PRIMARY KEY||
|2|PK_SUPPLIER_TYPE_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_SUPPLIER_TYPE_MERCHANT|MERCHANT|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_SUPPLIER_TYPE_ID|ID|-|-|PRIMARY KEY|
|2|FK_SUPPLIER_TYPE_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |SUPPLIER_DATA| TYPE|- |






#### Internal Data
|ID |NAME |CODE |MERCHANT |VERSION |
|:----------|:----------|:----------|:----------|:----------|
|1|原材料供应商|RAW_MATERIAL_SUPPLIER|1|1|
|2|成品供应商|FINISHED_PRODUCT_SUPPLIER|1|1|
|3|服务供应商|SERVICE_PROVIDER|1|1|
 
### Table QUALITY_CHECK_STATUS_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(100)|待质检 |
|3|CODE|Code|VARCHAR(100)|PENDING_CHECK |
|4|MERCHANT|Merchant|BIGINT|1 |
|5|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_QUALITY_CHECK_STATUS_ID|ID|PRIMARY KEY||
|2|PK_QUALITY_CHECK_STATUS_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_QUALITY_CHECK_STATUS_MERCHANT|MERCHANT|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_QUALITY_CHECK_STATUS_ID|ID|-|-|PRIMARY KEY|
|2|FK_QUALITY_CHECK_STATUS_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |INSPECTION_REPORT_DATA| STATUS|- |






#### Internal Data
|ID |NAME |CODE |MERCHANT |VERSION |
|:----------|:----------|:----------|:----------|:----------|
|1|待质检|PENDING_CHECK|1|1|
|2|合格|QUALIFIED|1|1|
|3|不合格|UNQUALIFIED|1|1|
|4|部分合格|PARTIALLY_QUALIFIED|1|1|
 
### Table WAREHOUSE_TYPE_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(100)|常温库 |
|3|CODE|Code|VARCHAR(100)|AMBIENT |
|4|MERCHANT|Merchant|BIGINT|1 |
|5|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_WAREHOUSE_TYPE_ID|ID|PRIMARY KEY||
|2|PK_WAREHOUSE_TYPE_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_WAREHOUSE_TYPE_MERCHANT|MERCHANT|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_WAREHOUSE_TYPE_ID|ID|-|-|PRIMARY KEY|
|2|FK_WAREHOUSE_TYPE_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |WAREHOUSE_DATA| TYPE|- |






#### Internal Data
|ID |NAME |CODE |MERCHANT |VERSION |
|:----------|:----------|:----------|:----------|:----------|
|1|常温库|AMBIENT|1|1|
|2|冷藏库|REFRIGERATED|1|1|
|3|冷冻库|FROZEN|1|1|
 
### Table INVENTORY_TRANSACTION_TYPE_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(100)|入库 |
|3|CODE|Code|VARCHAR(100)|INBOUND |
|4|MERCHANT|Merchant|BIGINT|1 |
|5|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_INVENTORY_TRANSACTION_TYPE_ID|ID|PRIMARY KEY||
|2|PK_INVENTORY_TRANSACTION_TYPE_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_INVENTORY_TRANSACTION_TYPE_MERCHANT|MERCHANT|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_INVENTORY_TRANSACTION_TYPE_ID|ID|-|-|PRIMARY KEY|
|2|FK_INVENTORY_TRANSACTION_TYPE_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |INVENTORY_TRANSACTION_DATA| TRANSACTION_TYPE|- |






#### Internal Data
|ID |NAME |CODE |MERCHANT |VERSION |
|:----------|:----------|:----------|:----------|:----------|
|1|入库|INBOUND|1|1|
|2|出库|OUTBOUND|1|1|
|3|盘点|INVENTORY_COUNT|1|1|
|4|转移|TRANSFER|1|1|
 
### Table SOURCING_STATUS_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(100)|新建 |
|3|CODE|Code|VARCHAR(100)|NEW |
|4|MERCHANT|Merchant|BIGINT|1 |
|5|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_SOURCING_STATUS_ID|ID|PRIMARY KEY||
|2|PK_SOURCING_STATUS_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_SOURCING_STATUS_MERCHANT|MERCHANT|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_SOURCING_STATUS_ID|ID|-|-|PRIMARY KEY|
|2|FK_SOURCING_STATUS_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |REQUEST_FOR_QUOTATION_DATA| STATUS|- |






#### Internal Data
|ID |NAME |CODE |MERCHANT |VERSION |
|:----------|:----------|:----------|:----------|:----------|
|1|新建|NEW|1|1|
|2|询价中|REQUESTING_QUOTES|1|1|
|3|已完成|COMPLETED|1|1|
|4|已取消|CANCELLED|1|1|
 
### Table LEGAL_DOCUMENT_TYPE_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(100)|合同 |
|3|CODE|Code|VARCHAR(100)|CONTRACT |
|4|MERCHANT|Merchant|BIGINT|1 |
|5|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_LEGAL_DOCUMENT_TYPE_ID|ID|PRIMARY KEY||
|2|PK_LEGAL_DOCUMENT_TYPE_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_LEGAL_DOCUMENT_TYPE_MERCHANT|MERCHANT|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_LEGAL_DOCUMENT_TYPE_ID|ID|-|-|PRIMARY KEY|
|2|FK_LEGAL_DOCUMENT_TYPE_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |LEGAL_DOCUMENT_DATA| DOCUMENT_TYPE|- |






#### Internal Data
|ID |NAME |CODE |MERCHANT |VERSION |
|:----------|:----------|:----------|:----------|:----------|
|1|合同|CONTRACT|1|1|
|2|许可协议|LICENSE_AGREEMENT|1|1|
|3|保密协议|NDA|1|1|
 
### Table DEMAND_FORECAST_METHOD_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(100)|历史数据 |
|3|CODE|Code|VARCHAR(100)|HISTORICAL_DATA |
|4|MERCHANT|Merchant|BIGINT|1 |
|5|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_DEMAND_FORECAST_METHOD_ID|ID|PRIMARY KEY||
|2|PK_DEMAND_FORECAST_METHOD_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_DEMAND_FORECAST_METHOD_MERCHANT|MERCHANT|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_DEMAND_FORECAST_METHOD_ID|ID|-|-|PRIMARY KEY|
|2|FK_DEMAND_FORECAST_METHOD_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |DEMAND_FORECAST_DATA| \"METHOD\"|- |






#### Internal Data
|ID |NAME |CODE |MERCHANT |VERSION |
|:----------|:----------|:----------|:----------|:----------|
|1|历史数据|HISTORICAL_DATA|1|1|
|2|销售预测|SALES_FORECAST|1|1|
|3|市场调研|MARKET_RESEARCH|1|1|
 
### Table RISK_LEVEL_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(100)|低 |
|3|CODE|Code|VARCHAR(100)|LOW |
|4|MERCHANT|Merchant|BIGINT|1 |
|5|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_RISK_LEVEL_ID|ID|PRIMARY KEY||
|2|PK_RISK_LEVEL_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_RISK_LEVEL_MERCHANT|MERCHANT|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_RISK_LEVEL_ID|ID|-|-|PRIMARY KEY|
|2|FK_RISK_LEVEL_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |COMPLIANCE_CHECK_DATA| RISK_LEVEL|- |
|2 |SUPPLY_CHAIN_RISK_DATA| RISK_LEVEL|- |






#### Internal Data
|ID |NAME |CODE |MERCHANT |VERSION |
|:----------|:----------|:----------|:----------|:----------|
|1|低|LOW|1|1|
|2|中|MEDIUM|1|1|
|3|高|HIGH|1|1|
 
### Table SUPPLIER_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(100)|上海东风材料有限公司 |
|3|CONTACT_PERSON|Contact Person|VARCHAR(100)|李华 |
|4|PHONE_NUMBER|Phone Number|INTEGER|13812345678 |
|5|EMAIL|Email|VARCHAR(100)|lihua@eastwind.com |
|6|ADDRESS|Address|VARCHAR(100)|上海市嘉定区 |
|7|TYPE|Type|BIGINT|1 |
|8|MERCHANT|Merchant|BIGINT|1 |
|9|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|10|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_SUPPLIER_ID|ID|PRIMARY KEY||
|2|PK_SUPPLIER_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_SUPPLIER_TYPE|TYPE|INDEX||
|4|IDX_SUPPLIER_MERCHANT|MERCHANT|INDEX||
|5|IDX_SUPPLIER_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_SUPPLIER_ID|ID|-|-|PRIMARY KEY|
|2|FK_SUPPLIER_TYPE|TYPE|SUPPLIER_TYPE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_SUPPLIER_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |SUPPLIER_TYPE_DATA| TYPE|- |
|2 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MATERIAL_DATA| SUPPLIER|- |
|2 |QUOTATION_DATA| SUPPLIER|- |
|3 |PURCHASE_ORDER_DATA| SUPPLIER|- |
|4 |VENDOR_EVALUATION_DATA| SUPPLIER|- |
|5 |INVOICE_DATA| SUPPLIER|- |
|6 |CONTRACT_DATA| SUPPLIER|- |
|7 |SUPPLIER_PERFORMANCE_DATA| SUPPLIER|- |
|8 |SUPPLIER_CONTACT_DATA| SUPPLIER|- |
|9 |SUPPLIER_RATING_DATA| SUPPLIER|- |
|10 |SERVICE_LEVEL_AGREEMENT_DATA| SUPPLIER|- |
|11 |SUPPLIER_AUDIT_DATA| SUPPLIER|- |






 
### Table MATERIAL_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(100)|不锈钢板 |
|3|MATERIAL_CODE|Material Code|VARCHAR(100)|SS304_PLATE |
|4|\"DESCRIPTION\"|Description|VARCHAR(100)|304不锈钢，厚度2mm |
|5|UNIT|Unit|BIGINT|1 |
|6|SUPPLIER|Supplier|BIGINT|1 |
|7|MERCHANT|Merchant|BIGINT|1 |
|8|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|9|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_MATERIAL_ID|ID|PRIMARY KEY||
|2|PK_MATERIAL_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_MATERIAL_UNIT|UNIT|INDEX||
|4|IDX_MATERIAL_SUPPLIER|SUPPLIER|INDEX||
|5|IDX_MATERIAL_MERCHANT|MERCHANT|INDEX||
|6|IDX_MATERIAL_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_MATERIAL_ID|ID|-|-|PRIMARY KEY|
|2|FK_MATERIAL_UNIT|UNIT|UNIT_OF_MEASURE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_MATERIAL_SUPPLIER|SUPPLIER|SUPPLIER_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_MATERIAL_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |UNIT_OF_MEASURE_DATA| UNIT|- |
|2 |SUPPLIER_DATA| SUPPLIER|- |
|3 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |RFQ_ITEM_DATA| MATERIAL|- |
|2 |QUOTATION_ITEM_DATA| MATERIAL|- |
|3 |PURCHASE_ORDER_ITEM_DATA| MATERIAL|- |
|4 |INVENTORY_DATA| MATERIAL|- |
|5 |INVENTORY_TRANSACTION_DATA| MATERIAL|- |
|6 |RECEIVING_ITEM_DATA| MATERIAL|- |
|7 |DEMAND_FORECAST_DATA| MATERIAL|- |
|8 |SALES_ORDER_ITEM_DATA| MATERIAL|- |
|9 |QUALITY_CONTROL_PLAN_DATA| MATERIAL|- |
|10 |INSPECTION_REPORT_DATA| MATERIAL|- |
|11 |NON_CONFORMANCE_REPORT_DATA| NON_CONFORMANCE_ITEM|- |
|12 |STOCK_TAKE_ITEM_DATA| MATERIAL|- |
|13 |BOM_ITEM_DATA| MATERIAL|- |
|14 |INVOICE_ITEM_DATA| MATERIAL|- |
|15 |QUALITY_ISSUE_DATA| MATERIAL|- |
|16 |TRANSFER_ITEM_DATA| MATERIAL|- |
|17 |RETURN_ITEM_DATA| MATERIAL|- |






 
### Table REQUEST_FOR_QUOTATION_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|REQUEST_NUMBER|Request Number|VARCHAR(100)|RFQ2024001 |
|3|STATUS|Status|BIGINT|1 |
|4|REQUEST_DATE|Request Date|DATE|2024-10-10 |
|5|REQUIRED_BY_DATE|Required By Date|DATE|2024-10-25 |
|6|REQUESTOR|Requestor|BIGINT|1 |
|7|MERCHANT|Merchant|BIGINT|1 |
|8|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|9|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_REQUEST_FOR_QUOTATION_ID|ID|PRIMARY KEY||
|2|PK_REQUEST_FOR_QUOTATION_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_REQUEST_FOR_QUOTATION_STATUS|STATUS|INDEX||
|4|IDX_REQUEST_FOR_QUOTATION_REQUESTOR|REQUESTOR|INDEX||
|5|IDX_REQUEST_FOR_QUOTATION_MERCHANT|MERCHANT|INDEX||
|6|IDX_REQUEST_FOR_QUOTATION_REQUEST_DATE|REQUEST_DATE|INDEX||
|7|IDX_REQUEST_FOR_QUOTATION_REQUIRED_BY_DATE|REQUIRED_BY_DATE|INDEX||
|8|IDX_REQUEST_FOR_QUOTATION_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_REQUEST_FOR_QUOTATION_ID|ID|-|-|PRIMARY KEY|
|2|FK_REQUEST_FOR_QUOTATION_STATUS|STATUS|SOURCING_STATUS_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_REQUEST_FOR_QUOTATION_REQUESTOR|REQUESTOR|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_REQUEST_FOR_QUOTATION_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |SOURCING_STATUS_DATA| STATUS|- |
|2 |EMPLOYEE_DATA| REQUESTOR|- |
|3 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |RFQ_ITEM_DATA| REQUEST_FOR_QUOTATION|- |
|2 |QUOTATION_DATA| REQUEST_FOR_QUOTATION|- |






 
### Table RFQ_ITEM_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|REQUEST_FOR_QUOTATION|Request For Quotation|BIGINT|1 |
|3|MATERIAL|Material|BIGINT|1 |
|4|QUANTITY|Quantity|INTEGER|1000 |
|5|UNIT_PRICE|Unit Price|NUMERIC(19,7)|99999999.99 |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_RFQ_ITEM_ID|ID|PRIMARY KEY||
|2|PK_RFQ_ITEM_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_RFQ_ITEM_REQUEST_FOR_QUOTATION|REQUEST_FOR_QUOTATION|INDEX||
|4|IDX_RFQ_ITEM_MATERIAL|MATERIAL|INDEX||
|5|IDX_RFQ_ITEM_MERCHANT|MERCHANT|INDEX||
|6|IDX_RFQ_ITEM_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_RFQ_ITEM_ID|ID|-|-|PRIMARY KEY|
|2|FK_RFQ_ITEM_REQUEST_FOR_QUOTATION|REQUEST_FOR_QUOTATION|REQUEST_FOR_QUOTATION_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_RFQ_ITEM_MATERIAL|MATERIAL|MATERIAL_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_RFQ_ITEM_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |REQUEST_FOR_QUOTATION_DATA| REQUEST_FOR_QUOTATION|- |
|2 |MATERIAL_DATA| MATERIAL|- |
|3 |MERCHANT_DATA| MERCHANT|- |






 
### Table QUOTATION_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|QUOTATION_NUMBER|Quotation Number|VARCHAR(100)|Q2024001_A |
|3|REQUEST_FOR_QUOTATION|Request For Quotation|BIGINT|1 |
|4|SUPPLIER|Supplier|BIGINT|1 |
|5|TOTAL_PRICE|Total Price|NUMERIC(19,7)|99999999.99 |
|6|CURRENCY|Currency|BIGINT|1 |
|7|QUOTE_DATE|Quote Date|DATE|2024-10-12 |
|8|MERCHANT|Merchant|BIGINT|1 |
|9|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|10|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_QUOTATION_ID|ID|PRIMARY KEY||
|2|PK_QUOTATION_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_QUOTATION_REQUEST_FOR_QUOTATION|REQUEST_FOR_QUOTATION|INDEX||
|4|IDX_QUOTATION_SUPPLIER|SUPPLIER|INDEX||
|5|IDX_QUOTATION_CURRENCY|CURRENCY|INDEX||
|6|IDX_QUOTATION_MERCHANT|MERCHANT|INDEX||
|7|IDX_QUOTATION_QUOTE_DATE|QUOTE_DATE|INDEX||
|8|IDX_QUOTATION_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_QUOTATION_ID|ID|-|-|PRIMARY KEY|
|2|FK_QUOTATION_REQUEST_FOR_QUOTATION|REQUEST_FOR_QUOTATION|REQUEST_FOR_QUOTATION_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_QUOTATION_SUPPLIER|SUPPLIER|SUPPLIER_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_QUOTATION_CURRENCY|CURRENCY|CURRENCY_TYPE_DATA|ID|CASCADE ON DELETE and UPDATE|
|5|FK_QUOTATION_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |REQUEST_FOR_QUOTATION_DATA| REQUEST_FOR_QUOTATION|- |
|2 |SUPPLIER_DATA| SUPPLIER|- |
|3 |CURRENCY_TYPE_DATA| CURRENCY|- |
|4 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |QUOTATION_ITEM_DATA| QUOTATION|- |






 
### Table QUOTATION_ITEM_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|QUOTATION|Quotation|BIGINT|1 |
|3|MATERIAL|Material|BIGINT|1 |
|4|UNIT_PRICE|Unit Price|NUMERIC(19,7)|99999999.99 |
|5|QUANTITY|Quantity|INTEGER|1000 |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_QUOTATION_ITEM_ID|ID|PRIMARY KEY||
|2|PK_QUOTATION_ITEM_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_QUOTATION_ITEM_QUOTATION|QUOTATION|INDEX||
|4|IDX_QUOTATION_ITEM_MATERIAL|MATERIAL|INDEX||
|5|IDX_QUOTATION_ITEM_MERCHANT|MERCHANT|INDEX||
|6|IDX_QUOTATION_ITEM_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_QUOTATION_ITEM_ID|ID|-|-|PRIMARY KEY|
|2|FK_QUOTATION_ITEM_QUOTATION|QUOTATION|QUOTATION_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_QUOTATION_ITEM_MATERIAL|MATERIAL|MATERIAL_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_QUOTATION_ITEM_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |QUOTATION_DATA| QUOTATION|- |
|2 |MATERIAL_DATA| MATERIAL|- |
|3 |MERCHANT_DATA| MERCHANT|- |






 
### Table PURCHASE_ORDER_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|ORDER_NUMBER|Order Number|VARCHAR(100)|PO2024001 |
|3|SUPPLIER|Supplier|BIGINT|1 |
|4|STATUS|Status|BIGINT|1 |
|5|TOTAL_AMOUNT|Total Amount|NUMERIC(19,7)|99999999.99 |
|6|CURRENCY|Currency|BIGINT|1 |
|7|ORDER_DATE|Order Date|DATE|2024-10-15 |
|8|APPROVER|Approver|BIGINT|1 |
|9|MERCHANT|Merchant|BIGINT|1 |
|10|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|11|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_PURCHASE_ORDER_ID|ID|PRIMARY KEY||
|2|PK_PURCHASE_ORDER_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_PURCHASE_ORDER_SUPPLIER|SUPPLIER|INDEX||
|4|IDX_PURCHASE_ORDER_STATUS|STATUS|INDEX||
|5|IDX_PURCHASE_ORDER_CURRENCY|CURRENCY|INDEX||
|6|IDX_PURCHASE_ORDER_APPROVER|APPROVER|INDEX||
|7|IDX_PURCHASE_ORDER_MERCHANT|MERCHANT|INDEX||
|8|IDX_PURCHASE_ORDER_ORDER_DATE|ORDER_DATE|INDEX||
|9|IDX_PURCHASE_ORDER_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_PURCHASE_ORDER_ID|ID|-|-|PRIMARY KEY|
|2|FK_PURCHASE_ORDER_SUPPLIER|SUPPLIER|SUPPLIER_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_PURCHASE_ORDER_STATUS|STATUS|ORDER_STATUS_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_PURCHASE_ORDER_CURRENCY|CURRENCY|CURRENCY_TYPE_DATA|ID|CASCADE ON DELETE and UPDATE|
|5|FK_PURCHASE_ORDER_APPROVER|APPROVER|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|6|FK_PURCHASE_ORDER_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |SUPPLIER_DATA| SUPPLIER|- |
|2 |ORDER_STATUS_DATA| STATUS|- |
|3 |CURRENCY_TYPE_DATA| CURRENCY|- |
|4 |EMPLOYEE_DATA| APPROVER|- |
|5 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |PURCHASE_ORDER_ITEM_DATA| PURCHASE_ORDER|- |
|2 |SHIPMENT_DATA| PURCHASE_ORDER|- |
|3 |RECEIVING_NOTE_DATA| PURCHASE_ORDER|- |
|4 |INVOICE_DATA| PURCHASE_ORDER|- |
|5 |RETURN_MERCHANDISE_AUTHORIZATION_DATA| RELATED_ORDER|- |






 
### Table PURCHASE_ORDER_ITEM_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|PURCHASE_ORDER|Purchase Order|BIGINT|1 |
|3|MATERIAL|Material|BIGINT|1 |
|4|QUANTITY|Quantity|INTEGER|1000 |
|5|UNIT_PRICE|Unit Price|NUMERIC(19,7)|99999999.99 |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_PURCHASE_ORDER_ITEM_ID|ID|PRIMARY KEY||
|2|PK_PURCHASE_ORDER_ITEM_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_PURCHASE_ORDER_ITEM_PURCHASE_ORDER|PURCHASE_ORDER|INDEX||
|4|IDX_PURCHASE_ORDER_ITEM_MATERIAL|MATERIAL|INDEX||
|5|IDX_PURCHASE_ORDER_ITEM_MERCHANT|MERCHANT|INDEX||
|6|IDX_PURCHASE_ORDER_ITEM_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_PURCHASE_ORDER_ITEM_ID|ID|-|-|PRIMARY KEY|
|2|FK_PURCHASE_ORDER_ITEM_PURCHASE_ORDER|PURCHASE_ORDER|PURCHASE_ORDER_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_PURCHASE_ORDER_ITEM_MATERIAL|MATERIAL|MATERIAL_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_PURCHASE_ORDER_ITEM_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |PURCHASE_ORDER_DATA| PURCHASE_ORDER|- |
|2 |MATERIAL_DATA| MATERIAL|- |
|3 |MERCHANT_DATA| MERCHANT|- |






 
### Table VENDOR_EVALUATION_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|SUPPLIER|Supplier|BIGINT|1 |
|3|EVALUATION_DATE|Evaluation Date|DATE|2024-10-15 |
|4|EVALUATOR|Evaluator|BIGINT|1 |
|5|SCORE|Score|INTEGER|100 |
|6|COMMENT|Comment|VARCHAR(100)|该供应商交货及时，质量稳定 |
|7|MERCHANT|Merchant|BIGINT|1 |
|8|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|9|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_VENDOR_EVALUATION_ID|ID|PRIMARY KEY||
|2|PK_VENDOR_EVALUATION_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_VENDOR_EVALUATION_SUPPLIER|SUPPLIER|INDEX||
|4|IDX_VENDOR_EVALUATION_EVALUATOR|EVALUATOR|INDEX||
|5|IDX_VENDOR_EVALUATION_MERCHANT|MERCHANT|INDEX||
|6|IDX_VENDOR_EVALUATION_EVALUATION_DATE|EVALUATION_DATE|INDEX||
|7|IDX_VENDOR_EVALUATION_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_VENDOR_EVALUATION_ID|ID|-|-|PRIMARY KEY|
|2|FK_VENDOR_EVALUATION_SUPPLIER|SUPPLIER|SUPPLIER_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_VENDOR_EVALUATION_EVALUATOR|EVALUATOR|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_VENDOR_EVALUATION_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |SUPPLIER_DATA| SUPPLIER|- |
|2 |EMPLOYEE_DATA| EVALUATOR|- |
|3 |MERCHANT_DATA| MERCHANT|- |






 
### Table WAREHOUSE_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(100)|上海一号仓库 |
|3|LOCATION|Location|VARCHAR(100)|上海市闵行区 |
|4|TYPE|Type|BIGINT|1 |
|5|MANAGER|Manager|BIGINT|1 |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_WAREHOUSE_ID|ID|PRIMARY KEY||
|2|PK_WAREHOUSE_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_WAREHOUSE_TYPE|TYPE|INDEX||
|4|IDX_WAREHOUSE_MANAGER|MANAGER|INDEX||
|5|IDX_WAREHOUSE_MERCHANT|MERCHANT|INDEX||
|6|IDX_WAREHOUSE_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_WAREHOUSE_ID|ID|-|-|PRIMARY KEY|
|2|FK_WAREHOUSE_TYPE|TYPE|WAREHOUSE_TYPE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_WAREHOUSE_MANAGER|MANAGER|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_WAREHOUSE_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |WAREHOUSE_TYPE_DATA| TYPE|- |
|2 |EMPLOYEE_DATA| MANAGER|- |
|3 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |INVENTORY_DATA| WAREHOUSE|- |
|2 |INVENTORY_TRANSACTION_DATA| WAREHOUSE|- |
|3 |STOCK_TAKE_DATA| WAREHOUSE|- |
|4 |WAREHOUSE_SHELF_DATA| WAREHOUSE|- |
|5 |STOCK_TRANSFER_DATA| FROM_WAREHOUSE|- |
|6 |STOCK_TRANSFER_DATA| TO_WAREHOUSE|- |






 
### Table INVENTORY_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|WAREHOUSE|Warehouse|BIGINT|1 |
|3|MATERIAL|Material|BIGINT|1 |
|4|QUANTITY|Quantity|INTEGER|999999999 |
|5|BATCH_NUMBER|Batch Number|VARCHAR(100)|string() |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_INVENTORY_ID|ID|PRIMARY KEY||
|2|PK_INVENTORY_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_INVENTORY_WAREHOUSE|WAREHOUSE|INDEX||
|4|IDX_INVENTORY_MATERIAL|MATERIAL|INDEX||
|5|IDX_INVENTORY_MERCHANT|MERCHANT|INDEX||
|6|IDX_INVENTORY_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_INVENTORY_ID|ID|-|-|PRIMARY KEY|
|2|FK_INVENTORY_WAREHOUSE|WAREHOUSE|WAREHOUSE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_INVENTORY_MATERIAL|MATERIAL|MATERIAL_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_INVENTORY_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |WAREHOUSE_DATA| WAREHOUSE|- |
|2 |MATERIAL_DATA| MATERIAL|- |
|3 |MERCHANT_DATA| MERCHANT|- |






 
### Table INVENTORY_TRANSACTION_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|TRANSACTION_TYPE|Transaction Type|BIGINT|1 |
|3|MATERIAL|Material|BIGINT|1 |
|4|WAREHOUSE|Warehouse|BIGINT|1 |
|5|QUANTITY|Quantity|INTEGER|999999999 |
|6|TRANSACTION_DATE|Transaction Date|DATE|2024-10-15 |
|7|OPERATOR|Operator|BIGINT|1 |
|8|MERCHANT|Merchant|BIGINT|1 |
|9|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|10|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_INVENTORY_TRANSACTION_ID|ID|PRIMARY KEY||
|2|PK_INVENTORY_TRANSACTION_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_INVENTORY_TRANSACTION_TRANSACTION_TYPE|TRANSACTION_TYPE|INDEX||
|4|IDX_INVENTORY_TRANSACTION_MATERIAL|MATERIAL|INDEX||
|5|IDX_INVENTORY_TRANSACTION_WAREHOUSE|WAREHOUSE|INDEX||
|6|IDX_INVENTORY_TRANSACTION_OPERATOR|OPERATOR|INDEX||
|7|IDX_INVENTORY_TRANSACTION_MERCHANT|MERCHANT|INDEX||
|8|IDX_INVENTORY_TRANSACTION_TRANSACTION_DATE|TRANSACTION_DATE|INDEX||
|9|IDX_INVENTORY_TRANSACTION_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_INVENTORY_TRANSACTION_ID|ID|-|-|PRIMARY KEY|
|2|FK_INVENTORY_TRANSACTION_TRANSACTION_TYPE|TRANSACTION_TYPE|INVENTORY_TRANSACTION_TYPE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_INVENTORY_TRANSACTION_MATERIAL|MATERIAL|MATERIAL_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_INVENTORY_TRANSACTION_WAREHOUSE|WAREHOUSE|WAREHOUSE_DATA|ID|CASCADE ON DELETE and UPDATE|
|5|FK_INVENTORY_TRANSACTION_OPERATOR|OPERATOR|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|6|FK_INVENTORY_TRANSACTION_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |INVENTORY_TRANSACTION_TYPE_DATA| TRANSACTION_TYPE|- |
|2 |MATERIAL_DATA| MATERIAL|- |
|3 |WAREHOUSE_DATA| WAREHOUSE|- |
|4 |EMPLOYEE_DATA| OPERATOR|- |
|5 |MERCHANT_DATA| MERCHANT|- |






 
### Table SHIPMENT_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|SHIPMENT_NUMBER|Shipment Number|VARCHAR(100)|SHP2024001 |
|3|PURCHASE_ORDER|Purchase Order|BIGINT|1 |
|4|CARRIER|Carrier|VARCHAR(100)|顺丰快递 |
|5|TRACKING_NUMBER|Tracking Number|VARCHAR(100)|SF123456789 |
|6|STATUS|Status|BIGINT|1 |
|7|SHIPMENT_DATE|Shipment Date|DATE|2024-10-16 |
|8|ESTIMATED_ARRIVAL_DATE|Estimated Arrival Date|DATE|2024-10-18 |
|9|MERCHANT|Merchant|BIGINT|1 |
|10|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|11|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_SHIPMENT_ID|ID|PRIMARY KEY||
|2|PK_SHIPMENT_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_SHIPMENT_PURCHASE_ORDER|PURCHASE_ORDER|INDEX||
|4|IDX_SHIPMENT_STATUS|STATUS|INDEX||
|5|IDX_SHIPMENT_MERCHANT|MERCHANT|INDEX||
|6|IDX_SHIPMENT_SHIPMENT_DATE|SHIPMENT_DATE|INDEX||
|7|IDX_SHIPMENT_ESTIMATED_ARRIVAL_DATE|ESTIMATED_ARRIVAL_DATE|INDEX||
|8|IDX_SHIPMENT_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_SHIPMENT_ID|ID|-|-|PRIMARY KEY|
|2|FK_SHIPMENT_PURCHASE_ORDER|PURCHASE_ORDER|PURCHASE_ORDER_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_SHIPMENT_STATUS|STATUS|DELIVERY_STATUS_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_SHIPMENT_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |PURCHASE_ORDER_DATA| PURCHASE_ORDER|- |
|2 |DELIVERY_STATUS_DATA| STATUS|- |
|3 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |RECEIVING_NOTE_DATA| SHIPMENT|- |
|2 |TRANSPORTATION_COST_DATA| SHIPMENT|- |






 
### Table RECEIVING_NOTE_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|RECEIVING_NUMBER|Receiving Number|VARCHAR(100)|RN2024001 |
|3|SHIPMENT|Shipment|BIGINT|1 |
|4|PURCHASE_ORDER|Purchase Order|BIGINT|1 |
|5|RECEIVING_DATE|Receiving Date|DATE|2024-10-18 |
|6|RECEIVER|Receiver|BIGINT|1 |
|7|MERCHANT|Merchant|BIGINT|1 |
|8|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|9|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_RECEIVING_NOTE_ID|ID|PRIMARY KEY||
|2|PK_RECEIVING_NOTE_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_RECEIVING_NOTE_SHIPMENT|SHIPMENT|INDEX||
|4|IDX_RECEIVING_NOTE_PURCHASE_ORDER|PURCHASE_ORDER|INDEX||
|5|IDX_RECEIVING_NOTE_RECEIVER|RECEIVER|INDEX||
|6|IDX_RECEIVING_NOTE_MERCHANT|MERCHANT|INDEX||
|7|IDX_RECEIVING_NOTE_RECEIVING_DATE|RECEIVING_DATE|INDEX||
|8|IDX_RECEIVING_NOTE_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_RECEIVING_NOTE_ID|ID|-|-|PRIMARY KEY|
|2|FK_RECEIVING_NOTE_SHIPMENT|SHIPMENT|SHIPMENT_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_RECEIVING_NOTE_PURCHASE_ORDER|PURCHASE_ORDER|PURCHASE_ORDER_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_RECEIVING_NOTE_RECEIVER|RECEIVER|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|5|FK_RECEIVING_NOTE_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |SHIPMENT_DATA| SHIPMENT|- |
|2 |PURCHASE_ORDER_DATA| PURCHASE_ORDER|- |
|3 |EMPLOYEE_DATA| RECEIVER|- |
|4 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |RECEIVING_ITEM_DATA| RECEIVING_NOTE|- |
|2 |INSPECTION_REPORT_DATA| RECEIVING_NOTE|- |






 
### Table RECEIVING_ITEM_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|RECEIVING_NOTE|Receiving Note|BIGINT|1 |
|3|MATERIAL|Material|BIGINT|1 |
|4|RECEIVED_QUANTITY|Received Quantity|INTEGER|999999999 |
|5|DAMAGED_QUANTITY|Damaged Quantity|INTEGER|999999999 |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_RECEIVING_ITEM_ID|ID|PRIMARY KEY||
|2|PK_RECEIVING_ITEM_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_RECEIVING_ITEM_RECEIVING_NOTE|RECEIVING_NOTE|INDEX||
|4|IDX_RECEIVING_ITEM_MATERIAL|MATERIAL|INDEX||
|5|IDX_RECEIVING_ITEM_MERCHANT|MERCHANT|INDEX||
|6|IDX_RECEIVING_ITEM_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_RECEIVING_ITEM_ID|ID|-|-|PRIMARY KEY|
|2|FK_RECEIVING_ITEM_RECEIVING_NOTE|RECEIVING_NOTE|RECEIVING_NOTE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_RECEIVING_ITEM_MATERIAL|MATERIAL|MATERIAL_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_RECEIVING_ITEM_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |RECEIVING_NOTE_DATA| RECEIVING_NOTE|- |
|2 |MATERIAL_DATA| MATERIAL|- |
|3 |MERCHANT_DATA| MERCHANT|- |






 
### Table INVOICE_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|INVOICE_NUMBER|Invoice Number|VARCHAR(100)|INV2024001 |
|3|PURCHASE_ORDER|Purchase Order|BIGINT|1 |
|4|SUPPLIER|Supplier|BIGINT|1 |
|5|TOTAL_AMOUNT|Total Amount|NUMERIC(19,7)|99999999.99 |
|6|CURRENCY|Currency|BIGINT|1 |
|7|INVOICE_DATE|Invoice Date|DATE|2024-10-18 |
|8|STATUS|Status|BIGINT|1 |
|9|MERCHANT|Merchant|BIGINT|1 |
|10|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|11|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_INVOICE_ID|ID|PRIMARY KEY||
|2|PK_INVOICE_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_INVOICE_PURCHASE_ORDER|PURCHASE_ORDER|INDEX||
|4|IDX_INVOICE_SUPPLIER|SUPPLIER|INDEX||
|5|IDX_INVOICE_CURRENCY|CURRENCY|INDEX||
|6|IDX_INVOICE_STATUS|STATUS|INDEX||
|7|IDX_INVOICE_MERCHANT|MERCHANT|INDEX||
|8|IDX_INVOICE_INVOICE_DATE|INVOICE_DATE|INDEX||
|9|IDX_INVOICE_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_INVOICE_ID|ID|-|-|PRIMARY KEY|
|2|FK_INVOICE_PURCHASE_ORDER|PURCHASE_ORDER|PURCHASE_ORDER_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_INVOICE_SUPPLIER|SUPPLIER|SUPPLIER_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_INVOICE_CURRENCY|CURRENCY|CURRENCY_TYPE_DATA|ID|CASCADE ON DELETE and UPDATE|
|5|FK_INVOICE_STATUS|STATUS|PAYMENT_STATUS_DATA|ID|CASCADE ON DELETE and UPDATE|
|6|FK_INVOICE_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |PURCHASE_ORDER_DATA| PURCHASE_ORDER|- |
|2 |SUPPLIER_DATA| SUPPLIER|- |
|3 |CURRENCY_TYPE_DATA| CURRENCY|- |
|4 |PAYMENT_STATUS_DATA| STATUS|- |
|5 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |PAYMENT_RECORD_DATA| INVOICE|- |
|2 |INVOICE_ITEM_DATA| INVOICE|- |






 
### Table PAYMENT_RECORD_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|INVOICE|Invoice|BIGINT|1 |
|3|PAYMENT_AMOUNT|Payment Amount|NUMERIC(19,7)|99999999.99 |
|4|PAYMENT_DATE|Payment Date|DATE|2024-10-20 |
|5|PAYMENT_METHOD|Payment Method|VARCHAR(100)|银行转账 |
|6|PAYER|Payer|BIGINT|1 |
|7|MERCHANT|Merchant|BIGINT|1 |
|8|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|9|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_PAYMENT_RECORD_ID|ID|PRIMARY KEY||
|2|PK_PAYMENT_RECORD_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_PAYMENT_RECORD_INVOICE|INVOICE|INDEX||
|4|IDX_PAYMENT_RECORD_PAYER|PAYER|INDEX||
|5|IDX_PAYMENT_RECORD_MERCHANT|MERCHANT|INDEX||
|6|IDX_PAYMENT_RECORD_PAYMENT_DATE|PAYMENT_DATE|INDEX||
|7|IDX_PAYMENT_RECORD_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_PAYMENT_RECORD_ID|ID|-|-|PRIMARY KEY|
|2|FK_PAYMENT_RECORD_INVOICE|INVOICE|INVOICE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_PAYMENT_RECORD_PAYER|PAYER|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_PAYMENT_RECORD_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |INVOICE_DATA| INVOICE|- |
|2 |EMPLOYEE_DATA| PAYER|- |
|3 |MERCHANT_DATA| MERCHANT|- |






 
### Table EXPENSE_REPORT_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|REPORT_NUMBER|Report Number|VARCHAR(100)|EXP2024Q4 |
|3|REPORT_PERIOD|Report Period|VARCHAR(100)|2024Q4 |
|4|TOTAL_AMOUNT|Total Amount|NUMERIC(19,7)|99999999.99 |
|5|STATUS|Status|VARCHAR(100)|已完成 |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_EXPENSE_REPORT_ID|ID|PRIMARY KEY||
|2|PK_EXPENSE_REPORT_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_EXPENSE_REPORT_MERCHANT|MERCHANT|INDEX||
|4|IDX_EXPENSE_REPORT_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_EXPENSE_REPORT_ID|ID|-|-|PRIMARY KEY|
|2|FK_EXPENSE_REPORT_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |






 
### Table FINANCIAL_STATEMENT_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|STATEMENT_TYPE|Statement Type|VARCHAR(100)|损益表 |
|3|REPORT_DATE|Report Date|DATE|2024-10-25 |
|4|TOTAL_REVENUE|Total Revenue|NUMERIC(19,7)|99999999.99 |
|5|TOTAL_COST|Total Cost|NUMERIC(19,7)|99999999.99 |
|6|NET_PROFIT|Net Profit|NUMERIC(19,7)|99999999.99 |
|7|MERCHANT|Merchant|BIGINT|1 |
|8|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|9|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_FINANCIAL_STATEMENT_ID|ID|PRIMARY KEY||
|2|PK_FINANCIAL_STATEMENT_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_FINANCIAL_STATEMENT_MERCHANT|MERCHANT|INDEX||
|4|IDX_FINANCIAL_STATEMENT_REPORT_DATE|REPORT_DATE|INDEX||
|5|IDX_FINANCIAL_STATEMENT_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_FINANCIAL_STATEMENT_ID|ID|-|-|PRIMARY KEY|
|2|FK_FINANCIAL_STATEMENT_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |






 
### Table DEMAND_FORECAST_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|MATERIAL|Material|BIGINT|1 |
|3|FORECAST_PERIOD|Forecast Period|VARCHAR(100)|2025年第一季度 |
|4|FORECAST_QUANTITY|Forecast Quantity|INTEGER|999999999 |
|5|\"METHOD\"|Method|BIGINT|1 |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_DEMAND_FORECAST_ID|ID|PRIMARY KEY||
|2|PK_DEMAND_FORECAST_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_DEMAND_FORECAST_MATERIAL|MATERIAL|INDEX||
|4|IDX_DEMAND_FORECAST_\"METHOD\"|\"METHOD\"|INDEX||
|5|IDX_DEMAND_FORECAST_MERCHANT|MERCHANT|INDEX||
|6|IDX_DEMAND_FORECAST_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_DEMAND_FORECAST_ID|ID|-|-|PRIMARY KEY|
|2|FK_DEMAND_FORECAST_MATERIAL|MATERIAL|MATERIAL_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_DEMAND_FORECAST_\"METHOD\"|\"METHOD\"|DEMAND_FORECAST_METHOD_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_DEMAND_FORECAST_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MATERIAL_DATA| MATERIAL|- |
|2 |DEMAND_FORECAST_METHOD_DATA| \"METHOD\"|- |
|3 |MERCHANT_DATA| MERCHANT|- |






 
### Table SALES_ORDER_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|ORDER_NUMBER|Order Number|VARCHAR(100)|SO2024001 |
|3|CUSTOMER|Customer|VARCHAR(100)|北京创新科技有限公司 |
|4|ORDER_DATE|Order Date|DATE|2024-10-15 |
|5|TOTAL_AMOUNT|Total Amount|NUMERIC(19,7)|99999999.99 |
|6|STATUS|Status|BIGINT|1 |
|7|MERCHANT|Merchant|BIGINT|1 |
|8|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|9|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_SALES_ORDER_ID|ID|PRIMARY KEY||
|2|PK_SALES_ORDER_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_SALES_ORDER_STATUS|STATUS|INDEX||
|4|IDX_SALES_ORDER_MERCHANT|MERCHANT|INDEX||
|5|IDX_SALES_ORDER_ORDER_DATE|ORDER_DATE|INDEX||
|6|IDX_SALES_ORDER_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_SALES_ORDER_ID|ID|-|-|PRIMARY KEY|
|2|FK_SALES_ORDER_STATUS|STATUS|ORDER_STATUS_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_SALES_ORDER_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |ORDER_STATUS_DATA| STATUS|- |
|2 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |SALES_ORDER_ITEM_DATA| SALES_ORDER|- |






 
### Table SALES_ORDER_ITEM_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|SALES_ORDER|Sales Order|BIGINT|1 |
|3|MATERIAL|Material|BIGINT|1 |
|4|QUANTITY|Quantity|INTEGER|999999999 |
|5|UNIT_PRICE|Unit Price|NUMERIC(19,7)|99999999.99 |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_SALES_ORDER_ITEM_ID|ID|PRIMARY KEY||
|2|PK_SALES_ORDER_ITEM_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_SALES_ORDER_ITEM_SALES_ORDER|SALES_ORDER|INDEX||
|4|IDX_SALES_ORDER_ITEM_MATERIAL|MATERIAL|INDEX||
|5|IDX_SALES_ORDER_ITEM_MERCHANT|MERCHANT|INDEX||
|6|IDX_SALES_ORDER_ITEM_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_SALES_ORDER_ITEM_ID|ID|-|-|PRIMARY KEY|
|2|FK_SALES_ORDER_ITEM_SALES_ORDER|SALES_ORDER|SALES_ORDER_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_SALES_ORDER_ITEM_MATERIAL|MATERIAL|MATERIAL_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_SALES_ORDER_ITEM_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |SALES_ORDER_DATA| SALES_ORDER|- |
|2 |MATERIAL_DATA| MATERIAL|- |
|3 |MERCHANT_DATA| MERCHANT|- |






 
### Table QUALITY_CONTROL_PLAN_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|MATERIAL|Material|BIGINT|1 |
|3|PLAN_NAME|Plan Name|VARCHAR(100)|不锈钢板质检计划 |
|4|INSPECTION_FREQUENCY|Inspection Frequency|VARCHAR(100)|每月一次 |
|5|RESPONSIBLE_PERSON|Responsible Person|BIGINT|1 |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_QUALITY_CONTROL_PLAN_ID|ID|PRIMARY KEY||
|2|PK_QUALITY_CONTROL_PLAN_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_QUALITY_CONTROL_PLAN_MATERIAL|MATERIAL|INDEX||
|4|IDX_QUALITY_CONTROL_PLAN_RESPONSIBLE_PERSON|RESPONSIBLE_PERSON|INDEX||
|5|IDX_QUALITY_CONTROL_PLAN_MERCHANT|MERCHANT|INDEX||
|6|IDX_QUALITY_CONTROL_PLAN_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_QUALITY_CONTROL_PLAN_ID|ID|-|-|PRIMARY KEY|
|2|FK_QUALITY_CONTROL_PLAN_MATERIAL|MATERIAL|MATERIAL_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_QUALITY_CONTROL_PLAN_RESPONSIBLE_PERSON|RESPONSIBLE_PERSON|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_QUALITY_CONTROL_PLAN_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MATERIAL_DATA| MATERIAL|- |
|2 |EMPLOYEE_DATA| RESPONSIBLE_PERSON|- |
|3 |MERCHANT_DATA| MERCHANT|- |






 
### Table INSPECTION_REPORT_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|RECEIVING_NOTE|Receiving Note|BIGINT|1 |
|3|MATERIAL|Material|BIGINT|1 |
|4|INSPECTOR|Inspector|BIGINT|1 |
|5|INSPECTION_DATE|Inspection Date|DATE|2024-10-18 |
|6|STATUS|Status|BIGINT|1 |
|7|DETAILS|Details|VARCHAR(100)|表面无划痕，尺寸符合要求 |
|8|MERCHANT|Merchant|BIGINT|1 |
|9|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|10|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_INSPECTION_REPORT_ID|ID|PRIMARY KEY||
|2|PK_INSPECTION_REPORT_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_INSPECTION_REPORT_RECEIVING_NOTE|RECEIVING_NOTE|INDEX||
|4|IDX_INSPECTION_REPORT_MATERIAL|MATERIAL|INDEX||
|5|IDX_INSPECTION_REPORT_INSPECTOR|INSPECTOR|INDEX||
|6|IDX_INSPECTION_REPORT_STATUS|STATUS|INDEX||
|7|IDX_INSPECTION_REPORT_MERCHANT|MERCHANT|INDEX||
|8|IDX_INSPECTION_REPORT_INSPECTION_DATE|INSPECTION_DATE|INDEX||
|9|IDX_INSPECTION_REPORT_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_INSPECTION_REPORT_ID|ID|-|-|PRIMARY KEY|
|2|FK_INSPECTION_REPORT_RECEIVING_NOTE|RECEIVING_NOTE|RECEIVING_NOTE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_INSPECTION_REPORT_MATERIAL|MATERIAL|MATERIAL_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_INSPECTION_REPORT_INSPECTOR|INSPECTOR|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|5|FK_INSPECTION_REPORT_STATUS|STATUS|QUALITY_CHECK_STATUS_DATA|ID|CASCADE ON DELETE and UPDATE|
|6|FK_INSPECTION_REPORT_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |RECEIVING_NOTE_DATA| RECEIVING_NOTE|- |
|2 |MATERIAL_DATA| MATERIAL|- |
|3 |EMPLOYEE_DATA| INSPECTOR|- |
|4 |QUALITY_CHECK_STATUS_DATA| STATUS|- |
|5 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |NON_CONFORMANCE_REPORT_DATA| INSPECTION_REPORT|- |






 
### Table NON_CONFORMANCE_REPORT_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|INSPECTION_REPORT|Inspection Report|BIGINT|1 |
|3|NON_CONFORMANCE_ITEM|Non Conformance Item|BIGINT|1 |
|4|REPORTED_QUANTITY|Reported Quantity|INTEGER|999999999 |
|5|DISPOSITION|Disposition|VARCHAR(100)|退回供应商 |
|6|REPORTED_BY|Reported By|BIGINT|1 |
|7|MERCHANT|Merchant|BIGINT|1 |
|8|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|9|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_NON_CONFORMANCE_REPORT_ID|ID|PRIMARY KEY||
|2|PK_NON_CONFORMANCE_REPORT_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_NON_CONFORMANCE_REPORT_INSPECTION_REPORT|INSPECTION_REPORT|INDEX||
|4|IDX_NON_CONFORMANCE_REPORT_NON_CONFORMANCE_ITEM|NON_CONFORMANCE_ITEM|INDEX||
|5|IDX_NON_CONFORMANCE_REPORT_REPORTED_BY|REPORTED_BY|INDEX||
|6|IDX_NON_CONFORMANCE_REPORT_MERCHANT|MERCHANT|INDEX||
|7|IDX_NON_CONFORMANCE_REPORT_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_NON_CONFORMANCE_REPORT_ID|ID|-|-|PRIMARY KEY|
|2|FK_NON_CONFORMANCE_REPORT_INSPECTION_REPORT|INSPECTION_REPORT|INSPECTION_REPORT_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_NON_CONFORMANCE_REPORT_NON_CONFORMANCE_ITEM|NON_CONFORMANCE_ITEM|MATERIAL_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_NON_CONFORMANCE_REPORT_REPORTED_BY|REPORTED_BY|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|5|FK_NON_CONFORMANCE_REPORT_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |INSPECTION_REPORT_DATA| INSPECTION_REPORT|- |
|2 |MATERIAL_DATA| NON_CONFORMANCE_ITEM|- |
|3 |EMPLOYEE_DATA| REPORTED_BY|- |
|4 |MERCHANT_DATA| MERCHANT|- |






 
### Table CONTRACT_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|CONTRACT_NUMBER|Contract Number|VARCHAR(100)|SCM_C2024001 |
|3|SUPPLIER|Supplier|BIGINT|1 |
|4|START_DATE|Start Date|DATE|2024-10-15 |
|5|END_DATE|End Date|DATE|2025-10-14 |
|6|STATUS|Status|VARCHAR(100)|有效 |
|7|LEGAL_REVIEWER|Legal Reviewer|BIGINT|1 |
|8|MERCHANT|Merchant|BIGINT|1 |
|9|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|10|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_CONTRACT_ID|ID|PRIMARY KEY||
|2|PK_CONTRACT_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_CONTRACT_SUPPLIER|SUPPLIER|INDEX||
|4|IDX_CONTRACT_LEGAL_REVIEWER|LEGAL_REVIEWER|INDEX||
|5|IDX_CONTRACT_MERCHANT|MERCHANT|INDEX||
|6|IDX_CONTRACT_START_DATE|START_DATE|INDEX||
|7|IDX_CONTRACT_END_DATE|END_DATE|INDEX||
|8|IDX_CONTRACT_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_CONTRACT_ID|ID|-|-|PRIMARY KEY|
|2|FK_CONTRACT_SUPPLIER|SUPPLIER|SUPPLIER_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_CONTRACT_LEGAL_REVIEWER|LEGAL_REVIEWER|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_CONTRACT_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |SUPPLIER_DATA| SUPPLIER|- |
|2 |EMPLOYEE_DATA| LEGAL_REVIEWER|- |
|3 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |LEGAL_DOCUMENT_DATA| RELATED_CONTRACT|- |
|2 |DISPUTE_DATA| RELATED_CONTRACT|- |






 
### Table LEGAL_DOCUMENT_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|DOCUMENT_NAME|Document Name|VARCHAR(100)|采购合同补充协议 |
|3|DOCUMENT_TYPE|Document Type|BIGINT|1 |
|4|RELATED_CONTRACT|Related Contract|BIGINT|1 |
|5|MERCHANT|Merchant|BIGINT|1 |
|6|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|7|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_LEGAL_DOCUMENT_ID|ID|PRIMARY KEY||
|2|PK_LEGAL_DOCUMENT_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_LEGAL_DOCUMENT_DOCUMENT_TYPE|DOCUMENT_TYPE|INDEX||
|4|IDX_LEGAL_DOCUMENT_RELATED_CONTRACT|RELATED_CONTRACT|INDEX||
|5|IDX_LEGAL_DOCUMENT_MERCHANT|MERCHANT|INDEX||
|6|IDX_LEGAL_DOCUMENT_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_LEGAL_DOCUMENT_ID|ID|-|-|PRIMARY KEY|
|2|FK_LEGAL_DOCUMENT_DOCUMENT_TYPE|DOCUMENT_TYPE|LEGAL_DOCUMENT_TYPE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_LEGAL_DOCUMENT_RELATED_CONTRACT|RELATED_CONTRACT|CONTRACT_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_LEGAL_DOCUMENT_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |LEGAL_DOCUMENT_TYPE_DATA| DOCUMENT_TYPE|- |
|2 |CONTRACT_DATA| RELATED_CONTRACT|- |
|3 |MERCHANT_DATA| MERCHANT|- |






 
### Table COMPLIANCE_CHECK_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|CHECK_DATE|Check Date|DATE|2024-10-25 |
|3|CHECKED_BY|Checked By|BIGINT|1 |
|4|\"RESULT\"|Result|VARCHAR(100)|通过 |
|5|RISK_LEVEL|Risk Level|BIGINT|1 |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_COMPLIANCE_CHECK_ID|ID|PRIMARY KEY||
|2|PK_COMPLIANCE_CHECK_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_COMPLIANCE_CHECK_CHECKED_BY|CHECKED_BY|INDEX||
|4|IDX_COMPLIANCE_CHECK_RISK_LEVEL|RISK_LEVEL|INDEX||
|5|IDX_COMPLIANCE_CHECK_MERCHANT|MERCHANT|INDEX||
|6|IDX_COMPLIANCE_CHECK_CHECK_DATE|CHECK_DATE|INDEX||
|7|IDX_COMPLIANCE_CHECK_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_COMPLIANCE_CHECK_ID|ID|-|-|PRIMARY KEY|
|2|FK_COMPLIANCE_CHECK_CHECKED_BY|CHECKED_BY|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_COMPLIANCE_CHECK_RISK_LEVEL|RISK_LEVEL|RISK_LEVEL_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_COMPLIANCE_CHECK_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |EMPLOYEE_DATA| CHECKED_BY|- |
|2 |RISK_LEVEL_DATA| RISK_LEVEL|- |
|3 |MERCHANT_DATA| MERCHANT|- |






 
### Table TASK_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|TASK_NAME|Task Name|VARCHAR(100)|审核采购订单 |
|3|ASSIGNED_TO|Assigned To|BIGINT|1 |
|4|DUE_DATE|Due Date|DATE|2024-10-16 |
|5|STATUS|Status|VARCHAR(100)|待办 |
|6|RELATED_OBJECT_TYPE|Related Object Type|VARCHAR(100)|purchase_order |
|7|MERCHANT|Merchant|BIGINT|1 |
|8|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|9|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_TASK_ID|ID|PRIMARY KEY||
|2|PK_TASK_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_TASK_ASSIGNED_TO|ASSIGNED_TO|INDEX||
|4|IDX_TASK_MERCHANT|MERCHANT|INDEX||
|5|IDX_TASK_DUE_DATE|DUE_DATE|INDEX||
|6|IDX_TASK_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_TASK_ID|ID|-|-|PRIMARY KEY|
|2|FK_TASK_ASSIGNED_TO|ASSIGNED_TO|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_TASK_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |EMPLOYEE_DATA| ASSIGNED_TO|- |
|2 |MERCHANT_DATA| MERCHANT|- |






 
### Table NOTIFICATION_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|RECIPIENT|Recipient|BIGINT|1 |
|3|MESSAGE|Message|VARCHAR(100)|新的采购订单已提交，请及时处理 |
|4|NOTIFICATION_DATE|Notification Date|DATE|2024-10-15 |
|5|READ_STATUS|Read Status|VARCHAR(100)|未读 |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_NOTIFICATION_ID|ID|PRIMARY KEY||
|2|PK_NOTIFICATION_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_NOTIFICATION_RECIPIENT|RECIPIENT|INDEX||
|4|IDX_NOTIFICATION_MERCHANT|MERCHANT|INDEX||
|5|IDX_NOTIFICATION_NOTIFICATION_DATE|NOTIFICATION_DATE|INDEX||
|6|IDX_NOTIFICATION_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_NOTIFICATION_ID|ID|-|-|PRIMARY KEY|
|2|FK_NOTIFICATION_RECIPIENT|RECIPIENT|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_NOTIFICATION_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |EMPLOYEE_DATA| RECIPIENT|- |
|2 |MERCHANT_DATA| MERCHANT|- |






 
### Table REPORT_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|REPORT_NAME|Report Name|VARCHAR(100)|月度库存报告 |
|3|GENERATOR|Generator|BIGINT|1 |
|4|GENERATE_DATE|Generate Date|DATE|2024-10-31 |
|5|FILE_URL|File Url|VARCHAR(100)|//example.com/report/123.pdf |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_REPORT_ID|ID|PRIMARY KEY||
|2|PK_REPORT_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_REPORT_GENERATOR|GENERATOR|INDEX||
|4|IDX_REPORT_MERCHANT|MERCHANT|INDEX||
|5|IDX_REPORT_GENERATE_DATE|GENERATE_DATE|INDEX||
|6|IDX_REPORT_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_REPORT_ID|ID|-|-|PRIMARY KEY|
|2|FK_REPORT_GENERATOR|GENERATOR|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_REPORT_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |EMPLOYEE_DATA| GENERATOR|- |
|2 |MERCHANT_DATA| MERCHANT|- |






 
### Table TRANSPORTATION_ROUTE_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|ROUTE_NAME|Route Name|VARCHAR(100)|上海-北京 |
|3|ORIGIN_ADDRESS|Origin Address|VARCHAR(100)|上海市 |
|4|DESTINATION_ADDRESS|Destination Address|VARCHAR(100)|北京市 |
|5|DISTANCE|Distance|NUMERIC(19,7)|1200.5 |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_TRANSPORTATION_ROUTE_ID|ID|PRIMARY KEY||
|2|PK_TRANSPORTATION_ROUTE_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_TRANSPORTATION_ROUTE_MERCHANT|MERCHANT|INDEX||
|4|IDX_TRANSPORTATION_ROUTE_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_TRANSPORTATION_ROUTE_ID|ID|-|-|PRIMARY KEY|
|2|FK_TRANSPORTATION_ROUTE_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |ROUTE_LEG_DATA| TRANSPORTATION_ROUTE|- |






 
### Table ROUTE_LEG_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|TRANSPORTATION_ROUTE|Transportation Route|BIGINT|1 |
|3|START_LOCATION|Start Location|VARCHAR(100)|上海市 |
|4|END_LOCATION|End Location|VARCHAR(100)|北京市 |
|5|MODE_OF_TRANSPORT|Mode Of Transport|VARCHAR(100)|公路 |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_ROUTE_LEG_ID|ID|PRIMARY KEY||
|2|PK_ROUTE_LEG_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_ROUTE_LEG_TRANSPORTATION_ROUTE|TRANSPORTATION_ROUTE|INDEX||
|4|IDX_ROUTE_LEG_MERCHANT|MERCHANT|INDEX||
|5|IDX_ROUTE_LEG_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_ROUTE_LEG_ID|ID|-|-|PRIMARY KEY|
|2|FK_ROUTE_LEG_TRANSPORTATION_ROUTE|TRANSPORTATION_ROUTE|TRANSPORTATION_ROUTE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_ROUTE_LEG_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |TRANSPORTATION_ROUTE_DATA| TRANSPORTATION_ROUTE|- |
|2 |MERCHANT_DATA| MERCHANT|- |






 
### Table TRUCK_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|TRUCK_NUMBER|Truck Number|VARCHAR(100)|沪A88888 |
|3|DRIVER|Driver|VARCHAR(100)|张师傅 |
|4|CAPACITY|Capacity|INTEGER|20 |
|5|STATUS|Status|VARCHAR(100)|在途 |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_TRUCK_ID|ID|PRIMARY KEY||
|2|PK_TRUCK_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_TRUCK_MERCHANT|MERCHANT|INDEX||
|4|IDX_TRUCK_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_TRUCK_ID|ID|-|-|PRIMARY KEY|
|2|FK_TRUCK_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |






 
### Table CONTAINER_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|CONTAINER_NUMBER|Container Number|VARCHAR(100)|CTN12345 |
|3|SIZE|Size|VARCHAR(100)|40英尺 |
|4|STATUS|Status|VARCHAR(100)|已装载 |
|5|MERCHANT|Merchant|BIGINT|1 |
|6|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|7|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_CONTAINER_ID|ID|PRIMARY KEY||
|2|PK_CONTAINER_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_CONTAINER_MERCHANT|MERCHANT|INDEX||
|4|IDX_CONTAINER_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_CONTAINER_ID|ID|-|-|PRIMARY KEY|
|2|FK_CONTAINER_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |






 
### Table CONSIGNMENT_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|CONSIGNMENT_NUMBER|Consignment Number|VARCHAR(100)|CSG2024001 |
|3|SHIPPER|Shipper|VARCHAR(100)|供应商A |
|4|CONSIGNEE|Consignee|VARCHAR(100)|客户B |
|5|MERCHANT|Merchant|BIGINT|1 |
|6|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|7|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_CONSIGNMENT_ID|ID|PRIMARY KEY||
|2|PK_CONSIGNMENT_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_CONSIGNMENT_MERCHANT|MERCHANT|INDEX||
|4|IDX_CONSIGNMENT_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_CONSIGNMENT_ID|ID|-|-|PRIMARY KEY|
|2|FK_CONSIGNMENT_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |






 
### Table STOCK_TAKE_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|STOCK_TAKE_NUMBER|Stock Take Number|VARCHAR(100)|STK202410 |
|3|WAREHOUSE|Warehouse|BIGINT|1 |
|4|STOCK_TAKE_DATE|Stock Take Date|DATE|2024-10-31 |
|5|AUDITOR|Auditor|BIGINT|1 |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_STOCK_TAKE_ID|ID|PRIMARY KEY||
|2|PK_STOCK_TAKE_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_STOCK_TAKE_WAREHOUSE|WAREHOUSE|INDEX||
|4|IDX_STOCK_TAKE_AUDITOR|AUDITOR|INDEX||
|5|IDX_STOCK_TAKE_MERCHANT|MERCHANT|INDEX||
|6|IDX_STOCK_TAKE_STOCK_TAKE_DATE|STOCK_TAKE_DATE|INDEX||
|7|IDX_STOCK_TAKE_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_STOCK_TAKE_ID|ID|-|-|PRIMARY KEY|
|2|FK_STOCK_TAKE_WAREHOUSE|WAREHOUSE|WAREHOUSE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_STOCK_TAKE_AUDITOR|AUDITOR|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_STOCK_TAKE_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |WAREHOUSE_DATA| WAREHOUSE|- |
|2 |EMPLOYEE_DATA| AUDITOR|- |
|3 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |STOCK_TAKE_ITEM_DATA| STOCK_TAKE|- |






 
### Table STOCK_TAKE_ITEM_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|STOCK_TAKE|Stock Take|BIGINT|1 |
|3|MATERIAL|Material|BIGINT|1 |
|4|SYSTEM_QUANTITY|System Quantity|INTEGER|999999999 |
|5|COUNTED_QUANTITY|Counted Quantity|INTEGER|999999999 |
|6|DIFFERENCE|Difference|INTEGER|999999999 |
|7|MERCHANT|Merchant|BIGINT|1 |
|8|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|9|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_STOCK_TAKE_ITEM_ID|ID|PRIMARY KEY||
|2|PK_STOCK_TAKE_ITEM_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_STOCK_TAKE_ITEM_STOCK_TAKE|STOCK_TAKE|INDEX||
|4|IDX_STOCK_TAKE_ITEM_MATERIAL|MATERIAL|INDEX||
|5|IDX_STOCK_TAKE_ITEM_MERCHANT|MERCHANT|INDEX||
|6|IDX_STOCK_TAKE_ITEM_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_STOCK_TAKE_ITEM_ID|ID|-|-|PRIMARY KEY|
|2|FK_STOCK_TAKE_ITEM_STOCK_TAKE|STOCK_TAKE|STOCK_TAKE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_STOCK_TAKE_ITEM_MATERIAL|MATERIAL|MATERIAL_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_STOCK_TAKE_ITEM_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |STOCK_TAKE_DATA| STOCK_TAKE|- |
|2 |MATERIAL_DATA| MATERIAL|- |
|3 |MERCHANT_DATA| MERCHANT|- |






 
### Table MATERIAL_CATEGORY_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(100)|金属材料 |
|3|CODE|Code|VARCHAR(100)|METAL |
|4|\"DESCRIPTION\"|Description|VARCHAR(100)|用于建筑和制造的金属物料 |
|5|MERCHANT|Merchant|BIGINT|1 |
|6|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|7|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_MATERIAL_CATEGORY_ID|ID|PRIMARY KEY||
|2|PK_MATERIAL_CATEGORY_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_MATERIAL_CATEGORY_MERCHANT|MERCHANT|INDEX||
|4|IDX_MATERIAL_CATEGORY_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_MATERIAL_CATEGORY_ID|ID|-|-|PRIMARY KEY|
|2|FK_MATERIAL_CATEGORY_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |






 
### Table CUSTOMER_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|CUSTOMER_NAME|Customer Name|VARCHAR(100)|北京创新科技有限公司 |
|3|CONTACT_PERSON|Contact Person|VARCHAR(100)|赵敏 |
|4|PHONE_NUMBER|Phone Number|INTEGER|18812345678 |
|5|MERCHANT|Merchant|BIGINT|1 |
|6|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|7|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_CUSTOMER_ID|ID|PRIMARY KEY||
|2|PK_CUSTOMER_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_CUSTOMER_MERCHANT|MERCHANT|INDEX||
|4|IDX_CUSTOMER_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_CUSTOMER_ID|ID|-|-|PRIMARY KEY|
|2|FK_CUSTOMER_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |CUSTOMER_ADDRESS_DATA| CUSTOMER|- |
|2 |CUSTOMER_FEEDBACK_DATA| CUSTOMER|- |
|3 |CUSTOMER_SERVICE_CASE_DATA| CUSTOMER|- |
|4 |SALES_PIPELINE_DATA| CUSTOMER|- |






 
### Table CUSTOMER_ADDRESS_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|CUSTOMER|Customer|BIGINT|1 |
|3|ADDRESS_LINE_1|Address Line 1|VARCHAR(100)|北京市朝阳区 |
|4|CITY|City|VARCHAR(100)|北京 |
|5|POSTCODE|Postcode|INTEGER|100000 |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_CUSTOMER_ADDRESS_ID|ID|PRIMARY KEY||
|2|PK_CUSTOMER_ADDRESS_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_CUSTOMER_ADDRESS_CUSTOMER|CUSTOMER|INDEX||
|4|IDX_CUSTOMER_ADDRESS_MERCHANT|MERCHANT|INDEX||
|5|IDX_CUSTOMER_ADDRESS_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_CUSTOMER_ADDRESS_ID|ID|-|-|PRIMARY KEY|
|2|FK_CUSTOMER_ADDRESS_CUSTOMER|CUSTOMER|CUSTOMER_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_CUSTOMER_ADDRESS_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |CUSTOMER_DATA| CUSTOMER|- |
|2 |MERCHANT_DATA| MERCHANT|- |






 
### Table SALES_FORECAST_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|PRODUCT|Product|VARCHAR(100)|智能家居控制器 |
|3|FORECAST_PERIOD|Forecast Period|VARCHAR(100)|2025年第一季度 |
|4|FORECAST_VOLUME|Forecast Volume|INTEGER|999999999 |
|5|MERCHANT|Merchant|BIGINT|1 |
|6|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|7|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_SALES_FORECAST_ID|ID|PRIMARY KEY||
|2|PK_SALES_FORECAST_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_SALES_FORECAST_MERCHANT|MERCHANT|INDEX||
|4|IDX_SALES_FORECAST_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_SALES_FORECAST_ID|ID|-|-|PRIMARY KEY|
|2|FK_SALES_FORECAST_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |






 
### Table PRODUCT_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|PRODUCT_NAME|Product Name|VARCHAR(100)|智能家居控制器 |
|3|PRODUCT_CODE|Product Code|VARCHAR(100)|SMART_HOME_C001 |
|4|\"DESCRIPTION\"|Description|VARCHAR(100)|用于控制家庭设备的智能控制器 |
|5|MERCHANT|Merchant|BIGINT|1 |
|6|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|7|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_PRODUCT_ID|ID|PRIMARY KEY||
|2|PK_PRODUCT_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_PRODUCT_MERCHANT|MERCHANT|INDEX||
|4|IDX_PRODUCT_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_PRODUCT_ID|ID|-|-|PRIMARY KEY|
|2|FK_PRODUCT_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |BILL_OF_MATERIAL_DATA| PRODUCT|- |






 
### Table BILL_OF_MATERIAL_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|PRODUCT|Product|BIGINT|1 |
|3|MERCHANT|Merchant|BIGINT|1 |
|4|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|5|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_BILL_OF_MATERIAL_ID|ID|PRIMARY KEY||
|2|PK_BILL_OF_MATERIAL_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_BILL_OF_MATERIAL_PRODUCT|PRODUCT|INDEX||
|4|IDX_BILL_OF_MATERIAL_MERCHANT|MERCHANT|INDEX||
|5|IDX_BILL_OF_MATERIAL_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_BILL_OF_MATERIAL_ID|ID|-|-|PRIMARY KEY|
|2|FK_BILL_OF_MATERIAL_PRODUCT|PRODUCT|PRODUCT_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_BILL_OF_MATERIAL_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |PRODUCT_DATA| PRODUCT|- |
|2 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |BOM_ITEM_DATA| BILL_OF_MATERIAL|- |






 
### Table BOM_ITEM_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|BILL_OF_MATERIAL|Bill Of Material|BIGINT|1 |
|3|MATERIAL|Material|BIGINT|1 |
|4|QUANTITY|Quantity|INTEGER|999999999 |
|5|MERCHANT|Merchant|BIGINT|1 |
|6|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|7|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_BOM_ITEM_ID|ID|PRIMARY KEY||
|2|PK_BOM_ITEM_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_BOM_ITEM_BILL_OF_MATERIAL|BILL_OF_MATERIAL|INDEX||
|4|IDX_BOM_ITEM_MATERIAL|MATERIAL|INDEX||
|5|IDX_BOM_ITEM_MERCHANT|MERCHANT|INDEX||
|6|IDX_BOM_ITEM_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_BOM_ITEM_ID|ID|-|-|PRIMARY KEY|
|2|FK_BOM_ITEM_BILL_OF_MATERIAL|BILL_OF_MATERIAL|BILL_OF_MATERIAL_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_BOM_ITEM_MATERIAL|MATERIAL|MATERIAL_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_BOM_ITEM_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |BILL_OF_MATERIAL_DATA| BILL_OF_MATERIAL|- |
|2 |MATERIAL_DATA| MATERIAL|- |
|3 |MERCHANT_DATA| MERCHANT|- |






 
### Table SUPPLIER_PERFORMANCE_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|SUPPLIER|Supplier|BIGINT|1 |
|3|\"PERIOD\"|Period|VARCHAR(100)|2024Q3 |
|4|ON_TIME_DELIVERY_RATE|On Time Delivery Rate|NUMERIC(19,7)|0.99 |
|5|QUALITY_SCORE|Quality Score|NUMERIC(19,7)|95.5 |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_SUPPLIER_PERFORMANCE_ID|ID|PRIMARY KEY||
|2|PK_SUPPLIER_PERFORMANCE_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_SUPPLIER_PERFORMANCE_SUPPLIER|SUPPLIER|INDEX||
|4|IDX_SUPPLIER_PERFORMANCE_MERCHANT|MERCHANT|INDEX||
|5|IDX_SUPPLIER_PERFORMANCE_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_SUPPLIER_PERFORMANCE_ID|ID|-|-|PRIMARY KEY|
|2|FK_SUPPLIER_PERFORMANCE_SUPPLIER|SUPPLIER|SUPPLIER_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_SUPPLIER_PERFORMANCE_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |SUPPLIER_DATA| SUPPLIER|- |
|2 |MERCHANT_DATA| MERCHANT|- |






 
### Table AUDIT_LOG_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|ACTION_TYPE|Action Type|VARCHAR(100)|修改订单 |
|3|\"USER\"|User|BIGINT|1 |
|4|ACTION_DATE|Action Date|DATE|2024-10-25 |
|5|\"DESCRIPTION\"|Description|VARCHAR(100)|员工李四修改了采购订单PO2024001 |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_AUDIT_LOG_ID|ID|PRIMARY KEY||
|2|PK_AUDIT_LOG_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_AUDIT_LOG_\"USER\"|\"USER\"|INDEX||
|4|IDX_AUDIT_LOG_MERCHANT|MERCHANT|INDEX||
|5|IDX_AUDIT_LOG_ACTION_DATE|ACTION_DATE|INDEX||
|6|IDX_AUDIT_LOG_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_AUDIT_LOG_ID|ID|-|-|PRIMARY KEY|
|2|FK_AUDIT_LOG_\"USER\"|\"USER\"|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_AUDIT_LOG_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |EMPLOYEE_DATA| \"USER\"|- |
|2 |MERCHANT_DATA| MERCHANT|- |






 
### Table USER_GROUP_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|GROUP_NAME|Group Name|VARCHAR(100)|采购经理 |
|3|\"DESCRIPTION\"|Description|VARCHAR(100)|负责采购订单审核 |
|4|MERCHANT|Merchant|BIGINT|1 |
|5|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|6|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_USER_GROUP_ID|ID|PRIMARY KEY||
|2|PK_USER_GROUP_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_USER_GROUP_MERCHANT|MERCHANT|INDEX||
|4|IDX_USER_GROUP_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_USER_GROUP_ID|ID|-|-|PRIMARY KEY|
|2|FK_USER_GROUP_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |






 
### Table PERMISSION_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|PERMISSION_NAME|Permission Name|VARCHAR(100)|审核订单 |
|3|\"DESCRIPTION\"|Description|VARCHAR(100)|允许审核采购订单 |
|4|MERCHANT|Merchant|BIGINT|1 |
|5|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|6|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_PERMISSION_ID|ID|PRIMARY KEY||
|2|PK_PERMISSION_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_PERMISSION_MERCHANT|MERCHANT|INDEX||
|4|IDX_PERMISSION_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_PERMISSION_ID|ID|-|-|PRIMARY KEY|
|2|FK_PERMISSION_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |ROLE_PERMISSION_DATA| PERMISSION|- |






 
### Table ROLE_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|ROLE_NAME|Role Name|VARCHAR(100)|采购专员 |
|3|MERCHANT|Merchant|BIGINT|1 |
|4|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|5|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_ROLE_ID|ID|PRIMARY KEY||
|2|PK_ROLE_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_ROLE_MERCHANT|MERCHANT|INDEX||
|4|IDX_ROLE_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_ROLE_ID|ID|-|-|PRIMARY KEY|
|2|FK_ROLE_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |USER_ROLE_DATA| ROLE|- |
|2 |ROLE_PERMISSION_DATA| ROLE|- |






 
### Table USER_ROLE_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|EMPLOYEE|Employee|BIGINT|1 |
|3|ROLE|Role|BIGINT|1 |
|4|MERCHANT|Merchant|BIGINT|1 |
|5|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|6|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_USER_ROLE_ID|ID|PRIMARY KEY||
|2|PK_USER_ROLE_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_USER_ROLE_EMPLOYEE|EMPLOYEE|INDEX||
|4|IDX_USER_ROLE_ROLE|ROLE|INDEX||
|5|IDX_USER_ROLE_MERCHANT|MERCHANT|INDEX||
|6|IDX_USER_ROLE_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_USER_ROLE_ID|ID|-|-|PRIMARY KEY|
|2|FK_USER_ROLE_EMPLOYEE|EMPLOYEE|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_USER_ROLE_ROLE|ROLE|ROLE_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_USER_ROLE_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |EMPLOYEE_DATA| EMPLOYEE|- |
|2 |ROLE_DATA| ROLE|- |
|3 |MERCHANT_DATA| MERCHANT|- |






 
### Table ROLE_PERMISSION_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|ROLE|Role|BIGINT|1 |
|3|PERMISSION|Permission|BIGINT|1 |
|4|MERCHANT|Merchant|BIGINT|1 |
|5|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|6|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_ROLE_PERMISSION_ID|ID|PRIMARY KEY||
|2|PK_ROLE_PERMISSION_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_ROLE_PERMISSION_ROLE|ROLE|INDEX||
|4|IDX_ROLE_PERMISSION_PERMISSION|PERMISSION|INDEX||
|5|IDX_ROLE_PERMISSION_MERCHANT|MERCHANT|INDEX||
|6|IDX_ROLE_PERMISSION_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_ROLE_PERMISSION_ID|ID|-|-|PRIMARY KEY|
|2|FK_ROLE_PERMISSION_ROLE|ROLE|ROLE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_ROLE_PERMISSION_PERMISSION|PERMISSION|PERMISSION_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_ROLE_PERMISSION_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |ROLE_DATA| ROLE|- |
|2 |PERMISSION_DATA| PERMISSION|- |
|3 |MERCHANT_DATA| MERCHANT|- |






 
### Table SUPPLY_CHAIN_EVENT_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|EVENT_TYPE|Event Type|VARCHAR(100)|发货延迟 |
|3|EVENT_DATE|Event Date|DATE|2024-10-25 |
|4|\"DESCRIPTION\"|Description|VARCHAR(100)|供应商发货延迟 |
|5|MERCHANT|Merchant|BIGINT|1 |
|6|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|7|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_SUPPLY_CHAIN_EVENT_ID|ID|PRIMARY KEY||
|2|PK_SUPPLY_CHAIN_EVENT_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_SUPPLY_CHAIN_EVENT_MERCHANT|MERCHANT|INDEX||
|4|IDX_SUPPLY_CHAIN_EVENT_EVENT_DATE|EVENT_DATE|INDEX||
|5|IDX_SUPPLY_CHAIN_EVENT_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_SUPPLY_CHAIN_EVENT_ID|ID|-|-|PRIMARY KEY|
|2|FK_SUPPLY_CHAIN_EVENT_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |EVENT_LOG_DATA| SUPPLY_CHAIN_EVENT|- |






 
### Table EVENT_LOG_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|SUPPLY_CHAIN_EVENT|Supply Chain Event|BIGINT|1 |
|3|LOG_DATE|Log Date|DATE|2024-10-25 |
|4|LOG_DETAILS|Log Details|VARCHAR(100)|已通知相关人员 |
|5|MERCHANT|Merchant|BIGINT|1 |
|6|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|7|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_EVENT_LOG_ID|ID|PRIMARY KEY||
|2|PK_EVENT_LOG_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_EVENT_LOG_SUPPLY_CHAIN_EVENT|SUPPLY_CHAIN_EVENT|INDEX||
|4|IDX_EVENT_LOG_MERCHANT|MERCHANT|INDEX||
|5|IDX_EVENT_LOG_LOG_DATE|LOG_DATE|INDEX||
|6|IDX_EVENT_LOG_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_EVENT_LOG_ID|ID|-|-|PRIMARY KEY|
|2|FK_EVENT_LOG_SUPPLY_CHAIN_EVENT|SUPPLY_CHAIN_EVENT|SUPPLY_CHAIN_EVENT_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_EVENT_LOG_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |SUPPLY_CHAIN_EVENT_DATA| SUPPLY_CHAIN_EVENT|- |
|2 |MERCHANT_DATA| MERCHANT|- |






 
### Table COST_CENTER_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|COST_CENTER_NAME|Cost Center Name|VARCHAR(100)|采购部门 |
|3|MERCHANT|Merchant|BIGINT|1 |
|4|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|5|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_COST_CENTER_ID|ID|PRIMARY KEY||
|2|PK_COST_CENTER_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_COST_CENTER_MERCHANT|MERCHANT|INDEX||
|4|IDX_COST_CENTER_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_COST_CENTER_ID|ID|-|-|PRIMARY KEY|
|2|FK_COST_CENTER_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |BUDGET_DATA| COST_CENTER|- |






 
### Table BUDGET_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|COST_CENTER|Cost Center|BIGINT|1 |
|3|BUDGET_AMOUNT|Budget Amount|NUMERIC(19,7)|99999999.99 |
|4|\"PERIOD\"|Period|VARCHAR(100)|2024年第四季度 |
|5|MERCHANT|Merchant|BIGINT|1 |
|6|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|7|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_BUDGET_ID|ID|PRIMARY KEY||
|2|PK_BUDGET_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_BUDGET_COST_CENTER|COST_CENTER|INDEX||
|4|IDX_BUDGET_MERCHANT|MERCHANT|INDEX||
|5|IDX_BUDGET_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_BUDGET_ID|ID|-|-|PRIMARY KEY|
|2|FK_BUDGET_COST_CENTER|COST_CENTER|COST_CENTER_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_BUDGET_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |COST_CENTER_DATA| COST_CENTER|- |
|2 |MERCHANT_DATA| MERCHANT|- |






 
### Table ACCOUNT_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|ACCOUNT_NAME|Account Name|VARCHAR(100)|应付账款 |
|3|ACCOUNT_CODE|Account Code|INTEGER|2202 |
|4|MERCHANT|Merchant|BIGINT|1 |
|5|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|6|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_ACCOUNT_ID|ID|PRIMARY KEY||
|2|PK_ACCOUNT_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_ACCOUNT_MERCHANT|MERCHANT|INDEX||
|4|IDX_ACCOUNT_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_ACCOUNT_ID|ID|-|-|PRIMARY KEY|
|2|FK_ACCOUNT_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |TRANSACTION_DATA| ACCOUNT|- |






 
### Table TRANSACTION_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|ACCOUNT|Account|BIGINT|1 |
|3|TRANSACTION_DATE|Transaction Date|DATE|2024-10-20 |
|4|AMOUNT|Amount|NUMERIC(19,7)|99999999.99 |
|5|\"DESCRIPTION\"|Description|VARCHAR(100)|支付采购订单PO2024001 |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_TRANSACTION_ID|ID|PRIMARY KEY||
|2|PK_TRANSACTION_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_TRANSACTION_ACCOUNT|ACCOUNT|INDEX||
|4|IDX_TRANSACTION_MERCHANT|MERCHANT|INDEX||
|5|IDX_TRANSACTION_TRANSACTION_DATE|TRANSACTION_DATE|INDEX||
|6|IDX_TRANSACTION_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_TRANSACTION_ID|ID|-|-|PRIMARY KEY|
|2|FK_TRANSACTION_ACCOUNT|ACCOUNT|ACCOUNT_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_TRANSACTION_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |ACCOUNT_DATA| ACCOUNT|- |
|2 |MERCHANT_DATA| MERCHANT|- |






 
### Table PAYMENT_METHOD_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(100)|银行转账 |
|3|CODE|Code|VARCHAR(100)|BANK_TRANSFER |
|4|MERCHANT|Merchant|BIGINT|1 |
|5|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|6|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_PAYMENT_METHOD_ID|ID|PRIMARY KEY||
|2|PK_PAYMENT_METHOD_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_PAYMENT_METHOD_MERCHANT|MERCHANT|INDEX||
|4|IDX_PAYMENT_METHOD_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_PAYMENT_METHOD_ID|ID|-|-|PRIMARY KEY|
|2|FK_PAYMENT_METHOD_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |






 
### Table PAYMENT_TERM_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(100)|30天净付款 |
|3|CODE|Code|VARCHAR(100)|NET_30 |
|4|DAYS|Days|INTEGER|30 |
|5|MERCHANT|Merchant|BIGINT|1 |
|6|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|7|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_PAYMENT_TERM_ID|ID|PRIMARY KEY||
|2|PK_PAYMENT_TERM_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_PAYMENT_TERM_MERCHANT|MERCHANT|INDEX||
|4|IDX_PAYMENT_TERM_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_PAYMENT_TERM_ID|ID|-|-|PRIMARY KEY|
|2|FK_PAYMENT_TERM_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |






 
### Table INVOICE_ITEM_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|INVOICE|Invoice|BIGINT|1 |
|3|MATERIAL|Material|BIGINT|1 |
|4|QUANTITY|Quantity|INTEGER|999999999 |
|5|UNIT_PRICE|Unit Price|NUMERIC(19,7)|99999999.99 |
|6|TOTAL|Total|NUMERIC(19,7)|99999999.99 |
|7|MERCHANT|Merchant|BIGINT|1 |
|8|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|9|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_INVOICE_ITEM_ID|ID|PRIMARY KEY||
|2|PK_INVOICE_ITEM_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_INVOICE_ITEM_INVOICE|INVOICE|INDEX||
|4|IDX_INVOICE_ITEM_MATERIAL|MATERIAL|INDEX||
|5|IDX_INVOICE_ITEM_MERCHANT|MERCHANT|INDEX||
|6|IDX_INVOICE_ITEM_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_INVOICE_ITEM_ID|ID|-|-|PRIMARY KEY|
|2|FK_INVOICE_ITEM_INVOICE|INVOICE|INVOICE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_INVOICE_ITEM_MATERIAL|MATERIAL|MATERIAL_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_INVOICE_ITEM_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |INVOICE_DATA| INVOICE|- |
|2 |MATERIAL_DATA| MATERIAL|- |
|3 |MERCHANT_DATA| MERCHANT|- |






 
### Table SUPPLIER_CONTACT_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|SUPPLIER|Supplier|BIGINT|1 |
|3|NAME|Name|VARCHAR(100)|张三 |
|4|PHONE_NUMBER|Phone Number|INTEGER|13712345678 |
|5|EMAIL|Email|VARCHAR(100)|zhangsan@supplier.com |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_SUPPLIER_CONTACT_ID|ID|PRIMARY KEY||
|2|PK_SUPPLIER_CONTACT_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_SUPPLIER_CONTACT_SUPPLIER|SUPPLIER|INDEX||
|4|IDX_SUPPLIER_CONTACT_MERCHANT|MERCHANT|INDEX||
|5|IDX_SUPPLIER_CONTACT_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_SUPPLIER_CONTACT_ID|ID|-|-|PRIMARY KEY|
|2|FK_SUPPLIER_CONTACT_SUPPLIER|SUPPLIER|SUPPLIER_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_SUPPLIER_CONTACT_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |SUPPLIER_DATA| SUPPLIER|- |
|2 |MERCHANT_DATA| MERCHANT|- |






 
### Table EMPLOYEE_TITLE_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|TITLE_NAME|Title Name|VARCHAR(100)|供应链总监 |
|3|MERCHANT|Merchant|BIGINT|1 |
|4|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|5|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_EMPLOYEE_TITLE_ID|ID|PRIMARY KEY||
|2|PK_EMPLOYEE_TITLE_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_EMPLOYEE_TITLE_MERCHANT|MERCHANT|INDEX||
|4|IDX_EMPLOYEE_TITLE_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_EMPLOYEE_TITLE_ID|ID|-|-|PRIMARY KEY|
|2|FK_EMPLOYEE_TITLE_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |EMPLOYEE_TITLE_ASSIGNMENT_DATA| EMPLOYEE_TITLE|- |






 
### Table EMPLOYEE_TITLE_ASSIGNMENT_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|EMPLOYEE|Employee|BIGINT|1 |
|3|EMPLOYEE_TITLE|Employee Title|BIGINT|1 |
|4|ASSIGNMENT_DATE|Assignment Date|DATE|2024-01-01 |
|5|MERCHANT|Merchant|BIGINT|1 |
|6|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|7|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_EMPLOYEE_TITLE_ASSIGNMENT_ID|ID|PRIMARY KEY||
|2|PK_EMPLOYEE_TITLE_ASSIGNMENT_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_EMPLOYEE_TITLE_ASSIGNMENT_EMPLOYEE|EMPLOYEE|INDEX||
|4|IDX_EMPLOYEE_TITLE_ASSIGNMENT_EMPLOYEE_TITLE|EMPLOYEE_TITLE|INDEX||
|5|IDX_EMPLOYEE_TITLE_ASSIGNMENT_MERCHANT|MERCHANT|INDEX||
|6|IDX_EMPLOYEE_TITLE_ASSIGNMENT_ASSIGNMENT_DATE|ASSIGNMENT_DATE|INDEX||
|7|IDX_EMPLOYEE_TITLE_ASSIGNMENT_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_EMPLOYEE_TITLE_ASSIGNMENT_ID|ID|-|-|PRIMARY KEY|
|2|FK_EMPLOYEE_TITLE_ASSIGNMENT_EMPLOYEE|EMPLOYEE|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_EMPLOYEE_TITLE_ASSIGNMENT_EMPLOYEE_TITLE|EMPLOYEE_TITLE|EMPLOYEE_TITLE_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_EMPLOYEE_TITLE_ASSIGNMENT_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |EMPLOYEE_DATA| EMPLOYEE|- |
|2 |EMPLOYEE_TITLE_DATA| EMPLOYEE_TITLE|- |
|3 |MERCHANT_DATA| MERCHANT|- |






 
### Table EMPLOYEE_TRAINING_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|TRAINING_NAME|Training Name|VARCHAR(100)|SAP系统操作培训 |
|3|TRAINER|Trainer|VARCHAR(100)|王老师 |
|4|TRAINING_DATE|Training Date|DATE|2024-09-01 |
|5|PARTICIPANT|Participant|BIGINT|1 |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_EMPLOYEE_TRAINING_ID|ID|PRIMARY KEY||
|2|PK_EMPLOYEE_TRAINING_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_EMPLOYEE_TRAINING_PARTICIPANT|PARTICIPANT|INDEX||
|4|IDX_EMPLOYEE_TRAINING_MERCHANT|MERCHANT|INDEX||
|5|IDX_EMPLOYEE_TRAINING_TRAINING_DATE|TRAINING_DATE|INDEX||
|6|IDX_EMPLOYEE_TRAINING_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_EMPLOYEE_TRAINING_ID|ID|-|-|PRIMARY KEY|
|2|FK_EMPLOYEE_TRAINING_PARTICIPANT|PARTICIPANT|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_EMPLOYEE_TRAINING_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |EMPLOYEE_DATA| PARTICIPANT|- |
|2 |MERCHANT_DATA| MERCHANT|- |






 
### Table SUPPLY_CHAIN_RISK_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|RISK_NAME|Risk Name|VARCHAR(100)|原材料价格波动 |
|3|RISK_LEVEL|Risk Level|BIGINT|1 |
|4|SOURCE|Source|VARCHAR(100)|市场报告 |
|5|MITIGATION_PLAN|Mitigation Plan|VARCHAR(100)|增加库存备货 |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_SUPPLY_CHAIN_RISK_ID|ID|PRIMARY KEY||
|2|PK_SUPPLY_CHAIN_RISK_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_SUPPLY_CHAIN_RISK_RISK_LEVEL|RISK_LEVEL|INDEX||
|4|IDX_SUPPLY_CHAIN_RISK_MERCHANT|MERCHANT|INDEX||
|5|IDX_SUPPLY_CHAIN_RISK_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_SUPPLY_CHAIN_RISK_ID|ID|-|-|PRIMARY KEY|
|2|FK_SUPPLY_CHAIN_RISK_RISK_LEVEL|RISK_LEVEL|RISK_LEVEL_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_SUPPLY_CHAIN_RISK_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |RISK_LEVEL_DATA| RISK_LEVEL|- |
|2 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |RISK_EVENT_DATA| SUPPLY_CHAIN_RISK|- |






 
### Table RISK_EVENT_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|SUPPLY_CHAIN_RISK|Supply Chain Risk|BIGINT|1 |
|3|EVENT_DATE|Event Date|DATE|2024-10-25 |
|4|\"DESCRIPTION\"|Description|VARCHAR(100)|铜价上涨20% |
|5|MERCHANT|Merchant|BIGINT|1 |
|6|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|7|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_RISK_EVENT_ID|ID|PRIMARY KEY||
|2|PK_RISK_EVENT_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_RISK_EVENT_SUPPLY_CHAIN_RISK|SUPPLY_CHAIN_RISK|INDEX||
|4|IDX_RISK_EVENT_MERCHANT|MERCHANT|INDEX||
|5|IDX_RISK_EVENT_EVENT_DATE|EVENT_DATE|INDEX||
|6|IDX_RISK_EVENT_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_RISK_EVENT_ID|ID|-|-|PRIMARY KEY|
|2|FK_RISK_EVENT_SUPPLY_CHAIN_RISK|SUPPLY_CHAIN_RISK|SUPPLY_CHAIN_RISK_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_RISK_EVENT_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |SUPPLY_CHAIN_RISK_DATA| SUPPLY_CHAIN_RISK|- |
|2 |MERCHANT_DATA| MERCHANT|- |






 
### Table QUALITY_ISSUE_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|MATERIAL|Material|BIGINT|1 |
|3|ISSUE_DATE|Issue Date|DATE|2024-10-18 |
|4|ISSUE_DESCRIPTION|Issue Description|VARCHAR(100)|物料表面有轻微划痕 |
|5|REPORTED_BY|Reported By|BIGINT|1 |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_QUALITY_ISSUE_ID|ID|PRIMARY KEY||
|2|PK_QUALITY_ISSUE_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_QUALITY_ISSUE_MATERIAL|MATERIAL|INDEX||
|4|IDX_QUALITY_ISSUE_REPORTED_BY|REPORTED_BY|INDEX||
|5|IDX_QUALITY_ISSUE_MERCHANT|MERCHANT|INDEX||
|6|IDX_QUALITY_ISSUE_ISSUE_DATE|ISSUE_DATE|INDEX||
|7|IDX_QUALITY_ISSUE_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_QUALITY_ISSUE_ID|ID|-|-|PRIMARY KEY|
|2|FK_QUALITY_ISSUE_MATERIAL|MATERIAL|MATERIAL_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_QUALITY_ISSUE_REPORTED_BY|REPORTED_BY|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_QUALITY_ISSUE_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MATERIAL_DATA| MATERIAL|- |
|2 |EMPLOYEE_DATA| REPORTED_BY|- |
|3 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |CORRECTIVE_ACTION_DATA| QUALITY_ISSUE|- |






 
### Table CORRECTIVE_ACTION_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|QUALITY_ISSUE|Quality Issue|BIGINT|1 |
|3|ACTION_DESCRIPTION|Action Description|VARCHAR(100)|要求供应商更换问题批次 |
|4|RESPONSIBLE_PERSON|Responsible Person|BIGINT|1 |
|5|DUE_DATE|Due Date|DATE|2024-10-25 |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_CORRECTIVE_ACTION_ID|ID|PRIMARY KEY||
|2|PK_CORRECTIVE_ACTION_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_CORRECTIVE_ACTION_QUALITY_ISSUE|QUALITY_ISSUE|INDEX||
|4|IDX_CORRECTIVE_ACTION_RESPONSIBLE_PERSON|RESPONSIBLE_PERSON|INDEX||
|5|IDX_CORRECTIVE_ACTION_MERCHANT|MERCHANT|INDEX||
|6|IDX_CORRECTIVE_ACTION_DUE_DATE|DUE_DATE|INDEX||
|7|IDX_CORRECTIVE_ACTION_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_CORRECTIVE_ACTION_ID|ID|-|-|PRIMARY KEY|
|2|FK_CORRECTIVE_ACTION_QUALITY_ISSUE|QUALITY_ISSUE|QUALITY_ISSUE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_CORRECTIVE_ACTION_RESPONSIBLE_PERSON|RESPONSIBLE_PERSON|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_CORRECTIVE_ACTION_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |QUALITY_ISSUE_DATA| QUALITY_ISSUE|- |
|2 |EMPLOYEE_DATA| RESPONSIBLE_PERSON|- |
|3 |MERCHANT_DATA| MERCHANT|- |






 
### Table SUPPLIER_RATING_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|SUPPLIER|Supplier|BIGINT|1 |
|3|RATING_PERIOD|Rating Period|VARCHAR(100)|2024Q3 |
|4|RATING_SCORE|Rating Score|NUMERIC(19,7)|95.0 |
|5|MERCHANT|Merchant|BIGINT|1 |
|6|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|7|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_SUPPLIER_RATING_ID|ID|PRIMARY KEY||
|2|PK_SUPPLIER_RATING_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_SUPPLIER_RATING_SUPPLIER|SUPPLIER|INDEX||
|4|IDX_SUPPLIER_RATING_MERCHANT|MERCHANT|INDEX||
|5|IDX_SUPPLIER_RATING_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_SUPPLIER_RATING_ID|ID|-|-|PRIMARY KEY|
|2|FK_SUPPLIER_RATING_SUPPLIER|SUPPLIER|SUPPLIER_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_SUPPLIER_RATING_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |SUPPLIER_DATA| SUPPLIER|- |
|2 |MERCHANT_DATA| MERCHANT|- |






 
### Table VENDOR_ONBOARDING_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|COMPANY_NAME|Company Name|VARCHAR(100)|新锐科技 |
|3|APPLICATION_DATE|Application Date|DATE|2024-10-20 |
|4|STATUS|Status|VARCHAR(100)|审核中 |
|5|REVIEWER|Reviewer|BIGINT|1 |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_VENDOR_ONBOARDING_ID|ID|PRIMARY KEY||
|2|PK_VENDOR_ONBOARDING_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_VENDOR_ONBOARDING_REVIEWER|REVIEWER|INDEX||
|4|IDX_VENDOR_ONBOARDING_MERCHANT|MERCHANT|INDEX||
|5|IDX_VENDOR_ONBOARDING_APPLICATION_DATE|APPLICATION_DATE|INDEX||
|6|IDX_VENDOR_ONBOARDING_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_VENDOR_ONBOARDING_ID|ID|-|-|PRIMARY KEY|
|2|FK_VENDOR_ONBOARDING_REVIEWER|REVIEWER|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_VENDOR_ONBOARDING_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |EMPLOYEE_DATA| REVIEWER|- |
|2 |MERCHANT_DATA| MERCHANT|- |






 
### Table VENDOR_CONTRACT_TEMPLATE_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|TEMPLATE_NAME|Template Name|VARCHAR(100)|标准采购合同 |
|3|MERCHANT|Merchant|BIGINT|1 |
|4|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|5|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_VENDOR_CONTRACT_TEMPLATE_ID|ID|PRIMARY KEY||
|2|PK_VENDOR_CONTRACT_TEMPLATE_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_VENDOR_CONTRACT_TEMPLATE_MERCHANT|MERCHANT|INDEX||
|4|IDX_VENDOR_CONTRACT_TEMPLATE_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_VENDOR_CONTRACT_TEMPLATE_ID|ID|-|-|PRIMARY KEY|
|2|FK_VENDOR_CONTRACT_TEMPLATE_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |






 
### Table DATA_BACKUP_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|BACKUP_DATE|Backup Date|DATE|2024-10-25 |
|3|BACKUP_LOCATION|Backup Location|VARCHAR(100)|/data/backups |
|4|STATUS|Status|VARCHAR(100)|已完成 |
|5|MERCHANT|Merchant|BIGINT|1 |
|6|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|7|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_DATA_BACKUP_ID|ID|PRIMARY KEY||
|2|PK_DATA_BACKUP_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_DATA_BACKUP_MERCHANT|MERCHANT|INDEX||
|4|IDX_DATA_BACKUP_BACKUP_DATE|BACKUP_DATE|INDEX||
|5|IDX_DATA_BACKUP_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_DATA_BACKUP_ID|ID|-|-|PRIMARY KEY|
|2|FK_DATA_BACKUP_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |






 
### Table USER_LOGIN_LOG_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|EMPLOYEE|Employee|BIGINT|1 |
|3|LOGIN_TIME|Login Time|TIMESTAMP|updateTime() |
|4|REMOTE_IP|Remote Ip|VARCHAR(100)|remoteIp() |
|5|CITY_BY_IP|City By Ip|VARCHAR(100)|cityByIp() |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_USER_LOGIN_LOG_ID|ID|PRIMARY KEY||
|2|PK_USER_LOGIN_LOG_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_USER_LOGIN_LOG_EMPLOYEE|EMPLOYEE|INDEX||
|4|IDX_USER_LOGIN_LOG_MERCHANT|MERCHANT|INDEX||
|5|IDX_USER_LOGIN_LOG_LOGIN_TIME|LOGIN_TIME|INDEX||
|6|IDX_USER_LOGIN_LOG_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_USER_LOGIN_LOG_ID|ID|-|-|PRIMARY KEY|
|2|FK_USER_LOGIN_LOG_EMPLOYEE|EMPLOYEE|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_USER_LOGIN_LOG_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |EMPLOYEE_DATA| EMPLOYEE|- |
|2 |MERCHANT_DATA| MERCHANT|- |






 
### Table SYSTEM_ANNOUNCEMENT_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|TITLE|Title|VARCHAR(100)|系统维护通知 |
|3|CONTENT|Content|VARCHAR(100)|00-23:00进行维护 |
|4|PUBLISH_DATE|Publish Date|DATE|2024-10-25 |
|5|PUBLISHER|Publisher|BIGINT|1 |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_SYSTEM_ANNOUNCEMENT_ID|ID|PRIMARY KEY||
|2|PK_SYSTEM_ANNOUNCEMENT_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_SYSTEM_ANNOUNCEMENT_PUBLISHER|PUBLISHER|INDEX||
|4|IDX_SYSTEM_ANNOUNCEMENT_MERCHANT|MERCHANT|INDEX||
|5|IDX_SYSTEM_ANNOUNCEMENT_PUBLISH_DATE|PUBLISH_DATE|INDEX||
|6|IDX_SYSTEM_ANNOUNCEMENT_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_SYSTEM_ANNOUNCEMENT_ID|ID|-|-|PRIMARY KEY|
|2|FK_SYSTEM_ANNOUNCEMENT_PUBLISHER|PUBLISHER|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_SYSTEM_ANNOUNCEMENT_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |EMPLOYEE_DATA| PUBLISHER|- |
|2 |MERCHANT_DATA| MERCHANT|- |






 
### Table WAREHOUSE_SHELF_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|WAREHOUSE|Warehouse|BIGINT|1 |
|3|SHELF_CODE|Shelf Code|VARCHAR(100)|A101 |
|4|CAPACITY|Capacity|INTEGER|1000 |
|5|MERCHANT|Merchant|BIGINT|1 |
|6|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|7|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_WAREHOUSE_SHELF_ID|ID|PRIMARY KEY||
|2|PK_WAREHOUSE_SHELF_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_WAREHOUSE_SHELF_WAREHOUSE|WAREHOUSE|INDEX||
|4|IDX_WAREHOUSE_SHELF_MERCHANT|MERCHANT|INDEX||
|5|IDX_WAREHOUSE_SHELF_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_WAREHOUSE_SHELF_ID|ID|-|-|PRIMARY KEY|
|2|FK_WAREHOUSE_SHELF_WAREHOUSE|WAREHOUSE|WAREHOUSE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_WAREHOUSE_SHELF_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |WAREHOUSE_DATA| WAREHOUSE|- |
|2 |MERCHANT_DATA| MERCHANT|- |






 
### Table STOCK_TRANSFER_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|TRANSFER_NUMBER|Transfer Number|VARCHAR(100)|TRF2024001 |
|3|FROM_WAREHOUSE|From Warehouse|BIGINT|1 |
|4|TO_WAREHOUSE|To Warehouse|BIGINT|1 |
|5|TRANSFER_DATE|Transfer Date|DATE|2024-10-25 |
|6|STATUS|Status|VARCHAR(100)|待审批 |
|7|MERCHANT|Merchant|BIGINT|1 |
|8|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|9|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_STOCK_TRANSFER_ID|ID|PRIMARY KEY||
|2|PK_STOCK_TRANSFER_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_STOCK_TRANSFER_FROM_WAREHOUSE|FROM_WAREHOUSE|INDEX||
|4|IDX_STOCK_TRANSFER_TO_WAREHOUSE|TO_WAREHOUSE|INDEX||
|5|IDX_STOCK_TRANSFER_MERCHANT|MERCHANT|INDEX||
|6|IDX_STOCK_TRANSFER_TRANSFER_DATE|TRANSFER_DATE|INDEX||
|7|IDX_STOCK_TRANSFER_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_STOCK_TRANSFER_ID|ID|-|-|PRIMARY KEY|
|2|FK_STOCK_TRANSFER_FROM_WAREHOUSE|FROM_WAREHOUSE|WAREHOUSE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_STOCK_TRANSFER_TO_WAREHOUSE|TO_WAREHOUSE|WAREHOUSE_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_STOCK_TRANSFER_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |WAREHOUSE_DATA| FROM_WAREHOUSE|- |
|2 |WAREHOUSE_DATA| TO_WAREHOUSE|- |
|3 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |TRANSFER_ITEM_DATA| STOCK_TRANSFER|- |






 
### Table TRANSFER_ITEM_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|STOCK_TRANSFER|Stock Transfer|BIGINT|1 |
|3|MATERIAL|Material|BIGINT|1 |
|4|QUANTITY|Quantity|INTEGER|999999999 |
|5|MERCHANT|Merchant|BIGINT|1 |
|6|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|7|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_TRANSFER_ITEM_ID|ID|PRIMARY KEY||
|2|PK_TRANSFER_ITEM_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_TRANSFER_ITEM_STOCK_TRANSFER|STOCK_TRANSFER|INDEX||
|4|IDX_TRANSFER_ITEM_MATERIAL|MATERIAL|INDEX||
|5|IDX_TRANSFER_ITEM_MERCHANT|MERCHANT|INDEX||
|6|IDX_TRANSFER_ITEM_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_TRANSFER_ITEM_ID|ID|-|-|PRIMARY KEY|
|2|FK_TRANSFER_ITEM_STOCK_TRANSFER|STOCK_TRANSFER|STOCK_TRANSFER_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_TRANSFER_ITEM_MATERIAL|MATERIAL|MATERIAL_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_TRANSFER_ITEM_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |STOCK_TRANSFER_DATA| STOCK_TRANSFER|- |
|2 |MATERIAL_DATA| MATERIAL|- |
|3 |MERCHANT_DATA| MERCHANT|- |






 
### Table RETURN_MERCHANDISE_AUTHORIZATION_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|RMA_NUMBER|Rma Number|VARCHAR(100)|RMA2024001 |
|3|RELATED_ORDER|Related Order|BIGINT|1 |
|4|RETURN_REASON|Return Reason|VARCHAR(100)|质量问题 |
|5|STATUS|Status|VARCHAR(100)|待处理 |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_RETURN_MERCHANDISE_AUTHORIZATION_ID|ID|PRIMARY KEY||
|2|PK_RETURN_MERCHANDISE_AUTHORIZATION_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_RETURN_MERCHANDISE_AUTHORIZATION_RELATED_ORDER|RELATED_ORDER|INDEX||
|4|IDX_RETURN_MERCHANDISE_AUTHORIZATION_MERCHANT|MERCHANT|INDEX||
|5|IDX_RETURN_MERCHANDISE_AUTHORIZATION_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_RETURN_MERCHANDISE_AUTHORIZATION_ID|ID|-|-|PRIMARY KEY|
|2|FK_RETURN_MERCHANDISE_AUTHORIZATION_RELATED_ORDER|RELATED_ORDER|PURCHASE_ORDER_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_RETURN_MERCHANDISE_AUTHORIZATION_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |PURCHASE_ORDER_DATA| RELATED_ORDER|- |
|2 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |RETURN_ITEM_DATA| RETURN_MERCHANDISE_AUTHORIZATION|- |






 
### Table RETURN_ITEM_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|RETURN_MERCHANDISE_AUTHORIZATION|Return Merchandise Authorization|BIGINT|1 |
|3|MATERIAL|Material|BIGINT|1 |
|4|RETURNED_QUANTITY|Returned Quantity|INTEGER|999999999 |
|5|MERCHANT|Merchant|BIGINT|1 |
|6|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|7|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_RETURN_ITEM_ID|ID|PRIMARY KEY||
|2|PK_RETURN_ITEM_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_RETURN_ITEM_RETURN_MERCHANDISE_AUTHORIZATION|RETURN_MERCHANDISE_AUTHORIZATION|INDEX||
|4|IDX_RETURN_ITEM_MATERIAL|MATERIAL|INDEX||
|5|IDX_RETURN_ITEM_MERCHANT|MERCHANT|INDEX||
|6|IDX_RETURN_ITEM_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_RETURN_ITEM_ID|ID|-|-|PRIMARY KEY|
|2|FK_RETURN_ITEM_RETURN_MERCHANDISE_AUTHORIZATION|RETURN_MERCHANDISE_AUTHORIZATION|RETURN_MERCHANDISE_AUTHORIZATION_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_RETURN_ITEM_MATERIAL|MATERIAL|MATERIAL_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_RETURN_ITEM_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |RETURN_MERCHANDISE_AUTHORIZATION_DATA| RETURN_MERCHANDISE_AUTHORIZATION|- |
|2 |MATERIAL_DATA| MATERIAL|- |
|3 |MERCHANT_DATA| MERCHANT|- |






 
### Table CUSTOMER_FEEDBACK_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|CUSTOMER|Customer|BIGINT|1 |
|3|FEEDBACK_DATE|Feedback Date|DATE|2024-10-24 |
|4|FEEDBACK_CONTENT|Feedback Content|VARCHAR(100)|产品包装破损 |
|5|MERCHANT|Merchant|BIGINT|1 |
|6|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|7|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_CUSTOMER_FEEDBACK_ID|ID|PRIMARY KEY||
|2|PK_CUSTOMER_FEEDBACK_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_CUSTOMER_FEEDBACK_CUSTOMER|CUSTOMER|INDEX||
|4|IDX_CUSTOMER_FEEDBACK_MERCHANT|MERCHANT|INDEX||
|5|IDX_CUSTOMER_FEEDBACK_FEEDBACK_DATE|FEEDBACK_DATE|INDEX||
|6|IDX_CUSTOMER_FEEDBACK_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_CUSTOMER_FEEDBACK_ID|ID|-|-|PRIMARY KEY|
|2|FK_CUSTOMER_FEEDBACK_CUSTOMER|CUSTOMER|CUSTOMER_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_CUSTOMER_FEEDBACK_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |CUSTOMER_DATA| CUSTOMER|- |
|2 |MERCHANT_DATA| MERCHANT|- |






 
### Table FEEDBACK_TYPE_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(100)|产品质量 |
|3|CODE|Code|VARCHAR(100)|PRODUCT_QUALITY |
|4|MERCHANT|Merchant|BIGINT|1 |
|5|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_FEEDBACK_TYPE_ID|ID|PRIMARY KEY||
|2|PK_FEEDBACK_TYPE_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_FEEDBACK_TYPE_MERCHANT|MERCHANT|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_FEEDBACK_TYPE_ID|ID|-|-|PRIMARY KEY|
|2|FK_FEEDBACK_TYPE_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |






#### Internal Data
|ID |NAME |CODE |MERCHANT |VERSION |
|:----------|:----------|:----------|:----------|:----------|
|1|产品质量|PRODUCT_QUALITY|1|1|
|2|物流配送|LOGISTICS|1|1|
|3|服务态度|SERVICE_ATTITUDE|1|1|
 
### Table CUSTOMER_SERVICE_CASE_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|CUSTOMER|Customer|BIGINT|1 |
|3|CASE_NUMBER|Case Number|VARCHAR(100)|CS2024001 |
|4|CASE_DESCRIPTION|Case Description|VARCHAR(100)|产品功能咨询 |
|5|STATUS|Status|VARCHAR(100)|处理中 |
|6|ASSIGNED_TO|Assigned To|BIGINT|1 |
|7|MERCHANT|Merchant|BIGINT|1 |
|8|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|9|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_CUSTOMER_SERVICE_CASE_ID|ID|PRIMARY KEY||
|2|PK_CUSTOMER_SERVICE_CASE_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_CUSTOMER_SERVICE_CASE_CUSTOMER|CUSTOMER|INDEX||
|4|IDX_CUSTOMER_SERVICE_CASE_ASSIGNED_TO|ASSIGNED_TO|INDEX||
|5|IDX_CUSTOMER_SERVICE_CASE_MERCHANT|MERCHANT|INDEX||
|6|IDX_CUSTOMER_SERVICE_CASE_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_CUSTOMER_SERVICE_CASE_ID|ID|-|-|PRIMARY KEY|
|2|FK_CUSTOMER_SERVICE_CASE_CUSTOMER|CUSTOMER|CUSTOMER_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_CUSTOMER_SERVICE_CASE_ASSIGNED_TO|ASSIGNED_TO|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_CUSTOMER_SERVICE_CASE_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |CUSTOMER_DATA| CUSTOMER|- |
|2 |EMPLOYEE_DATA| ASSIGNED_TO|- |
|3 |MERCHANT_DATA| MERCHANT|- |






 
### Table CUSTOMER_SATISFACTION_SURVEY_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|SURVEY_DATE|Survey Date|DATE|2024-10-25 |
|3|SCORE|Score|INTEGER|99 |
|4|COMMENT|Comment|VARCHAR(100)|服务非常满意 |
|5|MERCHANT|Merchant|BIGINT|1 |
|6|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|7|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_CUSTOMER_SATISFACTION_SURVEY_ID|ID|PRIMARY KEY||
|2|PK_CUSTOMER_SATISFACTION_SURVEY_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_CUSTOMER_SATISFACTION_SURVEY_MERCHANT|MERCHANT|INDEX||
|4|IDX_CUSTOMER_SATISFACTION_SURVEY_SURVEY_DATE|SURVEY_DATE|INDEX||
|5|IDX_CUSTOMER_SATISFACTION_SURVEY_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_CUSTOMER_SATISFACTION_SURVEY_ID|ID|-|-|PRIMARY KEY|
|2|FK_CUSTOMER_SATISFACTION_SURVEY_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |






 
### Table MARKET_INTELLIGENCE_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|INTELLIGENCE_SOURCE|Intelligence Source|VARCHAR(100)|行业报告 |
|3|INTELLIGENCE_DATE|Intelligence Date|DATE|2024-10-24 |
|4|CONTENT|Content|VARCHAR(100)|竞争对手推出新产品 |
|5|MERCHANT|Merchant|BIGINT|1 |
|6|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|7|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_MARKET_INTELLIGENCE_ID|ID|PRIMARY KEY||
|2|PK_MARKET_INTELLIGENCE_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_MARKET_INTELLIGENCE_MERCHANT|MERCHANT|INDEX||
|4|IDX_MARKET_INTELLIGENCE_INTELLIGENCE_DATE|INTELLIGENCE_DATE|INDEX||
|5|IDX_MARKET_INTELLIGENCE_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_MARKET_INTELLIGENCE_ID|ID|-|-|PRIMARY KEY|
|2|FK_MARKET_INTELLIGENCE_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |






 
### Table SUPPLY_CHAIN_METRICS_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|METRIC_NAME|Metric Name|VARCHAR(100)|订单履行率 |
|3|METRIC_VALUE|Metric Value|NUMERIC(19,7)|0.95 |
|4|CALCULATION_PERIOD|Calculation Period|VARCHAR(100)|2024年10月 |
|5|MERCHANT|Merchant|BIGINT|1 |
|6|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|7|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_SUPPLY_CHAIN_METRICS_ID|ID|PRIMARY KEY||
|2|PK_SUPPLY_CHAIN_METRICS_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_SUPPLY_CHAIN_METRICS_MERCHANT|MERCHANT|INDEX||
|4|IDX_SUPPLY_CHAIN_METRICS_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_SUPPLY_CHAIN_METRICS_ID|ID|-|-|PRIMARY KEY|
|2|FK_SUPPLY_CHAIN_METRICS_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |






 
### Table REPORT_GENERATION_TASK_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|REPORT_NAME|Report Name|VARCHAR(100)|月度运营报告 |
|3|FREQUENCY|Frequency|VARCHAR(100)|每月 |
|4|LAST_RUN_DATE|Last Run Date|DATE|2024-10-01 |
|5|NEXT_RUN_DATE|Next Run Date|DATE|2024-11-01 |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_REPORT_GENERATION_TASK_ID|ID|PRIMARY KEY||
|2|PK_REPORT_GENERATION_TASK_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_REPORT_GENERATION_TASK_MERCHANT|MERCHANT|INDEX||
|4|IDX_REPORT_GENERATION_TASK_LAST_RUN_DATE|LAST_RUN_DATE|INDEX||
|5|IDX_REPORT_GENERATION_TASK_NEXT_RUN_DATE|NEXT_RUN_DATE|INDEX||
|6|IDX_REPORT_GENERATION_TASK_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_REPORT_GENERATION_TASK_ID|ID|-|-|PRIMARY KEY|
|2|FK_REPORT_GENERATION_TASK_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |






 
### Table SYSTEM_CONFIGURATION_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|SETTING_NAME|Setting Name|VARCHAR(100)|自动审批阈值 |
|3|SETTING_VALUE|Setting Value|INTEGER|100000 |
|4|\"DESCRIPTION\"|Description|VARCHAR(100)|采购订单自动审批的金额阈值 |
|5|MERCHANT|Merchant|BIGINT|1 |
|6|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|7|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_SYSTEM_CONFIGURATION_ID|ID|PRIMARY KEY||
|2|PK_SYSTEM_CONFIGURATION_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_SYSTEM_CONFIGURATION_MERCHANT|MERCHANT|INDEX||
|4|IDX_SYSTEM_CONFIGURATION_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_SYSTEM_CONFIGURATION_ID|ID|-|-|PRIMARY KEY|
|2|FK_SYSTEM_CONFIGURATION_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |






 
### Table API_KEY_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|KEY_NAME|Key Name|VARCHAR(100)|物流API_KEY |
|3|API_SERVICE|Api Service|VARCHAR(100)|物流服务 |
|4|STATUS|Status|VARCHAR(100)|启用 |
|5|MERCHANT|Merchant|BIGINT|1 |
|6|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|7|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_API_KEY_ID|ID|PRIMARY KEY||
|2|PK_API_KEY_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_API_KEY_MERCHANT|MERCHANT|INDEX||
|4|IDX_API_KEY_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_API_KEY_ID|ID|-|-|PRIMARY KEY|
|2|FK_API_KEY_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |






 
### Table SERVICE_LEVEL_AGREEMENT_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|SUPPLIER|Supplier|BIGINT|1 |
|3|SERVICE_DESCRIPTION|Service Description|VARCHAR(100)|物流服务 |
|4|SLA_TERMS|Sla Terms|VARCHAR(100)|98%准时交货 |
|5|MERCHANT|Merchant|BIGINT|1 |
|6|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|7|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_SERVICE_LEVEL_AGREEMENT_ID|ID|PRIMARY KEY||
|2|PK_SERVICE_LEVEL_AGREEMENT_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_SERVICE_LEVEL_AGREEMENT_SUPPLIER|SUPPLIER|INDEX||
|4|IDX_SERVICE_LEVEL_AGREEMENT_MERCHANT|MERCHANT|INDEX||
|5|IDX_SERVICE_LEVEL_AGREEMENT_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_SERVICE_LEVEL_AGREEMENT_ID|ID|-|-|PRIMARY KEY|
|2|FK_SERVICE_LEVEL_AGREEMENT_SUPPLIER|SUPPLIER|SUPPLIER_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_SERVICE_LEVEL_AGREEMENT_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |SUPPLIER_DATA| SUPPLIER|- |
|2 |MERCHANT_DATA| MERCHANT|- |






 
### Table DISPUTE_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|RELATED_CONTRACT|Related Contract|BIGINT|1 |
|3|DISPUTE_REASON|Dispute Reason|VARCHAR(100)|交货延迟违约 |
|4|STATUS|Status|VARCHAR(100)|协商中 |
|5|MERCHANT|Merchant|BIGINT|1 |
|6|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|7|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_DISPUTE_ID|ID|PRIMARY KEY||
|2|PK_DISPUTE_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_DISPUTE_RELATED_CONTRACT|RELATED_CONTRACT|INDEX||
|4|IDX_DISPUTE_MERCHANT|MERCHANT|INDEX||
|5|IDX_DISPUTE_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_DISPUTE_ID|ID|-|-|PRIMARY KEY|
|2|FK_DISPUTE_RELATED_CONTRACT|RELATED_CONTRACT|CONTRACT_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_DISPUTE_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |CONTRACT_DATA| RELATED_CONTRACT|- |
|2 |MERCHANT_DATA| MERCHANT|- |






 
### Table ASSET_MANAGEMENT_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|ASSET_NAME|Asset Name|VARCHAR(100)|叉车 |
|3|ASSET_TAG|Asset Tag|VARCHAR(100)|AM1001 |
|4|ACQUISITION_DATE|Acquisition Date|DATE|2023-05-01 |
|5|\"VALUE\"|Value|NUMERIC(19,7)|50000.0 |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_ASSET_MANAGEMENT_ID|ID|PRIMARY KEY||
|2|PK_ASSET_MANAGEMENT_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_ASSET_MANAGEMENT_MERCHANT|MERCHANT|INDEX||
|4|IDX_ASSET_MANAGEMENT_ACQUISITION_DATE|ACQUISITION_DATE|INDEX||
|5|IDX_ASSET_MANAGEMENT_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_ASSET_MANAGEMENT_ID|ID|-|-|PRIMARY KEY|
|2|FK_ASSET_MANAGEMENT_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MAINTENANCE_RECORD_DATA| ASSET_MANAGEMENT|- |






 
### Table MAINTENANCE_RECORD_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|ASSET_MANAGEMENT|Asset Management|BIGINT|1 |
|3|MAINTENANCE_DATE|Maintenance Date|DATE|2024-09-01 |
|4|\"DESCRIPTION\"|Description|VARCHAR(100)|日常保养 |
|5|COST|Cost|NUMERIC(19,7)|500.0 |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_MAINTENANCE_RECORD_ID|ID|PRIMARY KEY||
|2|PK_MAINTENANCE_RECORD_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_MAINTENANCE_RECORD_ASSET_MANAGEMENT|ASSET_MANAGEMENT|INDEX||
|4|IDX_MAINTENANCE_RECORD_MERCHANT|MERCHANT|INDEX||
|5|IDX_MAINTENANCE_RECORD_MAINTENANCE_DATE|MAINTENANCE_DATE|INDEX||
|6|IDX_MAINTENANCE_RECORD_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_MAINTENANCE_RECORD_ID|ID|-|-|PRIMARY KEY|
|2|FK_MAINTENANCE_RECORD_ASSET_MANAGEMENT|ASSET_MANAGEMENT|ASSET_MANAGEMENT_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_MAINTENANCE_RECORD_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |ASSET_MANAGEMENT_DATA| ASSET_MANAGEMENT|- |
|2 |MERCHANT_DATA| MERCHANT|- |






 
### Table SALES_PIPELINE_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|CUSTOMER|Customer|BIGINT|1 |
|3|STAGE|Stage|VARCHAR(100)|初步接洽 |
|4|EXPECTED_CLOSE_DATE|Expected Close Date|DATE|2024-11-30 |
|5|MERCHANT|Merchant|BIGINT|1 |
|6|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|7|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_SALES_PIPELINE_ID|ID|PRIMARY KEY||
|2|PK_SALES_PIPELINE_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_SALES_PIPELINE_CUSTOMER|CUSTOMER|INDEX||
|4|IDX_SALES_PIPELINE_MERCHANT|MERCHANT|INDEX||
|5|IDX_SALES_PIPELINE_EXPECTED_CLOSE_DATE|EXPECTED_CLOSE_DATE|INDEX||
|6|IDX_SALES_PIPELINE_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_SALES_PIPELINE_ID|ID|-|-|PRIMARY KEY|
|2|FK_SALES_PIPELINE_CUSTOMER|CUSTOMER|CUSTOMER_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_SALES_PIPELINE_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |CUSTOMER_DATA| CUSTOMER|- |
|2 |MERCHANT_DATA| MERCHANT|- |






 
### Table PROCUREMENT_STRATEGY_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|STRATEGY_NAME|Strategy Name|VARCHAR(100)|集中采购 |
|3|\"DESCRIPTION\"|Description|VARCHAR(100)|对所有物料进行统一采购 |
|4|RESPONSIBLE_PERSON|Responsible Person|BIGINT|1 |
|5|MERCHANT|Merchant|BIGINT|1 |
|6|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|7|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_PROCUREMENT_STRATEGY_ID|ID|PRIMARY KEY||
|2|PK_PROCUREMENT_STRATEGY_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_PROCUREMENT_STRATEGY_RESPONSIBLE_PERSON|RESPONSIBLE_PERSON|INDEX||
|4|IDX_PROCUREMENT_STRATEGY_MERCHANT|MERCHANT|INDEX||
|5|IDX_PROCUREMENT_STRATEGY_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_PROCUREMENT_STRATEGY_ID|ID|-|-|PRIMARY KEY|
|2|FK_PROCUREMENT_STRATEGY_RESPONSIBLE_PERSON|RESPONSIBLE_PERSON|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_PROCUREMENT_STRATEGY_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |EMPLOYEE_DATA| RESPONSIBLE_PERSON|- |
|2 |MERCHANT_DATA| MERCHANT|- |






 
### Table SUPPLIER_AUDIT_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|SUPPLIER|Supplier|BIGINT|1 |
|3|AUDIT_DATE|Audit Date|DATE|2024-10-25 |
|4|AUDITOR|Auditor|BIGINT|1 |
|5|FINDINGS|Findings|VARCHAR(100)|存在安全生产隐患 |
|6|MERCHANT|Merchant|BIGINT|1 |
|7|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|8|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_SUPPLIER_AUDIT_ID|ID|PRIMARY KEY||
|2|PK_SUPPLIER_AUDIT_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_SUPPLIER_AUDIT_SUPPLIER|SUPPLIER|INDEX||
|4|IDX_SUPPLIER_AUDIT_AUDITOR|AUDITOR|INDEX||
|5|IDX_SUPPLIER_AUDIT_MERCHANT|MERCHANT|INDEX||
|6|IDX_SUPPLIER_AUDIT_AUDIT_DATE|AUDIT_DATE|INDEX||
|7|IDX_SUPPLIER_AUDIT_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_SUPPLIER_AUDIT_ID|ID|-|-|PRIMARY KEY|
|2|FK_SUPPLIER_AUDIT_SUPPLIER|SUPPLIER|SUPPLIER_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_SUPPLIER_AUDIT_AUDITOR|AUDITOR|EMPLOYEE_DATA|ID|CASCADE ON DELETE and UPDATE|
|4|FK_SUPPLIER_AUDIT_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |SUPPLIER_DATA| SUPPLIER|- |
|2 |EMPLOYEE_DATA| AUDITOR|- |
|3 |MERCHANT_DATA| MERCHANT|- |






 
### Table TRANSPORTATION_MODE_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|NAME|Name|VARCHAR(100)|公路运输 |
|3|CODE|Code|VARCHAR(100)|ROAD |
|4|MERCHANT|Merchant|BIGINT|1 |
|5|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_TRANSPORTATION_MODE_ID|ID|PRIMARY KEY||
|2|PK_TRANSPORTATION_MODE_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_TRANSPORTATION_MODE_MERCHANT|MERCHANT|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_TRANSPORTATION_MODE_ID|ID|-|-|PRIMARY KEY|
|2|FK_TRANSPORTATION_MODE_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |






#### Internal Data
|ID |NAME |CODE |MERCHANT |VERSION |
|:----------|:----------|:----------|:----------|:----------|
|1|公路运输|ROAD|1|1|
|2|铁路运输|RAIL|1|1|
|3|空运|AIR|1|1|
|4|海运|SEA|1|1|
 
### Table DELIVERY_ROUTE_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|ROUTE_NAME|Route Name|VARCHAR(100)|浦东新区配送路线 |
|3|MERCHANT|Merchant|BIGINT|1 |
|4|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|5|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_DELIVERY_ROUTE_ID|ID|PRIMARY KEY||
|2|PK_DELIVERY_ROUTE_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_DELIVERY_ROUTE_MERCHANT|MERCHANT|INDEX||
|4|IDX_DELIVERY_ROUTE_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_DELIVERY_ROUTE_ID|ID|-|-|PRIMARY KEY|
|2|FK_DELIVERY_ROUTE_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |MERCHANT_DATA| MERCHANT|- |



#### Depended by

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |ROUTE_STOP_DATA| DELIVERY_ROUTE|- |






 
### Table ROUTE_STOP_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|DELIVERY_ROUTE|Delivery Route|BIGINT|1 |
|3|STOP_NAME|Stop Name|VARCHAR(100)|客户A |
|4|STOP_SEQUENCE|Stop Sequence|INTEGER|1 |
|5|MERCHANT|Merchant|BIGINT|1 |
|6|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|7|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_ROUTE_STOP_ID|ID|PRIMARY KEY||
|2|PK_ROUTE_STOP_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_ROUTE_STOP_DELIVERY_ROUTE|DELIVERY_ROUTE|INDEX||
|4|IDX_ROUTE_STOP_MERCHANT|MERCHANT|INDEX||
|5|IDX_ROUTE_STOP_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_ROUTE_STOP_ID|ID|-|-|PRIMARY KEY|
|2|FK_ROUTE_STOP_DELIVERY_ROUTE|DELIVERY_ROUTE|DELIVERY_ROUTE_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_ROUTE_STOP_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |DELIVERY_ROUTE_DATA| DELIVERY_ROUTE|- |
|2 |MERCHANT_DATA| MERCHANT|- |






 
### Table TRANSPORTATION_COST_DATA

#### Columns
| # | Column Name | Name    | Type        | Sample       |
|:--|:-----------|:--------|:------------|:-------------|
|1|ID|Id|BIGINT|1 |
|2|SHIPMENT|Shipment|BIGINT|1 |
|3|COST_AMOUNT|Cost Amount|NUMERIC(19,7)|1500.50 |
|4|COST_TYPE|Cost Type|VARCHAR(100)|运费 |
|5|MERCHANT|Merchant|BIGINT|1 |
|6|CREATE_TIME|Create Time|TIMESTAMP|createTime() |
|7|VERSION|Version|BIGINT|1 |



#### Index

| # | Index Name | Columns | Type | Remark       |
|:--|:----------|:----------------|----------------:|:-------------|
|1|PK_TRANSPORTATION_COST_ID|ID|PRIMARY KEY||
|2|PK_TRANSPORTATION_COST_ID_VERSION|ID,VERSION|UNIQUE KEY||
|3|IDX_TRANSPORTATION_COST_SHIPMENT|SHIPMENT|INDEX||
|4|IDX_TRANSPORTATION_COST_MERCHANT|MERCHANT|INDEX||
|5|IDX_TRANSPORTATION_COST_CREATE_TIME|CREATE_TIME|INDEX||




#### Constraints

| # | Constraint Name | Column | Reference Table | Reference Column       |Remark       |
|:--|:---------------|:----------------|:----------------|:-------------|:-------------|
|1|PK_TRANSPORTATION_COST_ID|ID|-|-|PRIMARY KEY|
|2|FK_TRANSPORTATION_COST_SHIPMENT|SHIPMENT|SHIPMENT_DATA|ID|CASCADE ON DELETE and UPDATE|
|3|FK_TRANSPORTATION_COST_MERCHANT|MERCHANT|MERCHANT_DATA|ID|CASCADE ON DELETE and UPDATE|


#### Depends Tables

| # | Table Name | Reference Column | Remark       |
|:--|:----------|:-----------------|:-------------|
|1 |SHIPMENT_DATA| SHIPMENT|- |
|2 |MERCHANT_DATA| MERCHANT|- |







