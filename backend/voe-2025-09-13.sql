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
INSERT INTO department_data VALUES (1,'MD中心',1004,1,2),(2,'产品研发中心',1003,1,2),(3,'运营中心',1002,1,2),(4,'总经办',1001,1,1),(5,'数字科技中心',1005,1,1),(6,'财务中心',1006,1,1),(7,'审计中心',1007,1,1),(8,'品牌中心',1008,1,1),(9,'公关中心',1009,1,1),(10,'智能零售中心',1010,1,1),(11,'其他',1111,1,1);
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
  job_type bigint DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES employee_data WRITE;
/*!40000 ALTER TABLE employee_data DISABLE KEYS */;
INSERT INTO employee_data VALUES (1,'反馈提交代理',NULL,NULL,'E000118R',1,1,NULL),(2,'吴经理',NULL,NULL,'E000117R',1,3,3),(17,'演示员工',NULL,NULL,'E000119R',1,3,3),(18,'解总',NULL,NULL,'DR0001',1,1,1),(19,'总裁助理',NULL,NULL,'DR0002',1,1,2),(20,'审计',NULL,NULL,'DR0003',1,1,5),(21,'总裁助理',NULL,NULL,'E000120R',1,2,NULL),(22,'测试用户',NULL,NULL,'E000121R',1,1,5);
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
  file_size int DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES feedback_item_attachment_data WRITE;
/*!40000 ALTER TABLE feedback_item_attachment_data DISABLE KEYS */;
INSERT INTO feedback_item_attachment_data VALUES (1,'abc','image/png','key-1213','https://drplant.com.cn/url','2025-09-25 21:28:10',1,1,NULL),(2,'dr-plant-logo-v.png','image/png','voe/2025-09-27/6a55343a-57aa-4a4c-ac77-50a53ac00045.png','http://192.168.10.57:8090/vfs-api/get/voe/2025-09-27/6a55343a-57aa-4a4c-ac77-50a53ac00045.png','2025-09-27 15:56:48',25,1,27827),(3,'voe-submit.png','image/png','voe/2025-09-27/d665a496-2a36-4e76-81af-c0ae3e713bd4.png','http://192.168.10.57:8090/vfs-api/get/voe/2025-09-27/d665a496-2a36-4e76-81af-c0ae3e713bd4.png','2025-09-27 15:59:09',26,1,56688),(4,'dr-plant-logo-v.png','image/png','voe/2025-09-27/6ed4052e-0199-4353-ab42-169f9eef11e3.png','http://192.168.10.57:8090/vfs-api/get/voe/2025-09-27/6ed4052e-0199-4353-ab42-169f9eef11e3.png','2025-09-27 16:36:56',2,1,27827),(5,'植物医生VoE.pdf','application/pdf','voe/2025-09-27/77fb739f-007b-4edd-801d-9a02064e1bfa.pdf','http://192.168.10.57:8090/vfs-api/get/voe/2025-09-27/77fb739f-007b-4edd-801d-9a02064e1bfa.pdf','2025-09-27 17:06:18',19,1,289463),(6,'Screenshot 2025-09-27 at 17.35.20.png','image/png','voe/2025-09-28/30513f82-9493-4972-9c42-84bfa6946e93.png','http://192.168.10.57:8090/vfs-api/get/voe/2025-09-28/30513f82-9493-4972-9c42-84bfa6946e93.png','2025-09-28 14:00:15',28,1,352029),(7,'Screenshot 2025-09-24 at 08.55.25.png','image/png','voe/2025-09-28/4fb17c0a-e51d-4971-b02f-7e1d70ddb4d8.png','http://192.168.10.57:8090/vfs-api/get/voe/2025-09-28/4fb17c0a-e51d-4971-b02f-7e1d70ddb4d8.png','2025-09-28 14:01:42',29,1,109535),(8,'Screenshot 2025-09-27 at 17.35.20.png','image/png','voe/2025-09-28/53a514cd-0aaf-436f-802d-9eee1a7f364b.png','http://192.168.10.57:8090/vfs-api/get/voe/2025-09-28/53a514cd-0aaf-436f-802d-9eee1a7f364b.png','2025-09-28 14:07:44',30,1,352029),(9,'Screenshot 2025-09-23 at 15.43.01.png','image/png','voe/2025-09-28/67c60e0d-286d-4c4e-a642-2c263f6bc182.png','http://192.168.10.57:8090/vfs-api/get/voe/2025-09-28/67c60e0d-286d-4c4e-a642-2c263f6bc182.png','2025-09-28 14:08:24',30,1,681850),(10,'Screenshot 2025-09-23 at 15.43.01.png','image/png','voe/2025-09-28/6c0baece-4678-4a04-86c2-3551c7deee1a.png','http://192.168.10.57:8090/vfs-api/get/voe/2025-09-28/6c0baece-4678-4a04-86c2-3551c7deee1a.png','2025-09-28 16:04:30',32,1,681850),(11,'20240518114859cb983ea60f36409d9b6fe0a0fe0d692f.jpg','image/jpeg','voe/2025-09-29/ae115431-38fd-4061-b065-87f30ca64cda.jpg','http://192.168.10.57:8090/vfs-api/get/voe/2025-09-29/ae115431-38fd-4061-b065-87f30ca64cda.jpg','2025-09-29 09:28:39',34,1,125586),(12,'203406201414f917d8b628874ab69a3a4ea09adb0741.jpg','image/jpeg','voe/2025-09-29/76a209c2-3140-4ad6-967e-95448675994c.jpg','http://192.168.10.57:8090/vfs-api/get/voe/2025-09-29/76a209c2-3140-4ad6-967e-95448675994c.jpg','2025-09-29 09:31:27',34,1,27783),(13,'Screenshot 2025-09-23 at 15.38.00.png','image/png','voe/2025-09-29/eca38750-dbf0-4b99-9ad4-f89809de5c15.png','https://voe.drplt.com/vfs-api/get/voe/2025-09-29/eca38750-dbf0-4b99-9ad4-f89809de5c15.png','2025-09-29 11:40:27',35,1,55516),(14,'植物医生VoE.pdf','application/pdf','voe/2025-09-29/a90116eb-98df-4455-b3bf-87807b0145a4.pdf','https://voe.drplt.com/vfs-api/get/voe/2025-09-29/a90116eb-98df-4455-b3bf-87807b0145a4.pdf','2025-09-29 11:58:17',35,1,289463),(15,'20240518114859cb983ea60f36409d9b6fe0a0fe0d692f.jpg','image/jpeg','voe/2025-09-29/7d028869-404b-4bef-921f-23e2d8446975.jpg','http://192.168.10.57:8090/vfs-api/get/voe/2025-09-29/7d028869-404b-4bef-921f-23e2d8446975.jpg','2025-09-29 13:57:10',36,1,125586),(16,'2023蜀少年创客创意.docx','application/vnd.openxmlformats-officedocument.wordprocessingml.document','voe/2025-09-29/4912f116-2620-4fed-982e-6565945c4b70.docx','http://192.168.10.57:8090/vfs-api/get/voe/2025-09-29/4912f116-2620-4fed-982e-6565945c4b70.docx','2025-09-29 15:09:50',37,1,15816);
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
INSERT INTO feedback_item_data VALUES (1,'FK-123Udfkdf-001',0,'18981811689',1,'李某13123',1,3,'发现有违规行为','发现违规',1,1,'2025-09-25 21:28:10','12312','iPhone','WIFI',1,4,NULL,NULL),(2,'FK-08mcMhgRaDRb26_OuIRHolxA-2691',1,'18981811689',2,'112312',1,1,'12312','123123',1,1,'2025-09-26 17:30:46','192.168.10.1','Apple Macintosh','3g',1,1,'Philip',2),(3,'FK-08arCgG_LVR7ejASYYUJ1aRg-1085',1,'18981811689',2,'112312',1,1,'12312','123123',1,1,'2025-09-26 17:31:04','192.168.10.1','Apple Macintosh','3g',1,1,'Philip',2),(4,'FK-081bMjDEoVQO2YfHltFOTD1w-9644',1,'18981811689',2,'112312',1,1,'12312','123123',1,1,'2025-09-26 17:32:05','192.168.10.1','Apple Macintosh','3g',1,1,'Philip',2),(5,'FK-08brubZo5_S_-OyWdQYhZ_wA-3270',1,'18981811689',2,'112312',1,1,'12312','123123',1,1,'2025-09-26 17:36:14','192.168.10.1','Apple Macintosh','3g',1,1,'Philip',2),(6,'FK-08DIxKYESsTx6IkSBtqSIk0g-4830',0,'18981811689',2,'112312',1,1,'12312','123123',1,1,'2025-09-26 17:36:23','192.168.10.1','Apple Macintosh','3g',1,1,'Philip',2),(7,'FK-08BX5fch3SRau3uL8t4mKN9A-1829',0,'18981811689',2,'112312',1,1,'12312','123123',1,1,'2025-09-26 17:44:09','116.169.2.44','Apple Macintosh','3g',1,1,'Philip',2),(8,'FK-08vRMbzlmvR5-OTAn1dOamaw-6495',0,'18981811689',2,'112312',1,1,'12312','123123',1,4,'2025-09-26 17:45:51','116.169.2.44','Apple Macintosh','3g',1,6,'Philip',2),(9,'FK-08Lm_CEKnXTpWBa-NJZhzG2w-6139',0,'18981811689',2,'112312',1,1,'12312','123123',1,1,'2025-09-26 17:49:59','116.169.2.44','Apple Macintosh','3g',1,1,'Philip',2),(10,'FK-08pdyyeDOORA6kOl11QxXeuQ-1887',0,'18981811689',2,'112312',1,1,'12312','123123',1,1,'2025-09-26 17:50:01','116.169.2.44','Apple Macintosh','3g',1,1,'Philip',2),(11,'FK-08sRh3edXLRnWEtPzeGutVHg-8336',0,'18981811689',2,'112312',1,1,'12312','123123',1,1,'2025-09-26 17:50:03','116.169.2.44','Apple Macintosh','3g',1,1,'Philip',2),(12,'FK-08Fsp8yPmtST6v4iF5o4F60A-2783',0,'18981811689',2,'112312',1,1,'12312','123123',1,1,'2025-09-26 18:01:16','116.169.2.44','Apple Macintosh','4g',1,1,'Philip',2),(13,'FK-08rxp0lP9OQqq_HhbiZX4oOg-6265',0,'18981811689',2,'112312',1,1,'12312','123123',1,3,'2025-09-26 18:01:51','116.169.2.44','Apple Macintosh','4g',1,2,'Philip',2),(14,'FK-08UxycylcOSrGbu1sWa63Opg-1651',0,'18981811689',2,'112312',1,1,'12312','123123',1,1,'2025-09-26 18:05:24','116.169.2.44','Apple Macintosh','4g',1,1,'Philip',2),(15,'FK-08fcGM3FpATZOqBhTaBZ3nTA-1220',0,'18981811689',2,'112312',1,1,'12312','123123',1,3,'2025-09-26 18:08:07','116.169.2.44','Apple Macintosh','3g',1,2,'Philip',2),(16,'FK-08YOjaJZ-tQVKFjUQMltxbIw-1158',0,'18981811689',2,'112312',1,1,'12312','123123',1,1,'2025-09-26 18:11:38','116.169.2.44','Apple Macintosh','3g',1,1,'Philip',2),(17,'FK-08Ki8uQXkxQfmmw8skFGU-pA-9617',0,'18981811689',2,'112312',1,1,'12312','123123',1,3,'2025-09-26 18:11:49','116.169.2.44','Apple Macintosh','3g',1,2,'Philip',2),(18,'FK-080QUjJ2hORUSiYqp8K25PXw-5091',0,'18981811689',2,'112312',1,1,'12312','123123',1,1,'2025-09-26 18:17:27','116.169.2.44','Apple Macintosh','3g',1,5,'Philip',2),(19,'FK-08v874p_WoSOeXuLrf9CnXdg-9583',1,'18628131320',3,'ZHANG XILAI',1,1,'问题很大大','1231212',1,1,'2025-09-26 18:41:59','116.169.2.44','Apple Macintosh','3g',1,1,'ZHANG XILAI',2),(20,'FK-08ZMy8y_rXQsetFhO_9qiJsQ-7577',1,'18981811689',1,'sfd123123',1,1,'123','12312',1,1,'2025-09-26 18:44:40','116.169.2.44','Apple Macintosh','4g',1,1,'ZHANG XILAI',2),(21,'FK-08ApfAitAOTKOJfF-UDt8pHA-5745',1,'3107702894',2,'123',1,1,'123','12',1,3,'2025-09-26 18:55:20','116.169.2.44','Apple Macintosh','4g',1,2,'ZHANG XILAI',1),(22,'FK-08ds7QNu78Tn2WgxSChSHnTA-3621',1,'3107702894',1,'123',1,1,'123123','21312',2,2,'2025-09-26 19:00:16','116.169.2.44','Apple Macintosh','3g',1,3,'ZHANG XILAI',1),(23,'FK-08-T5FaAjIRI2s7alRGUWtqw-4501',0,'<匿名>',1,'123123',1,1,'12312','12',1,1,'2025-09-26 19:06:53','116.169.2.44','Apple Macintosh','3g',1,1,'<匿名>',1),(24,'FK-08kSquOLa3T_68NtxwFv8C2w-1483',0,'<匿名>',1,'12312',1,1,'C123123','问题描述：在支付订单时系统提示“支付失败”，但银行卡已扣款。                    详细描述：今天下午14:30左右，我在完成订单支付时，系统提示”支付失败，请重试”。但我的银行卡已经收到了扣款短信，金额为¥299.00。订单状态仍显示”待支付”，担心重复支付。',3,4,'2025-09-26 20:40:49','116.169.2.44','Apple Macintosh','3g',1,5,'<匿名>',1),(25,'FK-08aW7XYrPRRj6SL1YN3uDacg-1600',0,'<匿名>',1,'123123',1,1,'C113','C2423',2,3,'2025-09-27 15:56:48','116.169.2.44','Apple Macintosh','4g',1,5,'<匿名>',1),(26,'FK-08DSPen5csTeCYBEzxPmBxwQ-1486',0,'<匿名>',2,'123123',1,1,'C13','Cwe',2,2,'2025-09-27 15:59:09','116.169.2.44','Apple Macintosh','4g',1,16,'<匿名>',1),(27,'FK-08671iktNpQrSxAPwdEpFQcQ-2387',0,'<匿名>',1,'1314',1,1,'C4','C',1,2,'2025-09-27 23:51:47','125.70.99.127','Apple Macintosh','4g',1,2,'<匿名>',1),(28,'FK-08vHy0Da2FTkG30-hCzN2kig-7155',0,'<匿名>',1,'1231',1,1,'21','123',1,1,'2025-09-28 14:00:15','125.70.99.127','Apple Macintosh','4g',1,1,'<匿名>',1),(29,'FK-08Yh7efYyIQD24KUQXnAY4NQ-9130',0,'<匿名>',1,'和宋佳172637',1,1,'发新问题','问题比较严重一点儿',1,1,'2025-09-28 14:01:42','125.70.99.127','Apple iPhone','未知',1,1,'<匿名>',1),(30,'FK-08uzg6DO0pS2eXxp3vGdB-uA-2034',0,'<匿名>',1,'相关人员',1,1,'举报宴请','发现了宴请shi\'jian',1,1,'2025-09-28 14:07:44','125.70.99.127','Apple Macintosh','4g',1,4,'<匿名>',1),(31,'FK-08CoOoG_vHTXOy87XHbAXRHA-6107',1,'18981811689',1,'1231',1,1,'T','内容提供shang',1,4,'2025-09-28 15:08:33','125.70.99.127','Apple Macintosh','4g',1,3,'张喜来',1),(32,'FK-08SblLIIfUSPeImghcFUs7XQ-6107',1,'18981811689',1,'堆砌物',2,10,'道具可以改良','人类的建议不可以',1,4,'2025-09-28 16:04:30','125.70.99.127','Apple iPhone','未知',1,2,'和建设家',1),(33,'FK-08UVvM-7jrRg6MUQvfkoAwEw-9897',0,'<匿名>',2,'待机时间',3,12,'环境问题','简直我我简直想吐槽一个大的',1,2,'2025-09-28 21:26:29','125.70.99.127','Apple iPhone','未知',1,2,'<匿名>',1),(34,'FK-08x2eleDkWS9utxhatPH31KQ-5815',0,'<匿名>',7,'审计',1,2,'收取贿赂','收费金额10w',1,1,'2025-09-29 09:28:39','103.61.153.19','Apple Macintosh','未知',1,1,'<匿名>',2),(35,'FK-08yAoSWBalTsyET597ZL-7_w-2941',0,'<匿名>',1,'XILAI ZHANG',1,1,'T1','C',1,1,'2025-09-29 11:22:20','116.169.2.44','Apple Macintosh','4g',1,1,'<匿名>',1),(36,'FK-08T-W3FHGMRP2ZZyKJgwa4Bw-2903',0,'<匿名>',11,'其他',3,15,'其他','其他内容',1,1,'2025-09-29 13:56:50','103.61.153.19','Apple Macintosh','未知',1,1,'<匿名>',1),(37,'FK-086OAPH_WhTeqlyUjcyChfRA-4765',0,'<匿名>',1,'12123',1,1,'T\'1','C3',1,1,'2025-09-29 15:09:50','125.70.99.127','Apple Macintosh','4g',1,1,'<匿名>',1);
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
INSERT INTO feedback_item_log_data VALUES (72,'2025-09-27 23:09:54','管理员','消息','改变核查状态为:已查实','116.169.2.44','Apple Macintosh','4g',26,1),(73,'2025-09-27 23:09:58','管理员','消息','改变解决状态为:待分配','116.169.2.44','Apple Macintosh','4g',26,1),(74,'2025-09-27 23:10:01','管理员','消息','改变核查状态为:未查实','116.169.2.44','Apple Macintosh','4g',26,1),(75,'2025-09-27 23:10:39','管理员','消息','改变核查状态为:部分属实','116.169.2.44','Apple Macintosh','4g',24,1),(76,'2025-09-27 23:10:39','管理员','消息','改变核查状态为:部分属实','116.169.2.44','Apple Macintosh','4g',24,1),(77,'2025-09-27 23:10:39','管理员','消息','改变解决状态为:已办结','116.169.2.44','Apple Macintosh','4g',24,1),(78,'2025-09-27 23:10:39','管理员','消息','改变解决状态为:已办结','116.169.2.44','Apple Macintosh','4g',24,1),(79,'2025-09-27 23:10:47','管理员','消息','改变解决状态为:待分配','116.169.2.44','Apple Macintosh','4g',25,1),(80,'2025-09-27 23:10:57','管理员','消息','改变核查状态为:已查实','116.169.2.44','Apple Macintosh','4g',25,1),(81,'2025-09-27 23:10:57','管理员','消息','改变解决状态为:正调查','116.169.2.44','Apple Macintosh','4g',25,1),(83,'2025-09-27 23:10:57','管理员','消息','改变核查状态为:已查实','116.169.2.44','Apple Macintosh','4g',25,1),(84,'2025-09-27 23:11:03','管理员','消息','改变核查状态为:未查实','116.169.2.44','Apple Macintosh','4g',20,1),(85,'2025-09-27 23:11:03','管理员','消息','改变核查状态为:未查实','116.169.2.44','Apple Macintosh','4g',20,1),(86,'2025-09-27 23:11:03','管理员','消息','改变解决状态为:待分配','116.169.2.44','Apple Macintosh','4g',20,1),(87,'2025-09-27 23:11:03','管理员','消息','改变解决状态为:待分配','116.169.2.44','Apple Macintosh','4g',20,1),(88,'2025-09-27 23:51:47','系统','消息','用户提交反馈','125.70.99.127','Apple Macintosh','4g',27,1),(89,'2025-09-27 23:59:49','管理员','消息','改变解决状态为:待分配','125.70.99.127','Apple Macintosh','4g',26,1),(90,'2025-09-27 23:59:49','管理员','消息','改变解决状态为:待分配','125.70.99.127','Apple Macintosh','4g',26,1),(91,'2025-09-27 23:59:49','管理员','消息','改变核查状态为:未查实','125.70.99.127','Apple Macintosh','4g',26,1),(92,'2025-09-27 23:59:49','管理员','消息','改变核查状态为:未查实','125.70.99.127','Apple Macintosh','4g',26,1),(93,'2025-09-28 00:00:41','管理员','消息','改变核查状态为:已查实','125.70.99.127','Apple Macintosh','4g',26,1),(94,'2025-09-28 00:00:44','管理员','消息','改变解决状态为:已分配','125.70.99.127','Apple Macintosh','4g',26,1),(95,'2025-09-28 00:01:07','管理员','消息','改变核查状态为:未查实','125.70.99.127','Apple Macintosh','4g',23,1),(96,'2025-09-28 00:01:07','管理员','消息','改变解决状态为:待分配','125.70.99.127','Apple Macintosh','4g',23,1),(97,'2025-09-28 00:01:07','管理员','消息','改变核查状态为:未查实','125.70.99.127','Apple Macintosh','4g',23,1),(98,'2025-09-28 00:01:07','管理员','消息','改变解决状态为:待分配','125.70.99.127','Apple Macintosh','4g',23,1),(99,'2025-09-28 00:06:44','管理员','消息','改变解决状态为:已分配','125.70.99.127','Apple Macintosh','4g',8,1),(100,'2025-09-28 00:06:53','管理员','消息','改变核查状态为:部分属实','125.70.99.127','Apple Macintosh','4g',8,1),(101,'2025-09-28 00:06:58','管理员','消息','改变核查状态为:已查实','125.70.99.127','Apple Macintosh','4g',8,1),(102,'2025-09-28 00:07:09','管理员','消息','改变解决状态为:已办结','125.70.99.127','Apple Macintosh','4g',8,1),(103,'2025-09-28 00:07:22','管理员','消息','改变核查状态为:未查实','125.70.99.127','Apple Macintosh','4g',8,1),(104,'2025-09-28 00:18:46','管理员','消息','改变核查状态为:已查实','125.70.99.127','Apple Macintosh','4g',22,1),(105,'2025-09-28 00:18:51','管理员','消息','改变解决状态为:已分配','125.70.99.127','Apple Macintosh','4g',22,1),(106,'2025-09-28 12:30:19','管理员','消息','改变解决状态为:已分配','125.70.99.127','Apple Macintosh','4g',27,1),(107,'2025-09-28 14:00:15','系统','消息','用户提交反馈','125.70.99.127','Apple Macintosh','4g',28,1),(108,'2025-09-28 14:01:42','系统','消息','用户提交反馈','125.70.99.127','Apple iPhone','未知',29,1),(109,'2025-09-28 14:07:44','系统','消息','用户提交反馈','125.70.99.127','Apple Macintosh','4g',30,1),(110,'2025-09-28 14:08:16','系统','消息','用户补充追问内容','125.70.99.127','Apple Macintosh','4g',30,1),(111,'2025-09-28 14:08:24','系统','消息','用户增加附件','125.70.99.127','Apple Macintosh','4g',30,1),(112,'2025-09-28 14:09:50','管理员','消息','改变解决状态为:已分配','125.70.99.127','Apple Macintosh','4g',30,1),(113,'2025-09-28 14:10:06','管理员','消息','增加了回复内容: 尊敬的客户，您好!我们已收到您的反馈...','125.70.99.127','Apple Macintosh','4g',30,1),(114,'2025-09-28 14:10:20','系统','消息','客户标记解决','125.70.99.127','Apple Macintosh','4g',30,1),(115,'2025-09-28 15:08:33','系统','消息','用户提交反馈','125.70.99.127','Apple Macintosh','4g',31,1),(116,'2025-09-28 15:17:04','系统','消息','客户标记解决','125.70.99.127','Apple Macintosh','4g',31,1),(117,'2025-09-28 16:04:30','系统','消息','用户提交反馈','125.70.99.127','Apple iPhone','未知',32,1),(118,'2025-09-28 16:04:49','系统','消息','客户标记解决','125.70.99.127','Apple iPhone','未知',32,1),(119,'2025-09-28 18:46:39','系统','消息','客户标记解决','125.70.99.127','Apple Macintosh','4g',31,1),(120,'2025-09-28 20:54:36','管理员','消息','改变解决状态为:正调查','125.70.99.127','Apple Macintosh','4g',30,1),(121,'2025-09-28 20:54:39','管理员','消息','改变解决状态为:待分配','125.70.99.127','Apple Macintosh','4g',30,1),(122,'2025-09-28 21:26:29','系统','消息','用户提交反馈','125.70.99.127','Apple iPhone','未知',33,1),(123,'2025-09-28 22:57:17','管理员','消息','改变解决状态为:已分配','116.169.2.44','Apple Macintosh','4g',33,1),(124,'2025-09-29 09:28:39','系统','消息','用户提交反馈','103.61.153.19','Apple Macintosh','未知',34,1),(125,'2025-09-29 09:31:27','系统','消息','用户增加附件','103.61.153.19','Apple Macintosh','未知',34,1),(126,'2025-09-29 09:47:46','系统','消息','用户补充追问内容','103.61.153.19','Apple Macintosh','未知',34,1),(127,'2025-09-29 11:22:20','系统','消息','用户提交反馈','116.169.2.44','Apple Macintosh','4g',35,1),(128,'2025-09-29 11:40:27','系统','消息','用户增加附件','116.169.2.44','Apple Macintosh','4g',35,1),(129,'2025-09-29 11:58:17','系统','消息','用户增加附件','116.169.2.44','Apple Macintosh','4g',35,1),(130,'2025-09-29 13:56:50','系统','消息','用户提交反馈','103.61.153.19','Apple Macintosh','未知',36,1),(131,'2025-09-29 13:57:10','系统','消息','用户增加附件','103.61.153.19','Apple Macintosh','未知',36,1),(132,'2025-09-29 15:09:50','系统','消息','用户提交反馈','125.70.99.127','Apple Macintosh','4g',37,1);
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
  step_index int DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES feedback_resolve_status_data WRITE;
/*!40000 ALTER TABLE feedback_resolve_status_data DISABLE KEYS */;
INSERT INTO feedback_resolve_status_data VALUES (1,'待分配',101,'#433294',1,1,20,0),(2,'已分配',102,'#372882',1,2,60,1),(3,'正调查',103,'#1f1f1d',1,4,80,2),(4,'已办结',104,'green',1,2,100,3);
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
DROP TABLE IF EXISTS job_type_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE job_type_data (
  id bigint NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  remark text,
  merchant bigint DEFAULT NULL,
  version bigint DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES job_type_data WRITE;
/*!40000 ALTER TABLE job_type_data DISABLE KEYS */;
INSERT INTO job_type_data VALUES (1,'总裁','处置不良行为，查看其他',1,2),(2,'总裁助理','处置不良行为，查看其他',1,2),(3,'人力资源','管理吐槽的处置',1,2),(4,'公共服务用户','提交者使用这个职位',1,2),(5,'审计','审计中心',1,1);
/*!40000 ALTER TABLE job_type_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS job_type_with_main_type_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE job_type_with_main_type_data (
  id bigint NOT NULL,
  main_type bigint DEFAULT NULL,
  view_job_type bigint DEFAULT NULL,
  process_job_type bigint DEFAULT NULL,
  create_time timestamp NULL DEFAULT NULL,
  version bigint DEFAULT NULL,
  job_type bigint DEFAULT NULL,
  permission_type bigint DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES job_type_with_main_type_data WRITE;
/*!40000 ALTER TABLE job_type_with_main_type_data DISABLE KEYS */;
INSERT INTO job_type_with_main_type_data VALUES (1,1,NULL,NULL,NULL,2,1,2),(2,1,NULL,NULL,'2025-09-28 19:12:05',1,2,2),(3,1,NULL,NULL,'2025-09-28 19:12:05',-2,2,1),(4,2,NULL,NULL,'2025-09-28 19:12:05',1,2,1),(5,3,NULL,NULL,'2025-09-28 19:12:05',1,2,1),(6,2,NULL,NULL,NULL,1,1,1),(7,3,NULL,NULL,NULL,1,1,1),(8,3,NULL,NULL,'2025-09-28 19:49:24',2,3,1),(9,1,NULL,NULL,'2025-09-29 09:23:06',1,5,2),(10,2,NULL,NULL,NULL,1,5,1);
/*!40000 ALTER TABLE job_type_with_main_type_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS merchant_backend_log_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE merchant_backend_log_data (
  id bigint NOT NULL,
  create_time timestamp NULL DEFAULT NULL,
  title varchar(200) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  content varchar(100) DEFAULT NULL,
  merchant bigint DEFAULT NULL,
  version bigint DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES merchant_backend_log_data WRITE;
/*!40000 ALTER TABLE merchant_backend_log_data DISABLE KEYS */;
INSERT INTO merchant_backend_log_data VALUES (1,'2025-09-28 23:42:34','用户吴经理@植物医生VoE系统遇到了错误','用户操作异常','用户吴经理没有针对反馈 \'FK-08UVvM-7jrRg6MUQvfkoAwEw-9897\'的处置权限',1,1),(2,'2025-09-28 23:44:15','用户吴经理@植物医生VoE系统遇到了错误','用户操作异常','用户吴经理没有针对反馈 \'FK-08UVvM-7jrRg6MUQvfkoAwEw-9897\'的处置权限',1,1),(3,'2025-09-29 08:08:49','用户演示员工@植物医生VoE系统遇到了错误','用户操作异常','用户演示员工没有针对反馈 \'FK-08UVvM-7jrRg6MUQvfkoAwEw-9897\'的处置权限',1,1),(4,'2025-09-29 09:06:19','用户吴经理@植物医生VoE系统遇到了错误','用户操作异常','用户吴经理没有针对反馈 \'FK-08UVvM-7jrRg6MUQvfkoAwEw-9897\'的处置权限',1,1),(5,'2025-09-29 09:14:30','用户反馈提交代理@植物医生VoE系统遇到了错误','用户操作异常','必须输入反馈内容信息',1,1),(6,'2025-09-29 09:29:56','用户反馈提交代理@植物医生VoE系统遇到了错误','用户操作异常','必须附件信息',1,1),(7,'2025-09-29 09:29:57','用户反馈提交代理@植物医生VoE系统遇到了错误','用户操作异常','必须附件信息',1,1),(8,'2025-09-29 09:30:21','用户反馈提交代理@植物医生VoE系统遇到了错误','用户操作异常','必须附件信息',1,1),(9,'2025-09-29 09:30:25','用户反馈提交代理@植物医生VoE系统遇到了错误','用户操作异常','必须附件信息',1,1),(10,'2025-09-29 10:49:15','用户吴经理@植物医生VoE系统遇到了错误','用户操作异常','没有找到手机号\'18981811689\'的验证码',1,1),(11,'2025-09-29 11:33:00','用户吴经理@植物医生VoE系统遇到了错误','用户操作异常','必须附件信息',1,1),(12,'2025-09-29 11:33:23','用户吴经理@植物医生VoE系统遇到了错误','用户操作异常','必须附件信息',1,1),(13,'2025-09-29 11:35:57','用户吴经理@植物医生VoE系统遇到了错误','用户操作异常','必须附件信息',1,1),(14,'2025-09-29 11:36:33','用户吴经理@植物医生VoE系统遇到了错误','用户操作异常','必须提供附件信息',1,1),(15,'2025-09-29 11:36:52','用户吴经理@植物医生VoE系统遇到了错误','用户操作异常','必须提供附件信息',1,1),(16,'2025-09-29 11:36:59','用户吴经理@植物医生VoE系统遇到了错误','用户操作异常','必须提供附件信息',1,1),(17,'2025-09-29 12:51:02','用户吴经理@植物医生VoE系统遇到了错误','用户操作异常','用户吴经理没有针对反馈 \'FK-08UVvM-7jrRg6MUQvfkoAwEw-9897\'的处置权限',1,1),(18,'2025-09-29 13:56:30','用户反馈提交代理@植物医生VoE系统遇到了错误','用户操作异常','必须输入详情信息',1,1),(19,'2025-09-29 13:56:39','用户反馈提交代理@植物医生VoE系统遇到了错误','用户操作异常','必须输入详情信息',1,1),(20,'2025-09-29 14:12:16','用户演示员工@植物医生VoE系统遇到了错误','用户操作异常','用户演示员工没有针对反馈 \'FK-08T-W3FHGMRP2ZZyKJgwa4Bw-2903\'的处置权限',1,1),(21,'2025-09-29 14:12:23','用户演示员工@植物医生VoE系统遇到了错误','用户操作异常','用户演示员工没有针对反馈 \'FK-08T-W3FHGMRP2ZZyKJgwa4Bw-2903\'的处置权限',1,1),(22,'2025-09-29 14:12:26','用户演示员工@植物医生VoE系统遇到了错误','用户操作异常','用户演示员工没有针对反馈 \'FK-08T-W3FHGMRP2ZZyKJgwa4Bw-2903\'的处置权限',1,1),(23,'2025-09-29 14:12:53','用户演示员工@植物医生VoE系统遇到了错误','用户操作异常','用户演示员工没有针对反馈 \'FK-08T-W3FHGMRP2ZZyKJgwa4Bw-2903\'的处置权限',1,1),(24,'2025-09-29 14:13:33','用户演示员工@植物医生VoE系统遇到了错误','用户操作异常','用户演示员工没有针对反馈 \'FK-08T-W3FHGMRP2ZZyKJgwa4Bw-2903\'的处置权限',1,1),(25,'2025-09-29 14:14:38','用户演示员工@植物医生VoE系统遇到了错误','用户操作异常','用户演示员工没有针对反馈 \'FK-08T-W3FHGMRP2ZZyKJgwa4Bw-2903\'的处置权限',1,1),(26,'2025-09-29 14:14:41','用户演示员工@植物医生VoE系统遇到了错误','用户操作异常','用户演示员工没有针对反馈 \'FK-08T-W3FHGMRP2ZZyKJgwa4Bw-2903\'的处置权限',1,1),(27,'2025-09-29 14:14:42','用户演示员工@植物医生VoE系统遇到了错误','用户操作异常','用户演示员工没有针对反馈 \'FK-08T-W3FHGMRP2ZZyKJgwa4Bw-2903\'的处置权限',1,1),(28,'2025-09-29 14:15:19','用户演示员工@植物医生VoE系统遇到了错误','用户操作异常','用户演示员工没有针对反馈 \'FK-08T-W3FHGMRP2ZZyKJgwa4Bw-2903\'的处置权限',1,1),(29,'2025-09-29 14:22:21','用户反馈提交代理@植物医生VoE系统遇到了错误','用户操作异常','java.io.IOException: Zip \'Central Directory File Header Record\' not found at position 53649595',1,1),(30,'2025-09-29 14:22:37','用户反馈提交代理@植物医生VoE系统遇到了错误','用户操作异常','java.io.IOException: Zip \'Central Directory File Header Record\' not found at position 53649595',1,1);
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
DROP TABLE IF EXISTS permission_type_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE permission_type_data (
  id bigint NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  platform bigint DEFAULT NULL,
  version bigint DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES permission_type_data WRITE;
/*!40000 ALTER TABLE permission_type_data DISABLE KEYS */;
INSERT INTO permission_type_data VALUES (1,'查看权限','VIEW',1,1),(2,'处置权限','PROCESS',1,1);
/*!40000 ALTER TABLE permission_type_data ENABLE KEYS */;
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
  internal_remark text,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES supplement_content_data WRITE;
/*!40000 ALTER TABLE supplement_content_data DISABLE KEYS */;
INSERT INTO supplement_content_data VALUES (1,'需要看看','我已经了，谢谢你','2025-09-25 21:28:10',1,'123123','iPhone','WIFI',1,NULL,NULL),(2,'123123','','2025-09-26 17:30:46',2,'192.168.10.1','Apple Macintosh','3g',1,NULL,NULL),(3,'123123','','2025-09-26 17:31:04',3,'192.168.10.1','Apple Macintosh','3g',1,NULL,NULL),(4,'123123','','2025-09-26 17:32:05',4,'192.168.10.1','Apple Macintosh','3g',1,NULL,NULL),(5,'123123','','2025-09-26 17:36:14',5,'192.168.10.1','Apple Macintosh','3g',1,NULL,NULL),(6,'123123','','2025-09-26 17:36:23',6,'192.168.10.1','Apple Macintosh','3g',1,NULL,NULL),(7,'123123','','2025-09-26 17:44:09',7,'116.169.2.44','Apple Macintosh','3g',1,NULL,NULL),(8,'123123','','2025-09-26 17:45:51',8,'116.169.2.44','Apple Macintosh','3g',1,NULL,NULL),(9,'123123','','2025-09-26 17:49:59',9,'116.169.2.44','Apple Macintosh','3g',1,NULL,NULL),(10,'123123','','2025-09-26 17:50:01',10,'116.169.2.44','Apple Macintosh','3g',1,NULL,NULL),(11,'123123','','2025-09-26 17:50:03',11,'116.169.2.44','Apple Macintosh','3g',1,NULL,NULL),(12,'123123','','2025-09-26 18:01:16',12,'116.169.2.44','Apple Macintosh','4g',1,NULL,NULL),(13,'123123','','2025-09-26 18:01:51',13,'116.169.2.44','Apple Macintosh','4g',1,NULL,NULL),(14,'123123','','2025-09-26 18:05:24',14,'116.169.2.44','Apple Macintosh','4g',1,NULL,NULL),(15,'123123','','2025-09-26 18:08:07',15,'116.169.2.44','Apple Macintosh','3g',1,NULL,NULL),(16,'123123','','2025-09-26 18:11:38',16,'116.169.2.44','Apple Macintosh','3g',1,NULL,NULL),(17,'123123','','2025-09-26 18:11:49',17,'116.169.2.44','Apple Macintosh','3g',1,NULL,NULL),(18,'123123','C2','2025-09-26 18:17:27',18,'116.169.2.44','Apple Macintosh','3g',3,'2025-09-27 23:05:18','C4'),(19,'1231212','','2025-09-26 18:41:59',19,'116.169.2.44','Apple Macintosh','3g',1,NULL,NULL),(20,'12312','','2025-09-26 18:44:40',20,'116.169.2.44','Apple Macintosh','4g',1,NULL,NULL),(21,'12','','2025-09-26 18:55:20',21,'116.169.2.44','Apple Macintosh','4g',1,NULL,NULL),(22,'21312','','2025-09-26 19:00:16',22,'116.169.2.44','Apple Macintosh','3g',1,NULL,NULL),(23,'12','','2025-09-26 19:06:53',23,'116.169.2.44','Apple Macintosh','3g',1,NULL,NULL),(24,'C1','R1','2025-09-26 20:40:49',24,'116.169.2.44','Apple Macintosh','3g',2,NULL,NULL),(32,'C7','R7','2025-09-26 22:06:55',24,'116.169.2.44','Apple Macintosh','4g',2,'2025-09-26 22:06:55',NULL),(33,'C8','','2025-09-26 22:10:34',24,'116.169.2.44','Apple Macintosh','4g',1,'2025-09-26 22:10:34',NULL),(34,'ccc','','2025-09-26 22:10:59',24,'116.169.2.44','Apple Macintosh','4g',1,'2025-09-26 22:10:59',NULL),(35,'dddd','','2025-09-26 22:11:24',24,'116.169.2.44','Apple Macintosh','4g',1,'2025-09-26 22:11:24',NULL),(36,'都dddd','','2025-09-26 22:15:03',24,'116.169.2.44','Apple Macintosh','4g',1,'2025-09-26 22:15:03',NULL),(37,'C13','','2025-09-27 13:24:39',15,'116.169.2.44','Apple Macintosh','4g',1,'2025-09-27 13:24:39',NULL),(38,'C14','','2025-09-27 13:26:20',15,'116.169.2.44','Apple Macintosh','4g',1,'2025-09-27 13:26:20',NULL),(39,'C15','','2025-09-27 13:26:31',15,'116.169.2.44','Apple Macintosh','4g',1,'2025-09-27 13:26:31',NULL),(40,'C2423','','2025-09-27 15:56:48',25,'116.169.2.44','Apple Macintosh','4g',1,'2025-09-27 15:56:48',NULL),(41,'Cwe','','2025-09-27 15:59:09',26,'116.169.2.44','Apple Macintosh','4g',1,'2025-09-27 15:59:09',NULL),(42,'C2234','','2025-09-27 17:06:07',19,'116.169.2.44','Apple Macintosh','4g',1,'2025-09-27 17:06:07',NULL),(43,'C','','2025-09-27 23:51:47',27,'125.70.99.127','Apple Macintosh','4g',1,'2025-09-27 23:51:47',NULL),(44,'123','','2025-09-28 14:00:15',28,'125.70.99.127','Apple Macintosh','4g',1,'2025-09-28 14:00:15',NULL),(45,'问题比较严重一点儿','','2025-09-28 14:01:42',29,'125.70.99.127','Apple iPhone','未知',1,'2025-09-28 14:01:42',NULL),(46,'发现了宴请shi\'jian','','2025-09-28 14:07:44',30,'125.70.99.127','Apple Macintosh','4g',1,'2025-09-28 14:07:44',NULL),(47,'补充信息','尊敬的客户，您好!我们已收到您的反馈...','2025-09-28 14:08:16',30,'125.70.99.127','Apple Macintosh','4g',2,'2025-09-28 14:10:06','内部信息'),(48,'内容提供shang','','2025-09-28 15:08:33',31,'125.70.99.127','Apple Macintosh','4g',1,'2025-09-28 15:08:33',NULL),(49,'人类的建议不可以','','2025-09-28 16:04:30',32,'125.70.99.127','Apple iPhone','未知',1,'2025-09-28 16:04:30',NULL),(50,'简直我我简直想吐槽一个大的','','2025-09-28 21:26:29',33,'125.70.99.127','Apple iPhone','未知',1,'2025-09-28 21:26:29',NULL),(51,'收费金额10w','','2025-09-29 09:28:39',34,'103.61.153.19','Apple Macintosh','未知',1,'2025-09-29 09:28:39',NULL),(52,'？','','2025-09-29 09:47:46',34,'103.61.153.19','Apple Macintosh','未知',1,'2025-09-29 09:47:46',NULL),(53,'C','','2025-09-29 11:22:20',35,'116.169.2.44','Apple Macintosh','4g',1,'2025-09-29 11:22:20',NULL),(54,'其他内容','','2025-09-29 13:56:50',36,'103.61.153.19','Apple Macintosh','未知',1,'2025-09-29 13:56:50',NULL),(55,'C3','','2025-09-29 15:09:50',37,'125.70.99.127','Apple Macintosh','4g',1,'2025-09-29 15:09:50',NULL);
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
INSERT INTO teaql_id_space VALUES ('Department',11),('Employee',22),('FeedbackItem',37),('FeedbackItemAttachment',16),('FeedbackItemLog',132),('FeedbackMainType',3),('FeedbackResolveStatus',3),('FeedbackResultStatus',3),('FeedbackSubType',15),('JobType',5),('JobTypeWithMainType',10),('Merchant',3),('MerchantBackendLog',30),('ReadFlag',1),('RoleType',5),('SupplementContent',55);
/*!40000 ALTER TABLE teaql_id_space ENABLE KEYS */;
UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

