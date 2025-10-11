/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
DROP TABLE IF EXISTS department_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE department_data (
  id bigint NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `code` bigint DEFAULT NULL,
  merchant bigint DEFAULT NULL,
  version bigint DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES department_data WRITE;
/*!40000 ALTER TABLE department_data DISABLE KEYS */;
INSERT INTO department_data VALUES (1,'运营部',1001,1,1),(2,'研发部',1002,1,1),(3,'供应链',1003,1,1);
/*!40000 ALTER TABLE department_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS employee_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE employee_data (
  id bigint NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `code` bigint DEFAULT NULL,
  security_code varchar(8) DEFAULT NULL,
  external_id varchar(100) DEFAULT NULL,
  merchant bigint DEFAULT NULL,
  version bigint DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES employee_data WRITE;
/*!40000 ALTER TABLE employee_data DISABLE KEYS */;
INSERT INTO employee_data VALUES (1,'反馈提交代理',NULL,NULL,'E000118R',1,1),(2,'吴经理',NULL,NULL,'E000117R',1,1),(3,'吴经理',NULL,NULL,'E000117',3,1),(4,'吴经理',NULL,NULL,'E000117',2,1);
/*!40000 ALTER TABLE employee_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS feedback_item_attachment_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE feedback_item_attachment_data (
  id bigint NOT NULL,
  file_name varchar(200) DEFAULT NULL,
  mime_type varchar(200) DEFAULT NULL,
  resource_key varchar(200) DEFAULT NULL,
  resource_url varchar(400) DEFAULT NULL,
  create_time timestamp NULL DEFAULT NULL,
  feedback_item bigint DEFAULT NULL,
  version bigint DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES feedback_item_attachment_data WRITE;
/*!40000 ALTER TABLE feedback_item_attachment_data DISABLE KEYS */;
INSERT INTO feedback_item_attachment_data VALUES (1,'abc','image/png','key-1213','https://drplant.com.cn/url','2025-09-25 21:28:10',1,1);
/*!40000 ALTER TABLE feedback_item_attachment_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS feedback_item_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE feedback_item_data (
  id bigint NOT NULL,
  feedback_number varchar(100) DEFAULT NULL,
  realname tinyint(1) DEFAULT NULL,
  mobile_phone varchar(100) DEFAULT NULL,
  target_department bigint DEFAULT NULL,
  target_name varchar(40) DEFAULT NULL,
  main_type bigint DEFAULT NULL,
  detail_type bigint DEFAULT NULL,
  title varchar(40) DEFAULT NULL,
  content text,
  feedback_result_status bigint DEFAULT NULL,
  feedback_resolve_status bigint DEFAULT NULL,
  create_time timestamp NULL DEFAULT NULL,
  remote_ip varchar(100) DEFAULT NULL,
  device varchar(100) DEFAULT NULL,
  network varchar(100) DEFAULT NULL,
  merchant bigint DEFAULT NULL,
  version bigint DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  role_type bigint DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES feedback_item_data WRITE;
/*!40000 ALTER TABLE feedback_item_data DISABLE KEYS */;
INSERT INTO feedback_item_data VALUES (1,'FK-123Udfkdf-001',0,'18981811689',1,'李某13123',1,3,'发现有违规行为','发现违规',1,1,'2025-09-25 21:28:10','12312','iPhone','WIFI',1,4,NULL,NULL),(2,'FK-08mcMhgRaDRb26_OuIRHolxA-2691',1,'18981811689',2,'112312',1,1,'12312','123123',1,1,'2025-09-26 17:30:46','192.168.10.1','Apple Macintosh','3g',1,1,'Philip',2),(3,'FK-08arCgG_LVR7ejASYYUJ1aRg-1085',1,'18981811689',2,'112312',1,1,'12312','123123',1,1,'2025-09-26 17:31:04','192.168.10.1','Apple Macintosh','3g',1,1,'Philip',2),(4,'FK-081bMjDEoVQO2YfHltFOTD1w-9644',1,'18981811689',2,'112312',1,1,'12312','123123',1,1,'2025-09-26 17:32:05','192.168.10.1','Apple Macintosh','3g',1,1,'Philip',2),(5,'FK-08brubZo5_S_-OyWdQYhZ_wA-3270',1,'18981811689',2,'112312',1,1,'12312','123123',1,1,'2025-09-26 17:36:14','192.168.10.1','Apple Macintosh','3g',1,1,'Philip',2),(6,'FK-08DIxKYESsTx6IkSBtqSIk0g-4830',0,'18981811689',2,'112312',1,1,'12312','123123',1,1,'2025-09-26 17:36:23','192.168.10.1','Apple Macintosh','3g',1,1,'Philip',2),(7,'FK-08BX5fch3SRau3uL8t4mKN9A-1829',0,'18981811689',2,'112312',1,1,'12312','123123',1,1,'2025-09-26 17:44:09','116.169.2.44','Apple Macintosh','3g',1,1,'Philip',2),(8,'FK-08vRMbzlmvR5-OTAn1dOamaw-6495',0,'18981811689',2,'112312',1,1,'12312','123123',1,1,'2025-09-26 17:45:51','116.169.2.44','Apple Macintosh','3g',1,1,'Philip',2),(9,'FK-08Lm_CEKnXTpWBa-NJZhzG2w-6139',0,'18981811689',2,'112312',1,1,'12312','123123',1,1,'2025-09-26 17:49:59','116.169.2.44','Apple Macintosh','3g',1,1,'Philip',2),(10,'FK-08pdyyeDOORA6kOl11QxXeuQ-1887',0,'18981811689',2,'112312',1,1,'12312','123123',1,1,'2025-09-26 17:50:01','116.169.2.44','Apple Macintosh','3g',1,1,'Philip',2),(11,'FK-08sRh3edXLRnWEtPzeGutVHg-8336',0,'18981811689',2,'112312',1,1,'12312','123123',1,1,'2025-09-26 17:50:03','116.169.2.44','Apple Macintosh','3g',1,1,'Philip',2),(12,'FK-08Fsp8yPmtST6v4iF5o4F60A-2783',0,'18981811689',2,'112312',1,1,'12312','123123',1,1,'2025-09-26 18:01:16','116.169.2.44','Apple Macintosh','4g',1,1,'Philip',2),(13,'FK-08rxp0lP9OQqq_HhbiZX4oOg-6265',0,'18981811689',2,'112312',1,1,'12312','123123',1,1,'2025-09-26 18:01:51','116.169.2.44','Apple Macintosh','4g',1,1,'Philip',2),(14,'FK-08UxycylcOSrGbu1sWa63Opg-1651',0,'18981811689',2,'112312',1,1,'12312','123123',1,1,'2025-09-26 18:05:24','116.169.2.44','Apple Macintosh','4g',1,1,'Philip',2),(15,'FK-08fcGM3FpATZOqBhTaBZ3nTA-1220',0,'18981811689',2,'112312',1,1,'12312','123123',1,1,'2025-09-26 18:08:07','116.169.2.44','Apple Macintosh','3g',1,1,'Philip',2),(16,'FK-08YOjaJZ-tQVKFjUQMltxbIw-1158',0,'18981811689',2,'112312',1,1,'12312','123123',1,1,'2025-09-26 18:11:38','116.169.2.44','Apple Macintosh','3g',1,1,'Philip',2),(17,'FK-08Ki8uQXkxQfmmw8skFGU-pA-9617',0,'18981811689',2,'112312',1,1,'12312','123123',1,1,'2025-09-26 18:11:49','116.169.2.44','Apple Macintosh','3g',1,1,'Philip',2),(18,'FK-080QUjJ2hORUSiYqp8K25PXw-5091',0,'18981811689',2,'112312',1,1,'12312','123123',1,1,'2025-09-26 18:17:27','116.169.2.44','Apple Macintosh','3g',1,1,'Philip',2),(19,'FK-08v874p_WoSOeXuLrf9CnXdg-9583',1,'18628131320',3,'ZHANG XILAI',1,1,'问题很大大','1231212',1,1,'2025-09-26 18:41:59','116.169.2.44','Apple Macintosh','3g',1,1,'ZHANG XILAI',2),(20,'FK-08ZMy8y_rXQsetFhO_9qiJsQ-7577',1,'18981811689',1,'sfd123123',1,1,'123','12312',1,1,'2025-09-26 18:44:40','116.169.2.44','Apple Macintosh','4g',1,1,'ZHANG XILAI',2),(21,'FK-08ApfAitAOTKOJfF-UDt8pHA-5745',1,'3107702894',2,'123',1,1,'123','12',1,1,'2025-09-26 18:55:20','116.169.2.44','Apple Macintosh','4g',1,1,'ZHANG XILAI',1),(22,'FK-08ds7QNu78Tn2WgxSChSHnTA-3621',1,'3107702894',1,'123',1,1,'123123','21312',1,1,'2025-09-26 19:00:16','116.169.2.44','Apple Macintosh','3g',1,1,'ZHANG XILAI',1),(23,'FK-08-T5FaAjIRI2s7alRGUWtqw-4501',0,'<匿名>',1,'123123',1,1,'12312','12',1,1,'2025-09-26 19:06:53','116.169.2.44','Apple Macintosh','3g',1,1,'<匿名>',1),(24,'FK-08kSquOLa3T_68NtxwFv8C2w-1483',0,'<匿名>',1,'12312',1,1,'C123123','问题描述：在支付订单时系统提示“支付失败”，但银行卡已扣款。                    详细描述：今天下午14:30左右，我在完成订单支付时，系统提示”支付失败，请重试”。但我的银行卡已经收到了扣款短信，金额为¥299.00。订单状态仍显示”待支付”，担心重复支付。',1,3,'2025-09-26 20:40:49','116.169.2.44','Apple Macintosh','3g',1,3,'<匿名>',1);
/*!40000 ALTER TABLE feedback_item_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS feedback_item_log_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE feedback_item_log_data (
  id bigint NOT NULL,
  create_time timestamp NULL DEFAULT NULL,
  title varchar(40) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  content varchar(100) DEFAULT NULL,
  remote_ip varchar(100) DEFAULT NULL,
  device varchar(100) DEFAULT NULL,
  network varchar(100) DEFAULT NULL,
  feedback_item bigint DEFAULT NULL,
  version bigint DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES feedback_item_log_data WRITE;
/*!40000 ALTER TABLE feedback_item_log_data DISABLE KEYS */;
INSERT INTO feedback_item_log_data VALUES (1,'2025-09-26 22:34:22','客户标记解决','消息','客户标记解决','116.169.2.44','Apple Macintosh','4g',24,1);
/*!40000 ALTER TABLE feedback_item_log_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS feedback_main_type_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE feedback_main_type_data (
  id bigint NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `code` bigint DEFAULT NULL,
  merchant bigint DEFAULT NULL,
  version bigint DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES feedback_main_type_data WRITE;
/*!40000 ALTER TABLE feedback_main_type_data DISABLE KEYS */;
INSERT INTO feedback_main_type_data VALUES (1,'不良行为举报',101,1,1),(2,'改善建议',103,1,1),(3,'我的吐槽',103,1,1);
/*!40000 ALTER TABLE feedback_main_type_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS feedback_resolve_status_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE feedback_resolve_status_data (
  id bigint NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `code` bigint DEFAULT NULL,
  color varchar(100) DEFAULT NULL,
  merchant bigint DEFAULT NULL,
  version bigint DEFAULT NULL,
  progress int DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES feedback_resolve_status_data WRITE;
/*!40000 ALTER TABLE feedback_resolve_status_data DISABLE KEYS */;
INSERT INTO feedback_resolve_status_data VALUES (1,'待分配',101,'#433294',1,1,20),(2,'正在处理',102,'#372882',1,1,60),(3,'已解决',103,'#7ed321',1,2,100);
/*!40000 ALTER TABLE feedback_resolve_status_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS feedback_result_status_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE feedback_result_status_data (
  id bigint NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `code` bigint DEFAULT NULL,
  main_type bigint DEFAULT NULL,
  version bigint DEFAULT NULL,
  merchant bigint DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES feedback_result_status_data WRITE;
/*!40000 ALTER TABLE feedback_result_status_data DISABLE KEYS */;
INSERT INTO feedback_result_status_data VALUES (1,'未查实',1,NULL,1,1),(2,'已查实',2,NULL,1,1),(3,'部分属实',3,NULL,1,1);
/*!40000 ALTER TABLE feedback_result_status_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS feedback_sub_type_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE feedback_sub_type_data (
  id bigint NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `code` bigint DEFAULT NULL,
  main_type bigint DEFAULT NULL,
  version bigint DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES feedback_sub_type_data WRITE;
/*!40000 ALTER TABLE feedback_sub_type_data DISABLE KEYS */;
INSERT INTO feedback_sub_type_data VALUES (1,'宴请收礼类',1,1,1),(2,'私自与供应商沟通/收受贿赂',2,1,1),(3,'报假帐财务违规',3,1,1),(4,'以权谋私利报复',4,1,1),(5,'业绩造假',5,1,1),(6,'串货卖私货运营违规',6,1,1),(7,'其他',7,1,1),(8,'产品改进',1,2,1),(9,'装修道具改进',2,2,1),(10,'流程改进',3,2,1),(11,'其他',4,2,1),(12,'工作环境',1,3,1),(13,'企业文化',2,3,1),(14,'我就想说',3,3,1),(15,'其他',4,3,1);
/*!40000 ALTER TABLE feedback_sub_type_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS merchant_backend_log_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE merchant_backend_log_data (
  id bigint NOT NULL,
  create_time timestamp NULL DEFAULT NULL,
  title varchar(40) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  content varchar(100) DEFAULT NULL,
  merchant bigint DEFAULT NULL,
  version bigint DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES merchant_backend_log_data WRITE;
/*!40000 ALTER TABLE merchant_backend_log_data DISABLE KEYS */;
/*!40000 ALTER TABLE merchant_backend_log_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS merchant_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE merchant_data (
  id bigint NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  external_id varchar(100) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  credential varchar(300) DEFAULT NULL,
  `found` timestamp NULL DEFAULT NULL,
  platform bigint DEFAULT NULL,
  update_time timestamp NULL DEFAULT NULL,
  version bigint DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES merchant_data WRITE;
/*!40000 ALTER TABLE merchant_data DISABLE KEYS */;
INSERT INTO merchant_data VALUES (1,'植物医生VoE系统','M000011R',NULL,NULL,'2025-09-25 15:04:01',1,'2025-09-25 15:04:01',1);
/*!40000 ALTER TABLE merchant_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS platform_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE platform_data (
  id bigint NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  create_time timestamp NULL DEFAULT NULL,
  last_update_time timestamp NULL DEFAULT NULL,
  version bigint DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES platform_data WRITE;
/*!40000 ALTER TABLE platform_data DISABLE KEYS */;
INSERT INTO platform_data VALUES (1,'植物医生VOE','2025-09-25 14:58:54','2025-09-25 14:58:54',1);
/*!40000 ALTER TABLE platform_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS read_flag_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE read_flag_data (
  id bigint NOT NULL,
  `comment` varchar(100) DEFAULT NULL,
  employee bigint DEFAULT NULL,
  create_time timestamp NULL DEFAULT NULL,
  feedback_item bigint DEFAULT NULL,
  version bigint DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES read_flag_data WRITE;
/*!40000 ALTER TABLE read_flag_data DISABLE KEYS */;
INSERT INTO read_flag_data VALUES (1,'读取',2,'2025-09-25 21:28:10',1,1);
/*!40000 ALTER TABLE read_flag_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS request_type_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE request_type_data (
  id bigint NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  entrance_view varchar(100) DEFAULT NULL,
  platform bigint DEFAULT NULL,
  version bigint DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES request_type_data WRITE;
/*!40000 ALTER TABLE request_type_data DISABLE KEYS */;
INSERT INTO request_type_data VALUES (1,'确认任务','CreateTask','create_task',1,1);
/*!40000 ALTER TABLE request_type_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS role_type_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE role_type_data (
  id bigint NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `code` bigint DEFAULT NULL,
  merchant bigint DEFAULT NULL,
  version bigint DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES role_type_data WRITE;
/*!40000 ALTER TABLE role_type_data DISABLE KEYS */;
INSERT INTO role_type_data VALUES (1,'供应商',103,1,2),(2,'加盟商',102,1,2),(3,'企业内部员工',101,1,2),(4,'其他',104,1,1),(5,'供应商',1,1,-2);
/*!40000 ALTER TABLE role_type_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS service_request_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE service_request_data (
  id bigint NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  action_type bigint DEFAULT NULL,
  `snapshot` text,
  version bigint DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES service_request_data WRITE;
/*!40000 ALTER TABLE service_request_data DISABLE KEYS */;
/*!40000 ALTER TABLE service_request_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS supplement_content_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE supplement_content_data (
  id bigint NOT NULL,
  submit_content text,
  response_content text,
  create_time timestamp NULL DEFAULT NULL,
  feedback_item bigint DEFAULT NULL,
  remote_ip varchar(100) DEFAULT NULL,
  device varchar(100) DEFAULT NULL,
  network varchar(100) DEFAULT NULL,
  version bigint DEFAULT NULL,
  update_time timestamp NULL DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES supplement_content_data WRITE;
/*!40000 ALTER TABLE supplement_content_data DISABLE KEYS */;
INSERT INTO supplement_content_data VALUES (1,'需要看看','我已经了，谢谢你','2025-09-25 21:28:10',1,'123123','iPhone','WIFI',1,NULL),(2,'123123','','2025-09-26 17:30:46',2,'192.168.10.1','Apple Macintosh','3g',1,NULL),(3,'123123','','2025-09-26 17:31:04',3,'192.168.10.1','Apple Macintosh','3g',1,NULL),(4,'123123','','2025-09-26 17:32:05',4,'192.168.10.1','Apple Macintosh','3g',1,NULL),(5,'123123','','2025-09-26 17:36:14',5,'192.168.10.1','Apple Macintosh','3g',1,NULL),(6,'123123','','2025-09-26 17:36:23',6,'192.168.10.1','Apple Macintosh','3g',1,NULL),(7,'123123','','2025-09-26 17:44:09',7,'116.169.2.44','Apple Macintosh','3g',1,NULL),(8,'123123','','2025-09-26 17:45:51',8,'116.169.2.44','Apple Macintosh','3g',1,NULL),(9,'123123','','2025-09-26 17:49:59',9,'116.169.2.44','Apple Macintosh','3g',1,NULL),(10,'123123','','2025-09-26 17:50:01',10,'116.169.2.44','Apple Macintosh','3g',1,NULL),(11,'123123','','2025-09-26 17:50:03',11,'116.169.2.44','Apple Macintosh','3g',1,NULL),(12,'123123','','2025-09-26 18:01:16',12,'116.169.2.44','Apple Macintosh','4g',1,NULL),(13,'123123','','2025-09-26 18:01:51',13,'116.169.2.44','Apple Macintosh','4g',1,NULL),(14,'123123','','2025-09-26 18:05:24',14,'116.169.2.44','Apple Macintosh','4g',1,NULL),(15,'123123','','2025-09-26 18:08:07',15,'116.169.2.44','Apple Macintosh','3g',1,NULL),(16,'123123','','2025-09-26 18:11:38',16,'116.169.2.44','Apple Macintosh','3g',1,NULL),(17,'123123','','2025-09-26 18:11:49',17,'116.169.2.44','Apple Macintosh','3g',1,NULL),(18,'123123','','2025-09-26 18:17:27',18,'116.169.2.44','Apple Macintosh','3g',1,NULL),(19,'1231212','','2025-09-26 18:41:59',19,'116.169.2.44','Apple Macintosh','3g',1,NULL),(20,'12312','','2025-09-26 18:44:40',20,'116.169.2.44','Apple Macintosh','4g',1,NULL),(21,'12','','2025-09-26 18:55:20',21,'116.169.2.44','Apple Macintosh','4g',1,NULL),(22,'21312','','2025-09-26 19:00:16',22,'116.169.2.44','Apple Macintosh','3g',1,NULL),(23,'12','','2025-09-26 19:06:53',23,'116.169.2.44','Apple Macintosh','3g',1,NULL),(24,'C1','R1','2025-09-26 20:40:49',24,'116.169.2.44','Apple Macintosh','3g',2,NULL),(32,'C7','R7','2025-09-26 22:06:55',24,'116.169.2.44','Apple Macintosh','4g',2,'2025-09-26 22:06:55'),(33,'C8','','2025-09-26 22:10:34',24,'116.169.2.44','Apple Macintosh','4g',1,'2025-09-26 22:10:34'),(34,'ccc','','2025-09-26 22:10:59',24,'116.169.2.44','Apple Macintosh','4g',1,'2025-09-26 22:10:59'),(35,'dddd','','2025-09-26 22:11:24',24,'116.169.2.44','Apple Macintosh','4g',1,'2025-09-26 22:11:24'),(36,'都dddd','','2025-09-26 22:15:03',24,'116.169.2.44','Apple Macintosh','4g',1,'2025-09-26 22:15:03');
/*!40000 ALTER TABLE supplement_content_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS teaql_id_space;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE teaql_id_space (
  type_name varchar(100) NOT NULL,
  current_level bigint DEFAULT NULL,
  PRIMARY KEY (type_name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES teaql_id_space WRITE;
/*!40000 ALTER TABLE teaql_id_space DISABLE KEYS */;
INSERT INTO teaql_id_space VALUES ('Department',3),('Employee',4),('FeedbackItem',24),('FeedbackItemAttachment',1),('FeedbackItemLog',1),('FeedbackMainType',3),('FeedbackResolveStatus',3),('FeedbackResultStatus',3),('FeedbackSubType',15),('Merchant',3),('ReadFlag',1),('RoleType',5),('SupplementContent',36);
/*!40000 ALTER TABLE teaql_id_space ENABLE KEYS */;
UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

