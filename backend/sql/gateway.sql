/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
DROP TABLE IF EXISTS candidate_container_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE candidate_container_data (
  id varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID',
  `name` varchar(28) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  version int DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (id),
  UNIQUE KEY idx4id_ver_of_candidate_container (id,version),
  KEY idx4version_of_candidate_container (version)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='候选容器';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES candidate_container_data WRITE;
/*!40000 ALTER TABLE candidate_container_data DISABLE KEYS */;
/*!40000 ALTER TABLE candidate_container_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS candidate_element_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE candidate_element_data (
  id varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '类型',
  image varchar(512) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL COMMENT '图片',
  container varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '容器',
  version int DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (id),
  UNIQUE KEY idx4id_ver_of_candidate_element (id,version),
  KEY idx4version_of_candidate_element (version),
  KEY fk4container_of_candidate_element_data (container),
  CONSTRAINT fk4container_of_candidate_element_data FOREIGN KEY (container) REFERENCES candidate_container_data (id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='候选人元素';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES candidate_element_data WRITE;
/*!40000 ALTER TABLE candidate_element_data DISABLE KEYS */;
/*!40000 ALTER TABLE candidate_element_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS employee_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE employee_data (
  id varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '工号',
  `user` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户',
  avatar varchar(512) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL COMMENT '照片',
  `status` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '运营状态',
  merchant varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '工厂',
  create_time datetime DEFAULT NULL COMMENT '创建于',
  version int DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (id),
  UNIQUE KEY idx4id_ver_of_employee (id,version),
  KEY idx4create_time_of_employee (create_time),
  KEY idx4version_of_employee (version),
  KEY fk4user_of_employee_data (`user`),
  KEY fk4status_of_employee_data (`status`),
  KEY fk4merchant_of_employee_data (merchant),
  CONSTRAINT fk4merchant_of_employee_data FOREIGN KEY (merchant) REFERENCES merchant_data (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT fk4status_of_employee_data FOREIGN KEY (`status`) REFERENCES user_status_data (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT fk4user_of_employee_data FOREIGN KEY (`user`) REFERENCES natural_person_data (id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='员工';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES employee_data WRITE;
/*!40000 ALTER TABLE employee_data DISABLE KEYS */;
INSERT INTO employee_data VALUES ('E000001','Root','111111','NP000001',NULL,'ACTIVE','M000001','2023-09-27 18:02:37',1);
INSERT INTO employee_data VALUES ('E000117','吴经理','111111','NP000120',NULL,'ACTIVE','M000011','2025-09-25 11:28:42',1);
INSERT INTO employee_data VALUES ('E000118','反馈提交代理','反馈提交代理-不要删除','NP000121',NULL,'ACTIVE','M000011','2025-09-25 12:53:21',2);
INSERT INTO employee_data VALUES ('E000119','演示员工','D1001','NP000122',NULL,'ACTIVE','M000011','2025-09-28 08:55:50',1);
INSERT INTO employee_data VALUES ('E000120','总裁助理','DR0001','NP000123',NULL,'ACTIVE','M000011','2025-09-29 09:24:32',2);
INSERT INTO employee_data VALUES ('E000121','测试用户','DR-T','NP000124',NULL,'ACTIVE','M000011','2025-09-29 15:03:27',1);
/*!40000 ALTER TABLE employee_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS id_space_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE id_space_data (
  id varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID',
  type_name varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '类型名称',
  prefix varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '前缀',
  init_digital_length int DEFAULT NULL COMMENT '初始数字长度',
  `current` bigint DEFAULT NULL COMMENT '当前的',
  domain varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '域',
  version int DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (id),
  UNIQUE KEY idx4id_ver_of_id_space (id,version),
  KEY idx4init_digital_length_of_id_space (init_digital_length),
  KEY idx4current_of_id_space (`current`),
  KEY idx4version_of_id_space (version),
  KEY fk4domain_of_id_space_data (domain),
  CONSTRAINT fk4domain_of_id_space_data FOREIGN KEY (domain) REFERENCES user_domain_data (id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Id空间';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES id_space_data WRITE;
/*!40000 ALTER TABLE id_space_data DISABLE KEYS */;
INSERT INTO id_space_data VALUES ('employee','employee','E',6,121,'UD000001',1);
INSERT INTO id_space_data VALUES ('job','job','J',6,146,'UD000001',1);
INSERT INTO id_space_data VALUES ('job_type','job_type','JT',6,26,'UD000001',1);
INSERT INTO id_space_data VALUES ('job_type_access','job_type_access','JTA',6,100,'UD000001',1);
INSERT INTO id_space_data VALUES ('login_history','login_history','LH',6,2317,'UD000001',1);
INSERT INTO id_space_data VALUES ('menu_item','menu_item','MI',6,46,'UD000001',1);
INSERT INTO id_space_data VALUES ('menu_relation','menu_relation','MR',6,74,'UD000001',1);
INSERT INTO id_space_data VALUES ('merchant','merchant','M',6,11,'UD000001',1);
INSERT INTO id_space_data VALUES ('natural_person','natural_person','NP',6,124,'UD000001',1);
INSERT INTO id_space_data VALUES ('service_configuration','service_configuration','SC',6,13,'UD000001',1);
INSERT INTO id_space_data VALUES ('service_mapping','service_mapping','SM',6,20,'UD000001',1);
INSERT INTO id_space_data VALUES ('user_app','user_app','UA',6,130,'UD000001',1);
/*!40000 ALTER TABLE id_space_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS info_lines;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE info_lines (
  line varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES info_lines WRITE;
/*!40000 ALTER TABLE info_lines DISABLE KEYS */;
INSERT INTO info_lines VALUES ('   SSSSSSSSSSSSSSS                                                                                                                  !!! ');
INSERT INTO info_lines VALUES (' SS:::::::::::::::S                                                                                                                !!:!!');
INSERT INTO info_lines VALUES ('S:::::SSSSSS::::::S                                                                                                                !:::!');
INSERT INTO info_lines VALUES ('S:::::S     SSSSSSS                                                                                                                !:::!');
INSERT INTO info_lines VALUES ('S:::::S            uuuuuu    uuuuuu      cccccccccccccccc    cccccccccccccccc    eeeeeeeeeeee        ssssssssss       ssssssssss   !:::!');
INSERT INTO info_lines VALUES ('S:::::S            u::::u    u::::u    cc:::::::::::::::c  cc:::::::::::::::c  ee::::::::::::ee    ss::::::::::s    ss::::::::::s  !:::!');
INSERT INTO info_lines VALUES (' S::::SSSS         u::::u    u::::u   c:::::::::::::::::c c:::::::::::::::::c e::::::eeeee:::::eess:::::::::::::s ss:::::::::::::s !:::!');
INSERT INTO info_lines VALUES ('  SS::::::SSSSS    u::::u    u::::u  c:::::::cccccc:::::cc:::::::cccccc:::::ce::::::e     e:::::es::::::ssss:::::ss::::::ssss:::::s!:::!');
INSERT INTO info_lines VALUES ('    SSS::::::::SS  u::::u    u::::u  c::::::c     cccccccc::::::c     ccccccce:::::::eeeee::::::e s:::::s  ssssss  s:::::s  ssssss !:::!');
INSERT INTO info_lines VALUES ('       SSSSSS::::S u::::u    u::::u  c:::::c             c:::::c             e:::::::::::::::::e    s::::::s         s::::::s      !:::!');
INSERT INTO info_lines VALUES ('            S:::::Su::::u    u::::u  c:::::c             c:::::c             e::::::eeeeeeeeeee        s::::::s         s::::::s   !!:!!');
INSERT INTO info_lines VALUES ('            S:::::Su:::::uuuu:::::u  c::::::c     cccccccc::::::c     ccccccce:::::::e           ssssss   s:::::s ssssss   s:::::s  !!! ');
INSERT INTO info_lines VALUES ('SSSSSSS     S:::::Su:::::::::::::::uuc:::::::cccccc:::::cc:::::::cccccc:::::ce::::::::e          s:::::ssss::::::ss:::::ssss::::::s     ');
INSERT INTO info_lines VALUES ('S::::::SSSSSS:::::S u:::::::::::::::u c:::::::::::::::::c c:::::::::::::::::c e::::::::eeeeeeee  s::::::::::::::s s::::::::::::::s  !!! ');
INSERT INTO info_lines VALUES ('S:::::::::::::::SS   uu::::::::uu:::u  cc:::::::::::::::c  cc:::::::::::::::c  ee:::::::::::::e   s:::::::::::ss   s:::::::::::ss  !!:!!');
INSERT INTO info_lines VALUES (' SSSSSSSSSSSSSSS       uuuuuuuu  uuuu    cccccccccccccccc    cccccccccccccccc    eeeeeeeeeeeeee    sssssssssss      sssssssssss     !!! ');
/*!40000 ALTER TABLE info_lines ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS job_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE job_data (
  id varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  last_update_time datetime DEFAULT NULL COMMENT '更新于',
  job_type varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '角色',
  department varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '部门',
  employee varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '员工',
  merchant varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '工厂',
  version int DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (id),
  UNIQUE KEY idx4id_ver_of_job (id,version),
  KEY idx4last_update_time_of_job (last_update_time),
  KEY idx4version_of_job (version),
  KEY fk4job_type_of_job_data (job_type),
  KEY fk4department_of_job_data (department),
  KEY fk4employee_of_job_data (employee),
  KEY fk4merchant_of_job_data (merchant),
  CONSTRAINT fk4department_of_job_data FOREIGN KEY (department) REFERENCES merchant_department_data (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT fk4employee_of_job_data FOREIGN KEY (employee) REFERENCES employee_data (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT fk4job_type_of_job_data FOREIGN KEY (job_type) REFERENCES job_type_data (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT fk4merchant_of_job_data FOREIGN KEY (merchant) REFERENCES merchant_data (id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='岗位';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES job_data WRITE;
/*!40000 ALTER TABLE job_data DISABLE KEYS */;
INSERT INTO job_data VALUES ('J000001','Root','Root','2023-09-27 18:02:37','JT000001',NULL,'E000001','M000001',1);
INSERT INTO job_data VALUES ('J000002','Root','Root','2023-09-27 18:02:37','JT000001',NULL,'E000117','M000011',1);
INSERT INTO job_data VALUES ('J000003','D1001','D1001','2025-10-09 02:04:54','JT000001',NULL,'E000119','M000011',1);
/*!40000 ALTER TABLE job_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS job_type_access_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE job_type_access_data (
  id varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID',
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '编码',
  enabled tinyint(1) DEFAULT NULL COMMENT '启用',
  job_type varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '角色',
  version int DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (id),
  UNIQUE KEY idx4id_ver_of_job_type_access (id,version),
  KEY idx4version_of_job_type_access (version),
  KEY fk4job_type_of_job_type_access_data (job_type),
  CONSTRAINT fk4job_type_of_job_type_access_data FOREIGN KEY (job_type) REFERENCES job_type_data (id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='作业类型访问';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES job_type_access_data WRITE;
/*!40000 ALTER TABLE job_type_access_data DISABLE KEYS */;
INSERT INTO job_type_access_data VALUES ('JTA000021','人员管理','employeeManagement',1,'JT000004',1);
INSERT INTO job_type_access_data VALUES ('JTA000022','角色管理','jobTypeManagement',0,'JT000004',2);
INSERT INTO job_type_access_data VALUES ('JTA000023','基础数据','basic',1,'JT000004',1);
INSERT INTO job_type_access_data VALUES ('JTA000024','产品管理','productManagement',1,'JT000004',1);
INSERT INTO job_type_access_data VALUES ('JTA000099','角色管理(jobTypeManagement)','jobTypeManagement',1,'JT000021',1);
INSERT INTO job_type_access_data VALUES ('JTA000100','人员管理(employeeManagement)','employeeManagement',1,'JT000021',1);
INSERT INTO job_type_access_data VALUES ('JTA000300','JTA000300','voe-service-department',1,'JT000001',1);
INSERT INTO job_type_access_data VALUES ('JTA000301','JTA000301','voe-service-employee',1,'JT000001',1);
INSERT INTO job_type_access_data VALUES ('JTA000302','JTA000302','voe-service-feedback-item',1,'JT000001',1);
INSERT INTO job_type_access_data VALUES ('JTA000303','JTA000303','voe-service-feedback-main-type',1,'JT000001',1);
INSERT INTO job_type_access_data VALUES ('JTA000304','JTA000304','voe-service-feedback-resolve-status',1,'JT000001',1);
INSERT INTO job_type_access_data VALUES ('JTA000305','JTA000305','voe-service-feedback-result-status',1,'JT000001',1);
INSERT INTO job_type_access_data VALUES ('JTA000306','JTA000306','voe-service-group',1,'JT000001',1);
INSERT INTO job_type_access_data VALUES ('JTA000307','JTA000307','voe-service-job-type',1,'JT000001',1);
INSERT INTO job_type_access_data VALUES ('JTA000308','JTA000308','voe-service-merchant-backend-log',1,'JT000001',1);
INSERT INTO job_type_access_data VALUES ('JTA000309','JTA000309','voe-service-role-type',1,'JT000001',1);
INSERT INTO job_type_access_data VALUES ('JTA000400','JTA000300','employeeManagement',1,'JT000001',1);
INSERT INTO job_type_access_data VALUES ('JTA000401','JTA000401','voe-service-config-item',1,'JT000001',1);
/*!40000 ALTER TABLE job_type_access_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS job_type_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE job_type_data (
  id varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '角色名称',
  `code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '角色代码',
  merchant varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '工厂',
  version int DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (id),
  UNIQUE KEY idx4id_ver_of_job_type (id,version),
  KEY idx4version_of_job_type (version),
  KEY fk4merchant_of_job_type_data (merchant),
  CONSTRAINT fk4merchant_of_job_type_data FOREIGN KEY (merchant) REFERENCES merchant_data (id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='角色';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES job_type_data WRITE;
/*!40000 ALTER TABLE job_type_data DISABLE KEYS */;
INSERT INTO job_type_data VALUES ('JT000001','系统管理员','ADMIN','M000001',1);
INSERT INTO job_type_data VALUES ('JT000003','普通','N','M000001',1);
INSERT INTO job_type_data VALUES ('JT000004','司机','role','M000001',1);
INSERT INTO job_type_data VALUES ('JT000019','系统管理员','ADMIN','M000011',1);
INSERT INTO job_type_data VALUES ('JT000020','反馈提交窗口','FEEDBACK_COLLECTOR','M000011',1);
INSERT INTO job_type_data VALUES ('JT000021','总裁','CEO','M000011',2);
INSERT INTO job_type_data VALUES ('JT000022','部门经理','DEPT_MANAGER','M000011',1);
INSERT INTO job_type_data VALUES ('JT000023','审计','AUDITOR','M000011',2);
INSERT INTO job_type_data VALUES ('JT000024','中心总','CENTER_HEAD','M000011',1);
INSERT INTO job_type_data VALUES ('JT000025','职能管理','IN_CHARGE','M000011',1);
INSERT INTO job_type_data VALUES ('JT000026','总裁助理','CEO_ASSIST','M000011',1);
/*!40000 ALTER TABLE job_type_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS key_pair_identity_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE key_pair_identity_data (
  id varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID',
  public_key longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '公钥',
  key_type varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密钥类型',
  sec_user varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '安全用户',
  create_time datetime DEFAULT NULL COMMENT '创建于',
  version int DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (id),
  UNIQUE KEY idx4id_ver_of_key_pair_identity (id,version),
  KEY idx4create_time_of_key_pair_identity (create_time),
  KEY idx4version_of_key_pair_identity (version),
  KEY fk4key_type_of_key_pair_identity_data (key_type),
  KEY fk4sec_user_of_key_pair_identity_data (sec_user),
  CONSTRAINT fk4key_type_of_key_pair_identity_data FOREIGN KEY (key_type) REFERENCES public_key_type_data (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT fk4sec_user_of_key_pair_identity_data FOREIGN KEY (sec_user) REFERENCES sec_user_data (id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='秘钥对认证';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES key_pair_identity_data WRITE;
/*!40000 ALTER TABLE key_pair_identity_data DISABLE KEYS */;
/*!40000 ALTER TABLE key_pair_identity_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS list_access_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE list_access_data (
  id varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  internal_name varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '内部名称',
  read_permission tinyint(1) DEFAULT NULL COMMENT '读权限',
  create_permission tinyint(1) DEFAULT NULL COMMENT '创建权限',
  delete_permission tinyint(1) DEFAULT NULL COMMENT '删除权限',
  update_permission tinyint(1) DEFAULT NULL COMMENT '更新权限',
  execution_permission tinyint(1) DEFAULT NULL COMMENT '执行权限',
  app varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '应用程序',
  version int DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (id),
  UNIQUE KEY idx4id_ver_of_list_access (id,version),
  KEY idx4version_of_list_access (version),
  KEY fk4app_of_list_access_data (app),
  CONSTRAINT fk4app_of_list_access_data FOREIGN KEY (app) REFERENCES user_app_data (id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='列表访问控制';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES list_access_data WRITE;
/*!40000 ALTER TABLE list_access_data DISABLE KEYS */;
/*!40000 ALTER TABLE list_access_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS login_history_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE login_history_data (
  id varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID',
  login_time datetime DEFAULT NULL COMMENT '登录时间',
  from_ip varchar(44) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '来自IP',
  `description` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '描述',
  sec_user varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '安全用户',
  version int DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (id),
  UNIQUE KEY idx4id_ver_of_login_history (id,version),
  KEY idx4login_time_of_login_history (login_time),
  KEY idx4version_of_login_history (version),
  KEY fk4sec_user_of_login_history_data (sec_user),
  CONSTRAINT fk4sec_user_of_login_history_data FOREIGN KEY (sec_user) REFERENCES sec_user_data (id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='登录历史';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES login_history_data WRITE;
/*!40000 ALTER TABLE login_history_data DISABLE KEYS */;
INSERT INTO login_history_data VALUES ('LH002077','2025-09-25 10:28:15','127.0.0.1','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002078','2025-09-25 10:29:21','127.0.0.1','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002079','2025-09-25 10:29:37','127.0.0.1','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002080','2025-09-25 10:35:56','127.0.0.1','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002081','2025-09-25 10:35:58','127.0.0.1','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002082','2025-09-25 10:54:44','192.168.10.121','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002083','2025-09-25 11:10:36','127.0.0.1','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002084','2025-09-25 11:13:00','127.0.0.1','成功登陆','a06022e8b92343f8be5dbb8ed74f0d2d',1);
INSERT INTO login_history_data VALUES ('LH002085','2025-09-25 11:13:24','127.0.0.1','成功登陆','a06022e8b92343f8be5dbb8ed74f0d2d',1);
INSERT INTO login_history_data VALUES ('LH002086','2025-09-25 11:13:29','127.0.0.1','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002087','2025-09-25 11:19:21','127.0.0.1','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002088','2025-09-25 11:19:23','127.0.0.1','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002089','2025-09-25 11:24:06','127.0.0.1','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002090','2025-09-25 11:26:40','127.0.0.1','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002091','2025-09-25 11:28:49','127.0.0.1','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002092','2025-09-25 11:29:12','127.0.0.1','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002093','2025-09-25 11:30:28','127.0.0.1','成功登陆','d27599b6c3ee4ebe8b90962605ca5a3e',1);
INSERT INTO login_history_data VALUES ('LH002094','2025-09-25 11:36:28','127.0.0.1','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002095','2025-09-25 12:53:02','127.0.0.1','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002096','2025-09-25 16:42:26','127.0.0.1','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002097','2025-09-25 17:32:47','127.0.0.1','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002098','2025-09-25 18:00:28','127.0.0.1','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002099','2025-09-25 18:36:53','127.0.0.1','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002100','2025-09-25 19:29:34','127.0.0.1','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002101','2025-09-25 19:53:33','127.0.0.1','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002102','2025-09-25 20:02:13','127.0.0.1','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002103','2025-09-25 21:49:29','127.0.0.1','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002104','2025-09-26 09:53:59','127.0.0.1','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002105','2025-09-26 10:09:00','127.0.0.1','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002106','2025-09-26 20:30:43','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002107','2025-09-26 22:07:21','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002108','2025-09-26 22:41:33','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002109','2025-09-26 23:43:59','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002110','2025-09-27 10:04:06','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002111','2025-09-27 10:07:29','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002112','2025-09-27 10:42:23','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002113','2025-09-27 11:28:19','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002114','2025-09-27 11:48:19','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002115','2025-09-27 11:53:14','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002116','2025-09-27 13:15:04','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002117','2025-09-27 16:28:10','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002118','2025-09-27 20:11:14','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002119','2025-09-27 23:29:31','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002120','2025-09-27 23:30:54','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002121','2025-09-27 23:43:09','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002122','2025-09-28 00:05:35','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002123','2025-09-28 08:52:18','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002124','2025-09-28 10:18:57','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002125','2025-09-28 10:19:22','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002126','2025-09-28 10:19:48','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002127','2025-09-28 10:20:15','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002128','2025-09-28 10:20:20','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002129','2025-09-28 10:20:25','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002130','2025-09-28 10:59:52','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002131','2025-09-28 11:09:46','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002132','2025-09-28 11:10:19','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002133','2025-09-28 11:12:55','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002134','2025-09-28 11:13:52','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002135','2025-09-28 11:14:34','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002136','2025-09-28 11:15:10','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002137','2025-09-28 11:19:16','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002138','2025-09-28 11:26:40','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002139','2025-09-28 11:27:11','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002140','2025-09-28 11:28:11','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002141','2025-09-28 11:29:02','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002142','2025-09-28 11:30:22','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002143','2025-09-28 11:32:11','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002144','2025-09-28 11:43:04','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002145','2025-09-28 11:45:03','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002146','2025-09-28 11:46:06','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002147','2025-09-28 11:49:33','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002148','2025-09-28 11:51:53','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002149','2025-09-28 11:53:11','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002150','2025-09-28 11:55:22','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002151','2025-09-28 12:11:56','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002152','2025-09-28 12:28:05','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002153','2025-09-28 12:29:04','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002154','2025-09-28 12:30:12','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002155','2025-09-28 13:02:37','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002156','2025-09-28 13:05:16','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002157','2025-09-28 13:05:36','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002158','2025-09-28 13:10:30','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002159','2025-09-28 13:18:23','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002160','2025-09-28 13:19:09','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002161','2025-09-28 13:58:52','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002162','2025-09-28 14:06:10','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002163','2025-09-28 14:09:19','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002164','2025-09-28 14:24:46','111.201.15.119, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002165','2025-09-28 14:30:18','111.201.15.119, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002166','2025-09-28 14:30:43','111.201.15.119, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002167','2025-09-28 14:30:43','111.201.15.119, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002168','2025-09-28 15:17:57','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002169','2025-09-28 15:29:44','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002170','2025-09-28 15:54:07','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002171','2025-09-28 16:09:54','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002172','2025-09-28 16:46:48','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002173','2025-09-28 17:02:26','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002174','2025-09-28 17:30:16','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002175','2025-09-28 17:35:08','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002176','2025-09-28 18:19:53','111.201.15.119, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002177','2025-09-28 18:22:02','111.201.15.119, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002178','2025-09-28 18:52:39','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002179','2025-09-28 19:08:21','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002180','2025-09-28 19:15:08','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002181','2025-09-28 19:15:15','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002182','2025-09-28 19:15:53','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002183','2025-09-28 19:16:09','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002184','2025-09-28 19:16:43','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002185','2025-09-28 19:21:15','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002186','2025-09-28 19:22:56','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002187','2025-09-28 19:35:33','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002188','2025-09-28 19:36:00','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002189','2025-09-28 19:47:41','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002190','2025-09-28 20:53:35','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002191','2025-09-28 20:53:47','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002192','2025-09-28 20:54:06','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002193','2025-09-28 21:03:19','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002194','2025-09-28 21:24:56','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002195','2025-09-28 22:28:25','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002196','2025-09-28 23:42:53','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002197','2025-09-29 08:07:48','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002198','2025-09-29 08:35:26','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002199','2025-09-29 08:38:52','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002200','2025-09-29 08:39:15','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002201','2025-09-29 08:40:10','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002202','2025-09-29 09:05:07','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002203','2025-09-29 09:10:12','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002204','2025-09-29 09:14:38','103.61.153.19, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002205','2025-09-29 10:00:13','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002206','2025-09-29 10:19:13','103.61.153.19, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002207','2025-09-29 10:20:18','103.61.153.19, 192.168.10.57','成功登陆','a3eecf90e27a4aa0a5c801bd6d1a06b7',1);
INSERT INTO login_history_data VALUES ('LH002208','2025-09-29 10:20:38','103.61.153.19, 192.168.10.57','成功登陆','a3eecf90e27a4aa0a5c801bd6d1a06b7',1);
INSERT INTO login_history_data VALUES ('LH002209','2025-09-29 10:22:13','103.61.153.19, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002210','2025-09-29 10:22:53','103.61.153.19, 192.168.10.57','密码错误','a3eecf90e27a4aa0a5c801bd6d1a06b7',1);
INSERT INTO login_history_data VALUES ('LH002211','2025-09-29 10:22:59','103.61.153.19, 192.168.10.57','成功登陆','a3eecf90e27a4aa0a5c801bd6d1a06b7',1);
INSERT INTO login_history_data VALUES ('LH002212','2025-09-29 10:23:08','103.61.153.19, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002213','2025-09-29 11:54:40','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002214','2025-09-29 12:52:20','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002215','2025-09-29 13:58:34','103.61.153.19, 192.168.10.57','成功登陆','a3eecf90e27a4aa0a5c801bd6d1a06b7',1);
INSERT INTO login_history_data VALUES ('LH002216','2025-09-29 13:59:21','103.61.153.19, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002217','2025-09-29 13:59:48','103.61.153.19, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002218','2025-09-29 14:13:37','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002219','2025-09-29 14:15:15','103.61.153.19, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002220','2025-09-29 14:21:21','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002221','2025-09-29 14:22:09','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002222','2025-09-29 14:37:47','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002223','2025-09-29 14:41:19','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002224','2025-09-29 14:46:11','103.61.153.19, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002225','2025-09-29 14:46:21','103.61.153.19, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002226','2025-09-29 14:48:49','103.61.153.19, 192.168.10.57','成功登陆','a3eecf90e27a4aa0a5c801bd6d1a06b7',1);
INSERT INTO login_history_data VALUES ('LH002227','2025-09-29 14:49:09','103.61.153.19, 192.168.10.57','成功登陆','a3eecf90e27a4aa0a5c801bd6d1a06b7',1);
INSERT INTO login_history_data VALUES ('LH002228','2025-09-29 14:49:18','103.61.153.19, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002229','2025-09-29 14:51:24','103.61.153.19, 192.168.10.57','成功登陆','a3eecf90e27a4aa0a5c801bd6d1a06b7',1);
INSERT INTO login_history_data VALUES ('LH002230','2025-09-29 15:00:13','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002231','2025-09-29 15:05:13','111.201.15.119, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002232','2025-09-29 15:05:18','125.70.99.127, 192.168.10.57','成功登陆','c00cda48510349adaf50faee27c26ca3',1);
INSERT INTO login_history_data VALUES ('LH002233','2025-09-29 18:07:38','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002234','2025-09-29 21:39:20','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002235','2025-09-30 09:40:13','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002236','2025-09-30 16:31:07','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002237','2025-10-09 09:52:21','111.201.15.119, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002238','2025-10-09 09:55:54','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002239','2025-10-09 09:56:50','111.201.15.119, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002240','2025-10-09 09:57:14','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002241','2025-10-09 10:01:51','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002242','2025-10-09 10:05:03','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002243','2025-10-09 10:05:15','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002244','2025-10-09 10:07:40','111.201.15.119, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002245','2025-10-09 10:12:44','103.61.153.19, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002246','2025-10-09 10:13:14','103.61.153.19, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002247','2025-10-09 10:13:25','103.61.153.19, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002248','2025-10-09 10:14:20','103.61.153.19, 192.168.10.57','成功登陆','a3eecf90e27a4aa0a5c801bd6d1a06b7',1);
INSERT INTO login_history_data VALUES ('LH002249','2025-10-09 10:14:32','103.61.153.19, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002250','2025-10-09 10:14:58','103.61.153.19, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002251','2025-10-09 10:15:39','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002252','2025-10-09 10:15:47','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002253','2025-10-09 10:17:33','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002254','2025-10-09 10:18:33','103.61.153.19, 192.168.10.57','成功登陆','a3eecf90e27a4aa0a5c801bd6d1a06b7',1);
INSERT INTO login_history_data VALUES ('LH002255','2025-10-09 10:21:06','103.61.153.19, 192.168.10.57','成功登陆','a3eecf90e27a4aa0a5c801bd6d1a06b7',1);
INSERT INTO login_history_data VALUES ('LH002256','2025-10-09 10:22:56','103.61.153.19, 192.168.10.57','成功登陆','a3eecf90e27a4aa0a5c801bd6d1a06b7',1);
INSERT INTO login_history_data VALUES ('LH002257','2025-10-09 10:23:44','103.61.153.19, 192.168.10.57','成功登陆','a3eecf90e27a4aa0a5c801bd6d1a06b7',1);
INSERT INTO login_history_data VALUES ('LH002258','2025-10-09 10:25:59','103.61.153.19, 192.168.10.57','成功登陆','a3eecf90e27a4aa0a5c801bd6d1a06b7',1);
INSERT INTO login_history_data VALUES ('LH002259','2025-10-09 10:26:49','103.61.153.19, 192.168.10.57','成功登陆','a3eecf90e27a4aa0a5c801bd6d1a06b7',1);
INSERT INTO login_history_data VALUES ('LH002260','2025-10-09 10:31:32','111.201.15.119, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002261','2025-10-09 10:33:18','111.201.15.119, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002262','2025-10-09 10:37:27','111.201.15.119, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002263','2025-10-09 10:37:38','103.61.153.19, 192.168.10.57','成功登陆','a3eecf90e27a4aa0a5c801bd6d1a06b7',1);
INSERT INTO login_history_data VALUES ('LH002264','2025-10-09 10:40:34','111.201.15.119, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002265','2025-10-09 10:41:26','111.201.15.119, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002266','2025-10-09 10:42:13','111.201.15.119, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002267','2025-10-09 10:42:24','111.201.15.119, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002268','2025-10-09 10:43:37','111.201.15.119, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002269','2025-10-09 10:44:19','111.201.15.119, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002270','2025-10-09 10:45:36','111.201.15.119, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002271','2025-10-09 10:50:07','111.201.15.119, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002272','2025-10-09 11:11:06','111.201.15.119, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002273','2025-10-09 13:33:35','103.61.153.19, 192.168.10.57','成功登陆','a3eecf90e27a4aa0a5c801bd6d1a06b7',1);
INSERT INTO login_history_data VALUES ('LH002274','2025-10-09 13:35:53','103.61.153.19, 192.168.10.57','成功登陆','a3eecf90e27a4aa0a5c801bd6d1a06b7',1);
INSERT INTO login_history_data VALUES ('LH002275','2025-10-09 13:36:41','111.201.15.119, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002276','2025-10-09 13:39:04','103.61.153.19, 192.168.10.57','成功登陆','a3eecf90e27a4aa0a5c801bd6d1a06b7',1);
INSERT INTO login_history_data VALUES ('LH002277','2025-10-09 14:09:14','111.201.15.119, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002278','2025-10-09 14:21:00','111.201.15.119, 192.168.10.57','成功登陆','a3eecf90e27a4aa0a5c801bd6d1a06b7',1);
INSERT INTO login_history_data VALUES ('LH002279','2025-10-09 14:26:50','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002280','2025-10-09 14:32:45','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002281','2025-10-09 14:38:52','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002282','2025-10-09 15:04:40','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002283','2025-10-09 15:14:19','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002284','2025-10-09 15:22:44','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002285','2025-10-09 15:22:53','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002286','2025-10-09 15:24:50','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002287','2025-10-09 15:26:06','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002288','2025-10-09 15:27:36','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002289','2025-10-09 15:29:00','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002290','2025-10-09 15:29:36','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002291','2025-10-09 15:29:52','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002292','2025-10-09 16:22:51','103.61.153.19, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002293','2025-10-09 17:04:25','103.61.153.19, 192.168.10.57','成功登陆','a3eecf90e27a4aa0a5c801bd6d1a06b7',1);
INSERT INTO login_history_data VALUES ('LH002294','2025-10-09 17:04:50','103.61.153.19, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002295','2025-10-09 17:05:47','103.61.153.19, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002296','2025-10-09 17:05:57','103.61.153.19, 192.168.10.57','成功登陆','a3eecf90e27a4aa0a5c801bd6d1a06b7',1);
INSERT INTO login_history_data VALUES ('LH002297','2025-10-09 17:06:08','103.61.153.19, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002298','2025-10-09 17:10:28','103.61.153.19, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002299','2025-10-09 17:10:49','103.61.153.19, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002300','2025-10-09 17:11:13','103.61.153.19, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002301','2025-10-09 17:40:23','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002302','2025-10-09 17:49:55','103.61.153.19, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002303','2025-10-10 09:20:53','103.61.153.19, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002304','2025-10-10 09:20:59','103.61.153.19, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002305','2025-10-10 09:21:48','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002306','2025-10-10 10:14:05','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002307','2025-10-10 10:50:19','125.70.99.127, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002308','2025-10-10 10:59:00','103.61.153.19, 192.168.10.57','成功登陆','a3eecf90e27a4aa0a5c801bd6d1a06b7',1);
INSERT INTO login_history_data VALUES ('LH002309','2025-10-10 11:07:51','103.61.153.19, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002310','2025-10-10 11:55:50','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002311','2025-10-10 12:34:30','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002312','2025-10-10 13:51:06','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002313','2025-10-10 13:54:20','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002314','2025-10-10 15:26:54','111.201.15.119, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
INSERT INTO login_history_data VALUES ('LH002315','2025-10-10 16:10:51','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002316','2025-10-10 16:11:11','125.70.99.127, 192.168.10.57','成功登陆','SU000001',1);
INSERT INTO login_history_data VALUES ('LH002317','2025-10-10 17:26:42','111.201.15.119, 192.168.10.57','成功登陆','3175796b9d7643c093842d7cc0263028',1);
/*!40000 ALTER TABLE login_history_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS menu_item_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE menu_item_data (
  id varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '编码',
  icon varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图标',
  `action` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '行动',
  load_expression varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '荷载表达式',
  public_service tinyint(1) DEFAULT NULL COMMENT '是否公开',
  service varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '服务',
  merchant varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '工厂',
  version int DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (id),
  UNIQUE KEY idx4id_ver_of_menu_item (id,version),
  KEY idx4version_of_menu_item (version),
  KEY fk4service_of_menu_item_data (service),
  KEY fk4merchant_of_menu_item_data (merchant),
  CONSTRAINT fk4merchant_of_menu_item_data FOREIGN KEY (merchant) REFERENCES merchant_data (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT fk4service_of_menu_item_data FOREIGN KEY (service) REFERENCES service_configuration_data (id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='菜单项';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES menu_item_data WRITE;
/*!40000 ALTER TABLE menu_item_data DISABLE KEYS */;
INSERT INTO menu_item_data VALUES ('MI000006','菜单根','root',NULL,NULL,NULL,0,NULL,NULL,3);
INSERT INTO menu_item_data VALUES ('MI000007','PDA权限','app',NULL,NULL,NULL,0,NULL,NULL,1);
INSERT INTO menu_item_data VALUES ('MI000009','WEB端权限','pcRoot',NULL,NULL,NULL,0,NULL,NULL,1);
INSERT INTO menu_item_data VALUES ('MX-CONFIG-ITEM-OF-VOE-SERVICE','配置项目','voe-service-config-item',NULL,NULL,NULL,0,'voe-service',NULL,1);
INSERT INTO menu_item_data VALUES ('MX-DEPARTMENT-OF-VOE-SERVICE','部门','voe-service-department',NULL,NULL,NULL,0,'voe-service',NULL,1);
INSERT INTO menu_item_data VALUES ('MX-EMPLOYEE-OF-VOE-SERVICE','员工','voe-service-employee',NULL,NULL,NULL,0,'voe-service',NULL,1);
INSERT INTO menu_item_data VALUES ('MX-FEEDBACK-ITEM-OF-VOE-SERVICE','反馈条目','voe-service-feedback-item',NULL,NULL,NULL,0,'voe-service',NULL,1);
INSERT INTO menu_item_data VALUES ('MX-FEEDBACK-MAIN-TYPE-OF-VOE-SERVICE','核心反馈类型','voe-service-feedback-main-type',NULL,NULL,NULL,0,'voe-service',NULL,1);
INSERT INTO menu_item_data VALUES ('MX-FEEDBACK-RESOLVE-STATUS-OF-VOE-SERVICE','解决状态','voe-service-feedback-resolve-status',NULL,NULL,NULL,0,'voe-service',NULL,1);
INSERT INTO menu_item_data VALUES ('MX-FEEDBACK-RESULT-STATUS-OF-VOE-SERVICE','核查状态','voe-service-feedback-result-status',NULL,NULL,NULL,0,'voe-service',NULL,1);
INSERT INTO menu_item_data VALUES ('MX-GROUP-VOE-SERVICE','VoE系统','voe-service-group',NULL,NULL,NULL,0,'voe-service',NULL,1);
INSERT INTO menu_item_data VALUES ('MX-JOB-TYPE-OF-VOE-SERVICE','职位','voe-service-job-type',NULL,NULL,NULL,0,'voe-service',NULL,1);
INSERT INTO menu_item_data VALUES ('MX-MERCHANT-BACKEND-LOG-OF-VOE-SERVICE','后台日志','voe-service-merchant-backend-log',NULL,NULL,NULL,0,'voe-service',NULL,1);
INSERT INTO menu_item_data VALUES ('MX-ROLE-TYPE-OF-VOE-SERVICE','身份类型','voe-service-role-type',NULL,NULL,NULL,0,'voe-service',NULL,1);
/*!40000 ALTER TABLE menu_item_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS menu_relation_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE menu_relation_data (
  id varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID',
  parent varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '父',
  child varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '孩子',
  display_order decimal(7,2) DEFAULT NULL COMMENT '顺序',
  platform varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '平台',
  merchant varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '工厂',
  version int DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (id),
  UNIQUE KEY idx4id_ver_of_menu_relation (id,version),
  KEY idx4display_order_of_menu_relation (display_order),
  KEY idx4version_of_menu_relation (version),
  KEY fk4platform_of_menu_relation_data (platform),
  KEY fk4merchant_of_menu_relation_data (merchant),
  CONSTRAINT fk4merchant_of_menu_relation_data FOREIGN KEY (merchant) REFERENCES merchant_data (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT fk4platform_of_menu_relation_data FOREIGN KEY (platform) REFERENCES platform_data (id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='菜单的关系';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES menu_relation_data WRITE;
/*!40000 ALTER TABLE menu_relation_data DISABLE KEYS */;
INSERT INTO menu_relation_data VALUES ('MR000002','root','app',1.00,'P000001','M000001',3);
INSERT INTO menu_relation_data VALUES ('MR000003','app','fillHome',1.00,'P000001','M000001',1);
INSERT INTO menu_relation_data VALUES ('MR000004','app','delivery',2.00,'P000001','M000001',1);
INSERT INTO menu_relation_data VALUES ('MR000005','fillHome','fillBefore',1.00,'P000001','M000001',1);
INSERT INTO menu_relation_data VALUES ('MR000006','fillHome','fill',2.00,'P000001','M000001',1);
INSERT INTO menu_relation_data VALUES ('MR000007','fillHome','postFill',3.00,'P000001','M000001',1);
INSERT INTO menu_relation_data VALUES ('MR000008','root','pcRoot',2.00,'P000001','M000001',1);
INSERT INTO menu_relation_data VALUES ('MR000009','pcRoot','basic',1.00,'P000001','M000001',1);
INSERT INTO menu_relation_data VALUES ('MR000010','basic','productManagement',1.00,'P000001','M000001',1);
INSERT INTO menu_relation_data VALUES ('MX-CONFIG-ITEM-OF-VOE-SERVICE','voe-service-group','voe-service-config-item',1002.00,'P000001','M000011',1);
INSERT INTO menu_relation_data VALUES ('MX-DEPARTMENT-OF-VOE-SERVICE','voe-service-group','voe-service-department',1004.00,'P000001','M000011',1);
INSERT INTO menu_relation_data VALUES ('MX-EMPLOYEE-OF-VOE-SERVICE','voe-service-group','voe-service-employee',1003.00,'P000001','M000011',1);
INSERT INTO menu_relation_data VALUES ('MX-FEEDBACK-ITEM-OF-VOE-SERVICE','voe-service-group','voe-service-feedback-item',1010.00,'P000001','M000011',1);
INSERT INTO menu_relation_data VALUES ('MX-FEEDBACK-MAIN-TYPE-OF-VOE-SERVICE','voe-service-group','voe-service-feedback-main-type',1005.00,'P000001','M000011',1);
INSERT INTO menu_relation_data VALUES ('MX-FEEDBACK-RESOLVE-STATUS-OF-VOE-SERVICE','voe-service-group','voe-service-feedback-resolve-status',1008.00,'P000001','M000011',1);
INSERT INTO menu_relation_data VALUES ('MX-FEEDBACK-RESULT-STATUS-OF-VOE-SERVICE','voe-service-group','voe-service-feedback-result-status',1007.00,'P000001','M000011',1);
INSERT INTO menu_relation_data VALUES ('MX-GROUP-VOE-SERVICE','pcRoot','voe-service-group',1001.00,'P000001','M000011',1);
INSERT INTO menu_relation_data VALUES ('MX-JOB-TYPE-OF-VOE-SERVICE','voe-service-group','voe-service-job-type',1002.00,'P000001','M000011',1);
INSERT INTO menu_relation_data VALUES ('MX-MERCHANT-BACKEND-LOG-OF-VOE-SERVICE','voe-service-group','voe-service-merchant-backend-log',1009.00,'P000001','M000011',1);
INSERT INTO menu_relation_data VALUES ('MX-ROLE-TYPE-OF-VOE-SERVICE','voe-service-group','voe-service-role-type',1006.00,'P000001','M000011',1);
/*!40000 ALTER TABLE menu_relation_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS merchant_configuration_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE merchant_configuration_data (
  id varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID',
  `code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '编码',
  `value` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '值',
  merchant varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '工厂',
  version int DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (id),
  UNIQUE KEY idx4id_ver_of_merchant_configuration (id,version),
  KEY idx4version_of_merchant_configuration (version),
  KEY fk4merchant_of_merchant_configuration_data (merchant),
  CONSTRAINT fk4merchant_of_merchant_configuration_data FOREIGN KEY (merchant) REFERENCES merchant_data (id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='工厂配置';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES merchant_configuration_data WRITE;
/*!40000 ALTER TABLE merchant_configuration_data DISABLE KEYS */;
/*!40000 ALTER TABLE merchant_configuration_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS merchant_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE merchant_data (
  id varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  nickname varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '昵称',
  address varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '详细地址',
  contact_name varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系人',
  contact_mobile varchar(44) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系电话',
  contact_email varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联系邮箱',
  `owner` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '所有者',
  `admin` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '管理员',
  create_time datetime DEFAULT NULL COMMENT '创建于',
  platform varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '平台',
  version int DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (id),
  UNIQUE KEY idx4id_ver_of_merchant (id,version),
  KEY idx4contact_mobile_of_merchant (contact_mobile),
  KEY idx4create_time_of_merchant (create_time),
  KEY idx4version_of_merchant (version),
  KEY fk4owner_of_merchant_data (`owner`),
  KEY fk4admin_of_merchant_data (`admin`),
  KEY fk4platform_of_merchant_data (platform),
  CONSTRAINT fk4admin_of_merchant_data FOREIGN KEY (`admin`) REFERENCES natural_person_data (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT fk4owner_of_merchant_data FOREIGN KEY (`owner`) REFERENCES natural_person_data (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT fk4platform_of_merchant_data FOREIGN KEY (platform) REFERENCES platform_data (id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='工厂';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES merchant_data WRITE;
/*!40000 ALTER TABLE merchant_data DISABLE KEYS */;
INSERT INTO merchant_data VALUES ('M000001','系统',NULL,NULL,NULL,NULL,NULL,'NP000001','NP000001','2023-09-27 18:02:37','P000001',1);
INSERT INTO merchant_data VALUES ('M000011','植物医生VoE系统','VoE测试系统',NULL,NULL,NULL,NULL,'NP000120','NP000120','2025-09-25 11:28:42','P000001',2);
/*!40000 ALTER TABLE merchant_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS merchant_department_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE merchant_department_data (
  id varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  merchant varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '工厂',
  version int DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (id),
  UNIQUE KEY idx4id_ver_of_merchant_department (id,version),
  KEY idx4version_of_merchant_department (version),
  KEY fk4merchant_of_merchant_department_data (merchant),
  CONSTRAINT fk4merchant_of_merchant_department_data FOREIGN KEY (merchant) REFERENCES merchant_data (id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='部门';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES merchant_department_data WRITE;
/*!40000 ALTER TABLE merchant_department_data DISABLE KEYS */;
/*!40000 ALTER TABLE merchant_department_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS mobile_app_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE mobile_app_data (
  id varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  version int DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (id),
  UNIQUE KEY idx4id_ver_of_mobile_app (id,version),
  KEY idx4version_of_mobile_app (version)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='手机应用程序';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES mobile_app_data WRITE;
/*!40000 ALTER TABLE mobile_app_data DISABLE KEYS */;
INSERT INTO mobile_app_data VALUES ('MA000001','移动端配置0001',1);
/*!40000 ALTER TABLE mobile_app_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS natural_person_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE natural_person_data (
  id varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  mobile varchar(44) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号码',
  platform varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '平台',
  create_time datetime DEFAULT NULL COMMENT '创建于',
  version int DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (id),
  UNIQUE KEY idx4id_ver_of_natural_person (id,version),
  KEY idx4mobile_of_natural_person (mobile),
  KEY idx4create_time_of_natural_person (create_time),
  KEY idx4version_of_natural_person (version),
  KEY fk4platform_of_natural_person_data (platform),
  CONSTRAINT fk4platform_of_natural_person_data FOREIGN KEY (platform) REFERENCES platform_data (id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='自然人';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES natural_person_data WRITE;
/*!40000 ALTER TABLE natural_person_data DISABLE KEYS */;
INSERT INTO natural_person_data VALUES ('NP000001','Root','13880197847','P000001','2023-09-27 18:02:37',1);
INSERT INTO natural_person_data VALUES ('NP000120','吴经理','18628131320','P000001','2025-09-25 11:28:42',1);
INSERT INTO natural_person_data VALUES ('NP000121','123','13899990000','P000001','2025-09-25 12:53:21',1);
INSERT INTO natural_person_data VALUES ('NP000122','演示员工','13900001111','P000001','2025-09-28 08:55:50',1);
INSERT INTO natural_person_data VALUES ('NP000123','吴佩格','17610390728','P000001','2025-09-29 09:24:32',1);
INSERT INTO natural_person_data VALUES ('NP000124','测试用户','17811112222','P000001','2025-09-29 15:03:27',1);
/*!40000 ALTER TABLE natural_person_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS page_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE page_data (
  id varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID',
  page_title varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '页面标题',
  link_to_url varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '链接网址',
  page_type varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '页面类型',
  display_order int DEFAULT NULL COMMENT '顺序',
  mobile_app varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机应用程序',
  version int DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (id),
  UNIQUE KEY idx4id_ver_of_page (id,version),
  KEY idx4display_order_of_page (display_order),
  KEY idx4version_of_page (version),
  KEY fk4page_type_of_page_data (page_type),
  KEY fk4mobile_app_of_page_data (mobile_app),
  CONSTRAINT fk4mobile_app_of_page_data FOREIGN KEY (mobile_app) REFERENCES mobile_app_data (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT fk4page_type_of_page_data FOREIGN KEY (page_type) REFERENCES page_type_data (id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='页面';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES page_data WRITE;
/*!40000 ALTER TABLE page_data DISABLE KEYS */;
INSERT INTO page_data VALUES ('P000001','首页0001','首页0001','home',1,'MA000001',1);
INSERT INTO page_data VALUES ('P000002','首页0002','首页0002','me',2,'MA000001',1);
INSERT INTO page_data VALUES ('P000003','首页0003','首页0003','listof-page',3,'MA000001',1);
INSERT INTO page_data VALUES ('P000004','首页0004','首页0004','service-center',1,'MA000001',1);
/*!40000 ALTER TABLE page_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS page_type_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE page_type_data (
  id varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID',
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '编码',
  mobile_app varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机应用程序',
  footer_tab tinyint(1) DEFAULT NULL COMMENT '页脚选项卡',
  version int DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (id),
  UNIQUE KEY idx4id_ver_of_page_type (id,version),
  UNIQUE KEY idx4code_of_page_type (`code`),
  KEY idx4version_of_page_type (version),
  KEY fk4mobile_app_of_page_type_data (mobile_app),
  CONSTRAINT fk4mobile_app_of_page_type_data FOREIGN KEY (mobile_app) REFERENCES mobile_app_data (id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='页面类型';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES page_type_data WRITE;
/*!40000 ALTER TABLE page_type_data DISABLE KEYS */;
INSERT INTO page_type_data VALUES ('generic-page','Generic Page','generic-page','MA000001',1,1);
INSERT INTO page_type_data VALUES ('home','首页','home','MA000001',1,1);
INSERT INTO page_type_data VALUES ('listof-page','Listof Page','listof-page','MA000001',1,1);
INSERT INTO page_type_data VALUES ('me','我的','me','MA000001',1,1);
INSERT INTO page_type_data VALUES ('service-center','功能大厅','service-center','MA000001',1,1);
INSERT INTO page_type_data VALUES ('simple','普通','simple','MA000001',1,1);
/*!40000 ALTER TABLE page_type_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS platform_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE platform_data (
  id varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID',
  `name` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  create_time datetime DEFAULT NULL COMMENT '创建于',
  last_update_time datetime DEFAULT NULL COMMENT '更新于',
  version int DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (id),
  UNIQUE KEY idx4id_ver_of_platform (id,version),
  KEY idx4create_time_of_platform (create_time),
  KEY idx4last_update_time_of_platform (last_update_time),
  KEY idx4version_of_platform (version)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='平台';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES platform_data WRITE;
/*!40000 ALTER TABLE platform_data DISABLE KEYS */;
INSERT INTO platform_data VALUES ('P000001','双链IAM网关服务0001','2023-09-20 17:25:00','2023-09-16 03:04:14',1);
/*!40000 ALTER TABLE platform_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS public_key_type_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE public_key_type_data (
  id varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID',
  key_alg varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '键 ALG',
  sign_alg varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Alg迹象',
  domain varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '域',
  version int DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (id),
  UNIQUE KEY idx4id_ver_of_public_key_type (id,version),
  KEY idx4version_of_public_key_type (version),
  KEY fk4domain_of_public_key_type_data (domain),
  CONSTRAINT fk4domain_of_public_key_type_data FOREIGN KEY (domain) REFERENCES user_domain_data (id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='公钥类型';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES public_key_type_data WRITE;
/*!40000 ALTER TABLE public_key_type_data DISABLE KEYS */;
/*!40000 ALTER TABLE public_key_type_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS quick_link_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE quick_link_data (
  id varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  icon varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图标',
  image_path varchar(512) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL COMMENT '图片路径',
  link_target varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '链接的目标',
  create_time datetime DEFAULT NULL COMMENT '创建于',
  app varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '应用程序',
  version int DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (id),
  UNIQUE KEY idx4id_ver_of_quick_link (id,version),
  KEY idx4create_time_of_quick_link (create_time),
  KEY idx4version_of_quick_link (version),
  KEY fk4app_of_quick_link_data (app),
  CONSTRAINT fk4app_of_quick_link_data FOREIGN KEY (app) REFERENCES user_app_data (id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='快速链接';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES quick_link_data WRITE;
/*!40000 ALTER TABLE quick_link_data DISABLE KEYS */;
/*!40000 ALTER TABLE quick_link_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS sec_user_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE sec_user_data (
  id varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID',
  login varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '登录',
  mobile varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手机号码',
  email varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '电子邮件',
  pwd varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码',
  weixin_openid varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '微信openid',
  weixin_appid varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '微信Appid',
  access_token varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '访问令牌',
  verification_code int DEFAULT NULL COMMENT '验证码',
  verification_code_expire datetime DEFAULT NULL COMMENT '验证码过期',
  last_login_time datetime DEFAULT NULL COMMENT '最后登录时间',
  domain varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '域',
  version int DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (id),
  UNIQUE KEY idx4id_ver_of_sec_user (id,version),
  UNIQUE KEY idx4login_of_sec_user (login),
  UNIQUE KEY idx4email_of_sec_user (email),
  UNIQUE KEY idx4mobile_of_sec_user (mobile),
  KEY idx4verification_code_of_sec_user (verification_code),
  KEY idx4verification_code_expire_of_sec_user (verification_code_expire),
  KEY idx4last_login_time_of_sec_user (last_login_time),
  KEY idx4version_of_sec_user (version),
  KEY fk4domain_of_sec_user_data (domain),
  CONSTRAINT fk4domain_of_sec_user_data FOREIGN KEY (domain) REFERENCES user_domain_data (id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='安全用户';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES sec_user_data WRITE;
/*!40000 ALTER TABLE sec_user_data DISABLE KEYS */;
INSERT INTO sec_user_data VALUES ('0370abaf8d5940b4a338abc815765b38','13630026320','13630026320','13630026320','D31B41ADD1933DAFF3B58D711807F3EBF0AAFD3394EBCF3FF9A88CB287F5E4A2','xxx','xxx','xxx',0,'2025-01-14 12:31:37',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('03e8957e997d4ce18d99a521c7d003a1','13726778532','13726778532','13726778532','21ECBEFE62940EED68ABDEE9661D28CB0B260E1A58CE9ECB408555054E629342','xxx','xxx','xxx',0,'2025-01-14 11:55:02',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('0786e2f4f4e24d56ad8c7e1e8d6e6845','13899990000','13899990000','13899990000','826272652C319F555188F727EDCF74B0D64BA8773741A9EB6EF622B409683AEB','xxx','xxx','xxx',0,'2025-09-25 12:53:21',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('09cfa59957b94e1c98f852632f355df9','12345678904','12345678904','12345678904','8711250222558469B2729FC167DA5E9C50AA07C45B88E03F67815B4C0B41B78B','xxx','xxx','xxx',0,'2024-11-25 16:24:30',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('0d2fb7d2adfe45ce80c044336fe5d3fd','13422318163','13422318163','13422318163','92009B7F0EC0931251055E2682E9C43E537E0C859A56D35EEA368B23DFE309A0','xxx','xxx','xxx',0,'2025-01-14 12:31:39',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('0ecec929f2ac4dcab64ebc9512680760','12345678905','12345678905','12345678905','127135A5224A172BC1FF0DABB363C83A084BAE822BED8847AEC52EED0993C412','xxx','xxx','xxx',0,'2024-11-25 16:25:06',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('102207c653e9414db4003cf89a5fe39c','13650825217','13650825217','13650825217','73BBDFABDA038C8B9E4220D8B668542165E95357004D9D31F48ED12B670953E2','xxx','xxx','xxx',0,'2025-01-14 12:31:18',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('11f6bd688fdb4dd3b45c178a82fc99c7','13416383884','13416383884','13416383884','54733FF53238057451A55A3D0127E00F42AC6DBAEEA616C5BDB144AAD3BF4E85','xxx','xxx','xxx',0,'2025-01-14 11:59:15',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('13331e5e17fc44f9ac2fc9656859062e','13973249900','13973249900','13973249900','30218D982B989E8B8F4351DE9CE2C69662840A6DCF767DF00E1EF772A9893F93','xxx','xxx','xxx',0,'2025-01-14 12:30:32',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('1375f1ba290e49ccb989479fb9f4deeb','18933958827','18933958827','18933958827','0A7D9E1BCC6CBB14D8916F952D4B0D52C3D7DEBB2F84C3F04747F6F66A49E5DA','xxx','xxx','xxx',0,'2025-01-14 12:31:09',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('145fe93cce404ebc944d6e28c9f5f6b0','13610180410','13610180410','13610180410','86F445442DECA8355BA86327E63810A8E3A982215EFA63318DB2A297BEB551C3','xxx','xxx','xxx',0,'2025-01-14 12:00:14',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('14d07cd90c824764b38d310951aaab3f','13600265535','13600265535','13600265535','44DB352B551E6876BBDB1CF490467127C0999979E1117AA9FDEB5906257987C8','xxx','xxx','xxx',0,'2025-01-14 11:54:35',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('16a494a6732445e9890bf1508bbdbba0','13763380773','13763380773','13763380773','6214D77966CE28A7E0FE4CBE84C606E0CEC69F59D2463575654417060549E6E2','xxx','xxx','xxx',0,'2025-01-14 11:55:13',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('1e95055eca52467e9d88798eab99de2c','13668974530','13668974530','13668974530','6B1C6164A481293524C0F5CCA04E1F8EF115981897985D9ADA797F3365892CB1','xxx','xxx','xxx',0,'2025-01-14 12:28:41',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('2440ad287e7c4169868173c9a890cc3a','13660101578','13660101578','13660101578','C722D60D0796AC922726F0077FF44DC7E20918A920180F0FD010B2F90AD01D6C','xxx','xxx','xxx',0,'2025-01-14 12:00:41',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('24505f9127c142cba20c016e579fe758','13431083001','13431083001','13431083001','845EA231A98E9F8CEA1F911772E196628F7D15BCF646997CCDE06360BC46B278','xxx','xxx','xxx',0,'2025-01-14 12:29:04',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('266d84fd5090472dbfa2f3af047c9ed2','18024283301','18024283301','18024283301','3D9A2084FDA5E0BE7FBC0BEC06B52F5929BD9FB2A457C07B48F8703EB330AB41','xxx','xxx','xxx',0,'2025-01-14 12:30:59',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('27648932e6114144a14bb6fdd059ef14','13666235896','13666235896','13666235896','8F7B446E38198A8780355BCFFAAB20D9EB27B73D0C88AD7586E387452E729CC8','xxx','xxx','xxx',0,'2025-04-28 09:02:30',NULL,'UD000001',3);
INSERT INTO sec_user_data VALUES ('290cc5d5d5184f3e924b7d1ed6856661','13925052526','13925052526','13925052526','28E4F3876085942105422AFE572C9F867E194C021381E19EA42F8626D2BB7181','xxx','xxx','xxx',0,'2025-01-14 15:33:05',NULL,'UD000001',3);
INSERT INTO sec_user_data VALUES ('2c64b6b3793740ffbeb461c6092876d8','13802927428','13802927428','13802927428','69EFACFEEACE2D43479B81EDE32E7C5010E18266AB42682643B51A3CBFE1DA13','xxx','xxx','xxx',0,'2025-01-14 12:29:43',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('3175796b9d7643c093842d7cc0263028','13900001111','13900001111','13900001111','968CF4A0FA2E07CE7B72803CC72527686DB2B14B5C32EAD8CC4149F31EB794FC','xxx','xxx','xxx',0,'2025-09-28 08:56:13',NULL,'UD000001',2);
INSERT INTO sec_user_data VALUES ('3445ad039a9b4cabad8a1ee47d93e3fc','15103832917','15103832917','15103832917','FD3F1AFB867F68AC141D4BC97DDF7DE8F852EFDD557A73843B3F79BB9EF3ED39','xxx','xxx','xxx',0,'2025-01-14 12:28:52',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('387509083a6e40c9afaebbd53ca27949','13719106505','13719106505','13719106505','E072D92152B86C89B0C3225C465BCEFE427131E47B49B1F60BB1C1B30EA3BDF5','xxx','xxx','xxx',0,'2025-01-14 11:55:32',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('3ae963534e374706aa45c62066797340','12345678901','12345678901','12345678901','2289285DB60FFD99D782D3DAB95E414B8831309C7ED6F7916B958A2358251DD3','xxx','xxx','xxx',0,'2024-11-25 16:23:03',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('436f52dfa94b4587ae02df75f8561511','17701957501','17701957501','17701957501','EA696084C0212D535B2B50F103BC2F1A0E8BEF635BC2F2745E5F4BA75CD10642','xxx','xxx','xxx',0,'2025-01-14 11:58:19',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('455e464e152140da86b86f6ebe1788f5','13928756396','13928756396','13928756396','E8AC72FA352FA73E6C418FA01B869113946AD463D930B755E1072EF5A017F83A','xxx','xxx','xxx',0,'2025-01-14 11:57:58',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('497ba9262bdc470abc5fbacf5c0402b1','18826128296','18826128296','18826128296','FE1942114D4826491A2DC9DC7DF527E4DC4E0B0BAD77BEB83885BB57C8DFE337','xxx','xxx','xxx',0,'2025-01-14 12:28:30',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('498df650f3f34798adca816d67f63da0','13668914685','13668914685','13668914685','0E568FD37C86FF7A84FDA15ADEF5271424DD4BE829C003B7EEEEDCB361DA628D','xxx','xxx','xxx',0,'2025-01-14 11:57:13',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('4ddce111e3044e79bffd15e385d0cc52','13826459023','13826459023','13826459023','F3BF3A3E653F63D5432A514FC04D42BDCB22FB85E5ACC67F8E5B4E2264216732','xxx','xxx','xxx',0,'2025-01-14 11:57:15',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('4ea50f80dbe44d1ca8c8e25a293f2f61','13711348100','13711348100','13711348100','6DE5C594D29A4F5E21AAA2B89EA7882155D7E096AA93FF5E6C96CE13F77CD0CC','xxx','xxx','xxx',0,'2025-01-14 12:28:23',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('4f424d28b16f4cbebc6eabfc8a79512b','12345678907','12345678907','12345678907','BA74FDBE05818BF8F1884958846C7CC294773E8672A1CAB7E54B78A1EBE05371','xxx','xxx','xxx',0,'2025-08-03 07:03:13',NULL,'UD000001',2);
INSERT INTO sec_user_data VALUES ('506454ae412f43bfa21debf4e1c75b4d','13978526000','13978526000','13978526000','965AB9175C9FB904344FBBC7B7450E1D29ED6598C4E0ED7AE9FF9F418572736F','xxx','xxx','xxx',0,'2025-01-14 12:29:03',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('583a68c2b14c4142b457c6054104c2b2','13900000002','13900000002','13900000002','E35D3450045B2D414B32C5C5944748DF6074D15249EF7862C9E63956804E1172','xxx','xxx','xxx',0,'2023-12-18 10:30:32',NULL,'UD000001',2);
INSERT INTO sec_user_data VALUES ('58f0f410ae7c47d8ac02cd1a45a3ae66','13642773225','13642773225','13642773225','479627B3CC8035F9C877F6899ED5FF0391EF808D5AB72B447DC0A2CDF4BF2692','xxx','xxx','xxx',0,'2025-01-14 12:28:06',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('5b818a0c52ef4ca7bfa6fb2bb18582b4','13808805455','13808805455','13808805455','B16284374DA67838B95207610E6D97A088DE7068DD2A4D2CA34056B3E5AF29FE','xxx','xxx','xxx',0,'2025-01-08 13:53:06',NULL,'UD000001',2);
INSERT INTO sec_user_data VALUES ('5c4da0d3ebf845ff9a91e10a6c2674e2','13724872102','13724872102','13724872102','23C2351DEEF31EF048BE2BD6B0D7F6C1526C38BC89C292F2606BD69C50C77161','xxx','xxx','xxx',0,'2025-01-14 11:59:31',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('5d7226e5668144ef97547c9bf7a35854','19912345678','19912345678','19912345678','6B4C9B7B884D9836E4C7D306BF67300D25378226EB388D1296632464E2A35775','xxx','xxx','xxx',0,'2025-02-27 14:17:47',NULL,'UD000001',3);
INSERT INTO sec_user_data VALUES ('5e782fa68fb84ec5960fe13ffd7bbd9d','13642669112','13642669112','13642669112','919938C4D8BA434A47E18873028E84C7E55694CE50DC39E8A99B477AFC7859E1','xxx','xxx','xxx',0,'2025-01-14 11:57:57',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('5f2cfaa7ebc44a5aa32c1d3163dc0f03','13922396438','13922396438','13922396438','E27626DAFD5C71F8FBFC28023FC77DEAB275D7012E93490DA758AB5DACFBA788','xxx','xxx','xxx',0,'2025-01-14 11:54:34',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('677d9bebd0da40d2bf0d3031e7b59f65','13812345678','13812345678','13812345678','DA7369B8BEDF16124B40BA138FAE00249B3EBD892B434E3B6EB4F779FFFD5EAA','xxx','xxx','xxx',0,'2024-10-03 19:57:29',NULL,'UD000001',2);
INSERT INTO sec_user_data VALUES ('67a2c22ade4c4728a8c5cc22a2f2d154','13533151874','13533151874','13533151874','D182E82523E0C4EB6B61BEA5C7D8839FEDB46AF9D7335BBE1EEC7C06C9A0B060','xxx','xxx','xxx',0,'2025-01-14 11:58:40',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('6875ce2d425a4e118b91de41aadc5198','18520488118','18520488118','18520488118','431FB4E1DEA26FEDA785FADBE498EA1E198B9F49636ECFAD3954E4261504B18D','xxx','xxx','xxx',0,'2025-01-14 12:00:24',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('68c6c3cbbab04e1c920c1bc609b16173','12345678906','12345678906','12345678906','2CE794654C23631DE87709A92A507A4DEFBCF70193D13B9A75558F0014A060C8','xxx','xxx','xxx',0,'2024-11-25 16:25:28',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('69894a5053f848e8abfd4e2079f4327b','13760831278','13760831278','13760831278','9C4017FFDF049741526ED56F846F810894B505B7C06E2F25E19F9310120BF44C','xxx','xxx','xxx',0,'2025-01-14 12:01:19',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('6a33293c254b4e4487b3330f123b01be','13544396581','13544396581','13544396581','620A508B54DF7261C667A075894AC2FAE4288DA7900CDA9E945EBB8400D7356F','xxx','xxx','xxx',0,'2025-01-14 11:57:47',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('6b644ba280694f80aa4057a89f697394','18102746228','18102746228','18102746228','DB2431BB591BA2D2F6E7D8DBC5B845E942E338A69B5F4C3B9E66FD4109FA541C','xxx','xxx','xxx',0,'2025-01-14 12:30:22',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('6b87b3d3aee04152b2c751f1a866f3b2','13922259273','13922259273','13922259273','A986897A3A5E274149CD67C2C6B14FA0B9596BE3DB4C751FFBED335FE6C3C7EA','xxx','xxx','xxx',0,'2025-01-14 12:29:13',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('6cb50e35f6c44742a58a0e52ad795dee','13544537777','13544537777','13544537777','A832CB47F7AC2FF5136FC3CF552F30F22AD0E5B188B30150ACDABAF29B900FF1','xxx','xxx','xxx',0,'2024-11-25 20:32:26',NULL,'UD000001',2);
INSERT INTO sec_user_data VALUES ('6f612c8c31c6458b9e6b48175c30e23c','18820808993','18820808993','18820808993','A5AF594EE21AEDF0CC51DA76BCF1A0CB1422CC36DF685D983DD54F270CCA0CEA','xxx','xxx','xxx',0,'2025-01-14 11:56:10',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('6f66332f817d484f9eacec07b6d5da61','13728099519','13728099519','13728099519','7EAF7A80417FDE98C5A1E1570FE562F0C601B97E4F03A455B740667657548899','xxx','xxx','xxx',0,'2025-01-14 12:30:50',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('739be289146a410a8228d71dfedc397c','18108076682','18108076682','18108076682','B20870488B4531DE7285F59518FF5C240961DFF229C320554C5786B67F7879D8','xxx','xxx','xxx',0,'2023-12-21 10:58:11',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('74f45141b46448ec94cbdde8373ea7f3','13829723723','13829723723','13829723723','835A2E1DC703F504E391A9A4BCE23149B82D6473CDC6E99D1C396D9B7E2EA498','xxx','xxx','xxx',0,'2025-01-14 11:59:48',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('770954f3e8644bae974d1aa46d60a6e4','12345678902','12345678902','12345678902','C6434ECD7D84416B6025DB36433EB9F4A67D7037334C1576C29C88F5CDFC4E7E','xxx','xxx','xxx',0,'2024-11-25 16:23:47',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('786b38119e22455cabcc030161689812','13610017022','13610017022','13610017022','4C4EA21AE8AB3F9F28C10E4A9237D229F9F0C2457B3A2DF7AE1C327B51BEF60C','xxx','xxx','xxx',0,'2025-01-14 11:58:07',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('78dede2afc5b4206869a42cf78d3df52','13826259027','13826259027','13826259027','8CFB2A28AB7BBB45C8D12D4D07AACBEBBD0FF59E90DD806D27CAE00CF27ADB2E','xxx','xxx','xxx',0,'2025-01-14 12:00:47',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('7da51b485ebc4081be61daed7570ba0e','13826065769','13826065769','13826065769','2812BB3D8AE1226DAABD6CBB1357FB1833EB0E0A1DC51B33A0EBD2D3A0788A42','xxx','xxx','xxx',0,'2024-11-25 20:32:43',NULL,'UD000001',2);
INSERT INTO sec_user_data VALUES ('826d4375abaa47ceaaf0baaefc82f23e','15915757878','15915757878','15915757878','BE46F942EB96EFABB4560214BA0F88F91472243702C9BDE92B90BEE1F16D89EA','xxx','xxx','xxx',0,'2025-01-14 11:59:31',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('85f84aec2e864bd6912641ced0ab7535','13719184967','13719184967','13719184967','8B0A9393899876A8A497E5E303D305EA9DE9275746DAE0CB99A5499334E739A7','xxx','xxx','xxx',0,'2025-01-14 11:59:10',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('87506ab66bb74e98bae17f71cab0e800','13533436817','13533436817','13533436817','AA5694E3EB281F542755BE2434FE1B8A7500AC6782214F0D867E2F8EBE99AD2E','xxx','xxx','xxx',0,'2025-01-14 12:32:13',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('883a23c4673d462492a5c42d2206687d','15986413477','15986413477','15986413477','84B0C8DC2A777006C2195CDF24A82146F704C4061FA8F4F9B06A308721F01DB9','xxx','xxx','xxx',0,'2025-01-14 12:30:03',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('8843a40f37314d44a3a7ba05772c2fce','18773211181','18773211181','18773211181','9EE9AB7A8CAA3B3EAAA9379B5CEF708CC9B67C616ECDCBDA8CFC611DF356B77F','xxx','xxx','xxx',0,'2025-01-14 11:55:30',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('8aa73b674b7b4bfeb374469db0183ce8','13924204982','13924204982','13924204982','C951F92260CF6EAE29424083C124C8B93EF49F91358F0E2A2AE21B84C0A4245F','xxx','xxx','xxx',0,'2025-01-14 12:31:50',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('94b754c9010e4c5ea54e0fd3173f929b','13538982317','13538982317','13538982317','116D0D235CC386DA5CDBBE8377FFB472BDA900850EAC6C281A7F76A7EE821EBD','xxx','xxx','xxx',0,'2025-01-14 11:58:39',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('957b1bb15f634a5c8a8f726bcc6a2f03','18138762592','18138762592','18138762592','FACA926B854E699A76C030ADEC3357F2B26266E8C0805D763EF293CF17B2B1DE','xxx','xxx','xxx',0,'2025-01-14 12:01:41',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('98b421519bb54b48a26d4d7168a9c789','13922184678','13922184678','13922184678','5005710D6D9E0E7CED3A2D8E6BA1FF4898465D8CE95D74D7D8DCAD3DCAA07CA5','xxx','xxx','xxx',0,'2025-01-14 11:57:27',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('9932b1adf3e4455d960b72b3c99bcb2d','13609719991','13609719991','13609719991','7B690C3A1DB44A289C37AA10708084B28179CEC6B119DCAD8B83676F725C4A74','xxx','xxx','xxx',0,'2025-01-14 12:29:32',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('9babc04b7ffd4d3da02a5f16f731d3a4','13503005288','13503005288','13503005288','336B45DDFA9F1B512D01F080C1524DB65569C83727D6EAD6C2A4AA9360A7BD91','xxx','xxx','xxx',0,'2025-01-08 13:57:34',NULL,'UD000001',3);
INSERT INTO sec_user_data VALUES ('a0394ba717364ca5a3d7c17266201caa','13871785623','13871785623','13871785623','931087C3759F40C66E7D89CC8E5256480DF21E54C3D32924C33552D1999642AC','xxx','xxx','xxx',0,'2025-01-14 11:57:37',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('a06022e8b92343f8be5dbb8ed74f0d2d','12345678911','12345678911','13111111111','F5CA2E205E45E1636B0B8AA4920D091BF037D5357E4F38E303138414C32BA1D0','xxx','xxx','xxx',0,'2025-09-25 11:12:21',NULL,'UD000001',8);
INSERT INTO sec_user_data VALUES ('a0e804d8b75746eda1b94b7a9d887cdc','13512781075','13512781075','13512781075','F88AE9EDAD9C8D3E48ABE1D47D2897F55DD6D128BB9699D8AB3241C3406145B7','xxx','xxx','xxx',0,'2025-01-14 12:31:59',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('a34c322dde7344c2bbc0eb6f6258bfdd','13926247374','13926247374','13926247374','0B8B9A40EAA854CFDEDE5AC558A58A904875778C794E31F305069F422F5A5CFF','xxx','xxx','xxx',0,'2025-01-14 12:29:18',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('a3eecf90e27a4aa0a5c801bd6d1a06b7','17610390728','17610390728','17610390728','D1EA07B3820B23752E9CDE85110293CF183943A6A0D9658D08E8F3C0B4DDC806','xxx','xxx','xxx',0,'2025-09-29 10:19:53',NULL,'UD000001',2);
INSERT INTO sec_user_data VALUES ('a7a39f6dc7824d3c8bae8ceb6b7d85db','13829729982','13829729982','13829729982','DE2FF7E8A424B6E8783DF70E50B8D6206EB758C1CFDF84679ADAA0B7AA8BAFD9','xxx','xxx','xxx',0,'2025-01-14 12:00:04',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('a91f99c1718540dc8f17804c0b6b8075','13676298887','13676298887','13676298887','A5ED6A7CC35A88EF16C4336BC7374F918E84B21B9FD5019F5728AB3EFC31FBEF','xxx','xxx','xxx',0,'2025-01-14 12:28:37',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('aa2152d2b4a3494b88b7520721ae0bc7','13828455826','13828455826','13828455826','6792E10A547D45E6837146B1C797DAFC6D64E59DA5AC40FD28F50EDED06AD29A','xxx','xxx','xxx',0,'2025-01-14 11:58:59',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('ab8c6d5c20f34f48bde4823657e5e81f','18565406111','18565406111','18565406111','93BF16030863020DB51E741C0D5092737B20FBD5715BF4872EDFD0F629C97797','xxx','xxx','xxx',0,'2025-01-14 11:55:18',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('ac084f44f7414fa1b004262c8f28ed5b','18973229642','18973229642','18973229642','503FC74D1A1E2BDC16BD20DF98CF69897A86D4FD7EF3F76A5D33810B24228ACE','xxx','xxx','xxx',0,'2025-01-14 11:56:20',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('ac866268facf42c992dca008a3ded5a5','13719420380','13719420380','13719420380','A19E3BBC60F28A0D1CB13BA21E164C294E6688CD6430BCDD7BCA6EE8FEBA7295','xxx','xxx','xxx',0,'2025-01-14 12:30:12',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('aedd2984fa864c519879bb84ee73d81f','13533635464','13533635464','13533635464','E756CD2F717922D696639BD26A779EB83767041BD793D6E06C3053157632A79D','xxx','xxx','xxx',0,'2025-01-14 11:56:40',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('aff6da36c7274e62ab76e537319f9c70','13650803980','13650803980','13650803980','907BD4A161E832C7485D7C4CAB959B7227E54EC6C736BCE0FE4E51D9725CBA61','xxx','xxx','xxx',0,'2025-01-14 11:57:26',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('b015fae1097d45c99bbdf5bcec9b4010','13880197847','13880197847','13880197847','921BCD6C4ADE687FCCEAE7BA03A5B98B89019528657751759C43176B1861605B','xxx','xxx','xxx',0,'2023-09-28 13:42:42',NULL,'UD000001',3);
INSERT INTO sec_user_data VALUES ('b228702d4c4c4e5d9dcad07f60bdce49','13719315189','13719315189','13719315189','69DF3EE05EDA9DC823B0B8BF5F801250E985F1CCF9481E7508EDAA5150556462','xxx','xxx','xxx',0,'2025-01-14 12:31:29',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('b64e81b775684164a00b24a18be1d9ed','13622245942','13622245942','13622245942','982AD7EC88F986484F62F884E571AFA93FFF392E7CA64955E5DD9735BF2183B0','xxx','xxx','xxx',0,'2025-01-14 12:01:24',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('bc0aad1be04844a0a9e08440b030d677','13926222321','13926222321','13926222321','9C4B76C3B4A8D0AF60916C09A77ED0870739DC3B0044E151E782D5EC5D76255C','xxx','xxx','xxx',0,'2025-01-14 12:29:41',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('bc5423f72fa2458ebdb6cf8ce04b2545','18565181384','18565181384','18565181384','2B5016DF0F79FD786E25FAAFB30631AB3C666BC49C088329EFBE640AD20F146A','xxx','xxx','xxx',0,'2025-01-14 11:55:51',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('bd2e735607ef431b8b999e32a186039f','13650948661','13650948661','13650948661','69A4880D283D95B266963D3A23AB8730B8D5B65A714EAB9482F017A69080145C','xxx','xxx','xxx',0,'2025-01-14 12:31:48',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('bd8552f2e85547f08974d94b56df252a','13544381163','13544381163','13544381163','F1FA547DAA873B6A803DC9AED22E600D5E0D9A16B4B8E6E11094B52B2FBF2C40','xxx','xxx','xxx',0,'2025-01-14 12:00:34',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('c00cda48510349adaf50faee27c26ca3','17811112222','17811112222','17811112222','F09070EEF5C8BD6510EADCB53756E0125EFD0DBEDED14791D915A8AF05F0376E','xxx','xxx','xxx',0,'2025-09-29 15:03:49',NULL,'UD000001',2);
INSERT INTO sec_user_data VALUES ('c16972701c7949a3be509ffa13aa6d95','18080909895','18080909895','18080909895','05175EC23DDE4D2770ACE8E8F74D5431855D31C54EC28E3E468A7A068F42E478','xxx','xxx','xxx',0,'2023-09-28 14:11:16',NULL,'UD000001',2);
INSERT INTO sec_user_data VALUES ('c31ba95415ef4c62b2771f90dc6a4716','13925025895','13925025895','13925025895','CBA7D0370EB31363600458362EAE9DD7C4AE102481110423EF5B94BAC730898C','xxx','xxx','xxx',0,'2025-01-11 15:10:03',NULL,'UD000001',3);
INSERT INTO sec_user_data VALUES ('c555fd3b4a924deb8fdd0bd78ded4425','18171562206','18171562206','18171562206','00EF13900CD72607FBA261BB72BF96B0978C1DBAD2CC0B59599FC9662DA4511D','xxx','xxx','xxx',0,'2025-01-14 11:54:17',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('c70a82d425eb498f82a383bedbb0a306','18027365430','18027365430','18027365430','511FA5783510D68F11336B3066B69CEC291A35BC011CA415D99B55EAC4275D00','xxx','xxx','xxx',0,'2025-01-14 12:29:22',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('c7ad1523b3104aefa1cb463db271827e','13245678901','13245678901','13245678901','1E128A444B3EC4613B99DFF3E6754A9A25DB5AB70F6021CFC1AAE9B8F2E05CC0','xxx','xxx','xxx',0,'2024-10-13 11:04:30',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('c7be93dfe99a4f37962cc36621c70b72','19911111112','19911111112','19911111112','F97036887459DC47285F498B394D43D4670380789FAAA77D2A08FEC148F1DD3E','xxx','xxx','xxx',0,'2023-12-21 12:11:58',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('c8cad67a2ced409f8799178a410706fd','13527802448','13527802448','13527802448','C9DABA840D52773F3BF7B1A41B96721E177C67D9115DB40CED0A45D283EFFD79','xxx','xxx','xxx',0,'2025-01-14 12:01:05',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('c8e2a51ba33d4fbb9498fc701c911691','13711341366','13711341366','13711341366','83BF47399385D3842216267F828C163E1FA222BA3A84B2701D6A35B883E78087','xxx','xxx','xxx',0,'2025-01-14 11:51:01',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('cba7dff6d6554330aac88e3fb46b684e','13286812966','13286812966','13286812966','FF6BB26CD473BB12F944929A1ED637BA4A17A6A2475D1EF08EE61704714504B0','xxx','xxx','xxx',0,'2025-01-14 11:57:43',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('cced8ade317349da986b3b5e2f7f9a49','13632222197','13632222197','13632222197','2B2CADB3F66354767C55786F562A97C8BB3148564F3E3715E65ED5DC6D847161','xxx','xxx','xxx',0,'2025-01-14 12:29:53',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('cd0a3545963d437b90e045a935366358','13826092892','13826092892','13826092892','5B64AD3823049C14DA678C1C47A0ADE026F86221FF5E23664088DEB580DC7166','xxx','xxx','xxx',0,'2025-01-14 11:58:27',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('ce02fe49bb5f4b478afc34106a26e8ab','11111111111','11111111111','11111111111','320264BAB4D2D381C64F6C588642CA006B2BC8857ABC9F996802FDADF2658C9A','xxx','xxx','xxx',0,'2025-01-17 04:14:45',NULL,'UD000001',3);
INSERT INTO sec_user_data VALUES ('ced914bd158f4ad290c37096c647cb62','13662336946','13662336946','13662336946','F161BADA62800C32763004A886EACBE2D8D74701EE8CA9337079D7DB11B36A44','xxx','xxx','xxx',0,'2025-01-14 12:29:52',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('cf2ad1a228684b36bc5294a761188875','13600098636','13600098636','13600098636','2B1027A7B6E7740960AFE14E290E8DF201ED7C59F4E8C6EBDBB46D7CC31B41A3','xxx','xxx','xxx',0,'2025-01-14 11:58:49',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('d27599b6c3ee4ebe8b90962605ca5a3e','18628131320','18628131320','18628131320','63B57B5FF1BC17ECC7E004F86830F7CEAA2E85808CBE93CEC642BA8BE990E129','xxx','xxx','xxx',0,'2025-09-25 11:30:20',NULL,'UD000001',2);
INSERT INTO sec_user_data VALUES ('d3f5a059529c49da8f9cbab8c97636b9','13631911633','13631911633','13631911633','B134EA3C47B0B3FCFDE192E9BEED2BD03E95EEF14FD853B066BE656A9F454E44','xxx','xxx','xxx',0,'2025-01-14 11:58:29',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('d51dfcba86d944ed8abe478a8ef4666f','17507357687','17507357687','17507357687','47A865808AFFD1AA09985F64ABA0D761A4D07B8EE75D393B65713BCFA80AA3B6','xxx','xxx','xxx',0,'2025-01-14 11:56:07',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('d70deb46c6de4c6697d25b9356cb09b4','13602276573','13602276573','13602276573','656D3FB392D8086226DD25EE46C706F3BEE97AB14E2E7E707277CC37A1555F0A','xxx','xxx','xxx',0,'2025-01-14 11:58:10',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('d892c3b5ee6f47ecb44bca38de52f0f9','18620942936','18620942936','18620942936','9325FC535E43FCEBFD001C4C3B307B2C80ADA818C955434758D0E0B5289D8F61','xxx','xxx','xxx',0,'2025-01-14 12:00:54',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('daf6b7d24b724c609c1aa6c72098feea','13539424026','13539424026','13539424026','A5541E6840DCD40F732E3E4A9AF9FEC4EF9F4847A8223213856AE01E60587862','xxx','xxx','xxx',0,'2025-01-14 12:00:27',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('dd6d5542434e4207ad67cf448a0f1ff1','13924023363','13924023363','13924023363','383F6A85493343627703E01B443B2D92DD88C18BF5770994108270EB540787D2','xxx','xxx','xxx',0,'2025-01-14 11:54:48',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('e68947963d23492eb02c22085fe0eb10','13420204865','13420204865','13420204865','A6D8D737327C2F62CC449C5A7A38099E1E0754301FF05F8CBEDEEDFC9D73A54B','xxx','xxx','xxx',0,'2025-01-14 12:30:40',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('e8f5f7b98843473fab9f6b94315e8c73','17620040368','17620040368','17620040368','FA8FEA1E1A7E1B77E024BFD7B9E50D9F25B8BC3302E8A742918A552C89EF3363','xxx','xxx','xxx',0,'2025-01-14 12:28:07',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('ee6c7ad610684a2cb1bc8d9a354c7d14','13288472662','13288472662','13288472662','8C49A661FDC430E379577681FE12F531F2E5FFB84BC66AB4E488087FDA040293','xxx','xxx','xxx',0,'2025-08-29 08:47:55',NULL,'UD000001',2);
INSERT INTO sec_user_data VALUES ('ef08ffb1759b462fa1026697af6df6b6','17329989686','17329989686','17329989686','66279F5762B9AD16CCB107E5B9686403236FF03529A767FE689A88E81D297180','xxx','xxx','xxx',0,'2025-01-14 11:59:20',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('f0529cf7f9894d9c8837cde7c2f5e53e','13202077317','13202077317','13202077317','0AE04C8E448C05C8097403BF32A41C608E0EF536DD38D234D1B79BCBE074873C','xxx','xxx','xxx',0,'2025-01-14 11:55:53',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('f19f7f3816734923a132015460ce766f','13928973391','13928973391','13928973391','5DFD7701BFC4165B3EC8469321C6B617A8680AD28D302F0BBEEE89BCB86CE100','xxx','xxx','xxx',0,'2025-01-14 12:28:18',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('f6b435aff1154f3dbae7503b5f856ee2','13544448248','13544448248','13544448248','BFD8385FC4FF5F3FFFE661365B89013F5923FC6B59B82373D89E038817264DB6','xxx','xxx','xxx',0,'2025-01-14 11:56:55',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('f83c48afee1d44b594c80e3b9efe94dc','12345678903','12345678903','12345678903','AC68269908A4F0FDBD5CC04DAAF32A95F986893D745270053319AF4A1AF89905','xxx','xxx','xxx',0,'2024-11-25 16:24:11',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('f8b57fb9036e4301a508bad3e089132b','18998471032','18998471032','18998471032','98137B4D85A8F463B2C300F53C20D04AC88E969228AB711DFE4AAECC4AE2576E','xxx','xxx','xxx',0,'2025-01-14 12:01:08',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('fd894d31aa9f4e78ae2e7e6c0048b4bd','18665581638','18665581638','18665581638','B505BA95503B31AFC69D30D9E1627E27381F85949324AD6D22701081175BDE21','xxx','xxx','xxx',0,'2025-01-14 11:56:25',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('fe3305a4c85341e098a7daf087a99f68','13926127468','13926127468','13926127468','FC972BDAE2DB1192BA4A799CABDC2B42312440CDFE06050D64E65D052B16763C','xxx','xxx','xxx',0,'2025-01-14 12:01:29',NULL,'UD000001',1);
INSERT INTO sec_user_data VALUES ('SU000001','User000001','13900000001','1000001@qq.com','24327F1C00D22210298A18D0DB9AA6C4C22DEAC4BEAE7C02E616442CA7764246','weixin_openid_000001','weixin_appid_000001','jwt_token_000001',9292993,'2019-09-09 09:09:09','2019-09-09 09:09:09','UD000001',1);
/*!40000 ALTER TABLE sec_user_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS section_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE section_data (
  id varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID',
  title varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标题',
  brief varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '短暂的',
  icon varchar(512) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL COMMENT '图标',
  display_order int DEFAULT NULL COMMENT '顺序',
  view_group varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '视图组',
  link_to_url varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '链接网址',
  `page` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '页面',
  version int DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (id),
  UNIQUE KEY idx4id_ver_of_section (id,version),
  KEY idx4display_order_of_section (display_order),
  KEY idx4version_of_section (version),
  KEY fk4page_of_section_data (`page`),
  CONSTRAINT fk4page_of_section_data FOREIGN KEY (`page`) REFERENCES page_data (id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='板块';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES section_data WRITE;
/*!40000 ALTER TABLE section_data DISABLE KEYS */;
INSERT INTO section_data VALUES ('S000001','文章','Article','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0001/400/200/grey/',1,'icon_edit','wxappService/section/article/0001','P000001',1);
INSERT INTO section_data VALUES ('S000002','作品','Artwork','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0002/400/200/grey/',2,'icon_share','wxappService/section/article/0002','P000001',1);
INSERT INTO section_data VALUES ('S000003','文章','Article','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0003/400/200/grey/',3,'icon_eye','wxappService/section/article/0003','P000002',1);
INSERT INTO section_data VALUES ('S000004','作品','Artwork','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0004/400/200/grey/',1,'icon_more','wxappService/section/article/0004','P000002',1);
INSERT INTO section_data VALUES ('S000005','文章','Article','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0005/400/200/grey/',2,'icon_edit','wxappService/section/article/0005','P000003',1);
INSERT INTO section_data VALUES ('S000006','作品','Artwork','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0006/400/200/grey/',3,'icon_share','wxappService/section/article/0006','P000003',1);
INSERT INTO section_data VALUES ('S000007','文章','Article','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0007/400/200/grey/',1,'icon_eye','wxappService/section/article/0007','P000004',1);
INSERT INTO section_data VALUES ('S000008','作品','Artwork','https://demo.doublechaintech.com/demodata/imageManager/genImage/icon0008/400/200/grey/',2,'icon_more','wxappService/section/article/0008','P000004',1);
/*!40000 ALTER TABLE section_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS service_configuration_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE service_configuration_data (
  id varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID',
  `name` varchar(28) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  service_host varchar(108) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '服务主机',
  merchant varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '工厂',
  platform varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '平台',
  version int DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (id),
  UNIQUE KEY idx4id_ver_of_service_configuration (id,version),
  KEY idx4version_of_service_configuration (version),
  KEY fk4platform_of_service_configuration_data (platform),
  KEY fk4merchant_of_service_configuration_data (merchant),
  CONSTRAINT fk4merchant_of_service_configuration_data FOREIGN KEY (merchant) REFERENCES merchant_data (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT fk4platform_of_service_configuration_data FOREIGN KEY (platform) REFERENCES platform_data (id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='服务配置';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES service_configuration_data WRITE;
/*!40000 ALTER TABLE service_configuration_data DISABLE KEYS */;
INSERT INTO service_configuration_data VALUES ('SC000013','VoE后台系统','http://127.0.0.1:9989',NULL,'P000001',11);
INSERT INTO service_configuration_data VALUES ('voe-service','VoE系统','http://127.0.0.1:9989',NULL,'P000001',5);
/*!40000 ALTER TABLE service_configuration_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS service_mapping_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE service_mapping_data (
  id varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID',
  bean_name varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Bean的名字',
  service_configuration varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '服务配置',
  merchant varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '工厂',
  version int DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (id),
  UNIQUE KEY idx4id_ver_of_service_mapping (id,version),
  KEY idx4version_of_service_mapping (version),
  KEY fk4service_configuration_of_service_mapping_data (service_configuration),
  KEY fk4merchant_of_service_mapping_data (merchant),
  CONSTRAINT fk4merchant_of_service_mapping_data FOREIGN KEY (merchant) REFERENCES merchant_data (id) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT fk4service_configuration_of_service_mapping_data FOREIGN KEY (service_configuration) REFERENCES service_configuration_data (id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='服务的映射';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES service_mapping_data WRITE;
/*!40000 ALTER TABLE service_mapping_data DISABLE KEYS */;
INSERT INTO service_mapping_data VALUES ('SM000016','captcha','SC000013',NULL,2);
INSERT INTO service_mapping_data VALUES ('SM000017','vcode','SC000013',NULL,1);
INSERT INTO service_mapping_data VALUES ('SM000018','feedback','voe-service',NULL,1);
INSERT INTO service_mapping_data VALUES ('SM000019','feedbackprocess','voe-service',NULL,2);
INSERT INTO service_mapping_data VALUES ('SM000020','file-service','voe-service',NULL,1);
INSERT INTO service_mapping_data VALUES ('voeServiceBaseService','voeServiceBaseService','voe-service',NULL,1);
/*!40000 ALTER TABLE service_mapping_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS slide_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE slide_data (
  id varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID',
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  display_order int DEFAULT NULL COMMENT '顺序',
  image_url varchar(512) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL COMMENT '图片链接',
  video_url varchar(512) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL COMMENT '视频网址',
  link_to_url varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '链接网址',
  `page` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '页面',
  version int DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (id),
  UNIQUE KEY idx4id_ver_of_slide (id,version),
  KEY idx4display_order_of_slide (display_order),
  KEY idx4version_of_slide (version),
  KEY fk4page_of_slide_data (`page`),
  CONSTRAINT fk4page_of_slide_data FOREIGN KEY (`page`) REFERENCES page_data (id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='轮播内容';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES slide_data WRITE;
/*!40000 ALTER TABLE slide_data DISABLE KEYS */;
INSERT INTO slide_data VALUES ('S000001','首页Focus的内容0001',1,'https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','','P000001',1);
INSERT INTO slide_data VALUES ('S000002','首页Focus的内容0002',2,'https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','/section/article/','P000001',1);
INSERT INTO slide_data VALUES ('S000003','首页Focus的内容0003',3,'https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','','P000002',1);
INSERT INTO slide_data VALUES ('S000004','首页Focus的内容0004',1,'https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','/section/article/','P000002',1);
INSERT INTO slide_data VALUES ('S000005','首页Focus的内容0005',2,'https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','','P000003',1);
INSERT INTO slide_data VALUES ('S000006','首页Focus的内容0006',3,'https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','/section/article/','P000003',1);
INSERT INTO slide_data VALUES ('S000007','首页Focus的内容0007',1,'https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','','P000004',1);
INSERT INTO slide_data VALUES ('S000008','首页Focus的内容0008',2,'https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','/section/article/','P000004',1);
/*!40000 ALTER TABLE slide_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS tree_node_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE tree_node_data (
  id varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID',
  node_id varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '节点Id',
  node_type varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '节点类型',
  left_value int DEFAULT NULL COMMENT '左值',
  right_value int DEFAULT NULL COMMENT '正确的价值',
  version int DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (id),
  UNIQUE KEY idx4id_ver_of_tree_node (id,version),
  KEY idx4node_id_of_tree_node (node_id),
  KEY idx4left_value_of_tree_node (left_value),
  KEY idx4right_value_of_tree_node (right_value),
  KEY idx4version_of_tree_node (version)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='节点';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES tree_node_data WRITE;
/*!40000 ALTER TABLE tree_node_data DISABLE KEYS */;
INSERT INTO tree_node_data VALUES ('TN000001','node0000010001','nodetype0001',1,10,1);
/*!40000 ALTER TABLE tree_node_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS ui_action_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE ui_action_data (
  id varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID',
  `code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '编码',
  icon varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图标',
  title varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标题',
  display_order int DEFAULT NULL COMMENT '顺序',
  brief varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '短暂的',
  image_url varchar(512) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL COMMENT '图片链接',
  link_to_url varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '链接网址',
  extra_data longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '额外的数据',
  `page` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '页面',
  version int DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (id),
  UNIQUE KEY idx4id_ver_of_ui_action (id,version),
  KEY idx4display_order_of_ui_action (display_order),
  KEY idx4version_of_ui_action (version),
  KEY fk4page_of_ui_action_data (`page`),
  CONSTRAINT fk4page_of_ui_action_data FOREIGN KEY (`page`) REFERENCES page_data (id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户界面操作';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES ui_action_data WRITE;
/*!40000 ALTER TABLE ui_action_data DISABLE KEYS */;
INSERT INTO ui_action_data VALUES ('UA000001','submit','icon_edit','提交',1,'Submit','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','wxappService/section/article/0001','长文本例子\n','P000001',1);
INSERT INTO ui_action_data VALUES ('UA000002','share','icon_share','分享',2,'Share','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','wxappService/section/article/0002','长文本例子\n','P000001',1);
INSERT INTO ui_action_data VALUES ('UA000003','view','icon_eye','查看',3,'View','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','wxappService/section/article/0003','长文本例子\n','P000002',1);
INSERT INTO ui_action_data VALUES ('UA000004','more','icon_more','更多',1,'View More','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','wxappService/section/article/0004','长文本例子\n','P000002',1);
INSERT INTO ui_action_data VALUES ('UA000005','submit','icon_edit','提交',2,'Submit','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','wxappService/section/article/0005','长文本例子\n','P000003',1);
INSERT INTO ui_action_data VALUES ('UA000006','share','icon_share','分享',3,'Share','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_3.jpg','wxappService/section/article/0006','长文本例子\n','P000003',1);
INSERT INTO ui_action_data VALUES ('UA000007','view','icon_eye','查看',1,'View','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_1.jpg','wxappService/section/article/0007','长文本例子\n','P000004',1);
INSERT INTO ui_action_data VALUES ('UA000008','more','icon_more','更多',2,'View More','https://nice-router.oss-cn-chengdu.aliyuncs.com/slide_2.jpg','wxappService/section/article/0008','长文本例子\n','P000004',1);
/*!40000 ALTER TABLE ui_action_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS user_allow_list_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE user_allow_list_data (
  id varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID',
  user_identity varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户身份',
  user_special_functions varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户特殊功能',
  domain varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '域',
  version int DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (id),
  UNIQUE KEY idx4id_ver_of_user_allow_list (id,version),
  KEY idx4user_identity_of_user_allow_list (user_identity),
  KEY idx4version_of_user_allow_list (version),
  KEY fk4domain_of_user_allow_list_data (domain),
  CONSTRAINT fk4domain_of_user_allow_list_data FOREIGN KEY (domain) REFERENCES user_domain_data (id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户权限列表';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES user_allow_list_data WRITE;
/*!40000 ALTER TABLE user_allow_list_data DISABLE KEYS */;
/*!40000 ALTER TABLE user_allow_list_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS user_app_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE user_app_data (
  id varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID',
  title varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标题',
  sec_user varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '安全用户',
  app_icon varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '应用程序图标',
  full_access tinyint(1) DEFAULT NULL COMMENT '完全访问',
  permission varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '许可',
  app_type varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '应用程序类型',
  app_id varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '应用程序Id',
  ctx_type varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Ctx类型',
  ctx_id varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Ctx Id',
  location varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '位置',
  version int DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (id),
  UNIQUE KEY idx4id_ver_of_user_app (id,version),
  KEY idx4app_id_of_user_app (app_id),
  KEY idx4ctx_id_of_user_app (ctx_id),
  KEY idx4version_of_user_app (version),
  KEY fk4sec_user_of_user_app_data (sec_user),
  CONSTRAINT fk4sec_user_of_user_app_data FOREIGN KEY (sec_user) REFERENCES sec_user_data (id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='应用';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES user_app_data WRITE;
/*!40000 ALTER TABLE user_app_data DISABLE KEYS */;
INSERT INTO user_app_data VALUES ('UA000004','系统:系统管理员','b015fae1097d45c99bbdf5bcec9b4010','bar',1,'MXWR','Merchant','M000001','Employee','E000001','/link/to/app',1);
INSERT INTO user_app_data VALUES ('UA000005','系统','SU000001','bar',1,'MXWR','Merchant','M000001','Employee','E000001','/link/to/app',1);
INSERT INTO user_app_data VALUES ('UA000125','VoE测试系统','d27599b6c3ee4ebe8b90962605ca5a3e','bar',1,'MXWR','Merchant','M000011','Employee','E000117','/link/to/app',2);
INSERT INTO user_app_data VALUES ('UA000126','VoE测试系统','SU000001','bar',1,'MXWR','Merchant','M000011','Employee','E000117','/link/to/app',2);
INSERT INTO user_app_data VALUES ('UA000127','VoE测试系统','0786e2f4f4e24d56ad8c7e1e8d6e6845','bar',1,'MXWR','Merchant','M000011','Employee','E000118','/link/to/app',1);
INSERT INTO user_app_data VALUES ('UA000128','VoE测试系统','3175796b9d7643c093842d7cc0263028','bar',1,'MXWR','Merchant','M000011','Employee','E000119','/link/to/app',1);
INSERT INTO user_app_data VALUES ('UA000129','VoE测试系统','a3eecf90e27a4aa0a5c801bd6d1a06b7','bar',1,'MXWR','Merchant','M000011','Employee','E000120','/link/to/app',1);
INSERT INTO user_app_data VALUES ('UA000130','VoE测试系统','c00cda48510349adaf50faee27c26ca3','bar',1,'MXWR','Merchant','M000011','Employee','E000121','/link/to/app',1);
/*!40000 ALTER TABLE user_app_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS user_domain_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE user_domain_data (
  id varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID',
  `name` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  version int DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (id),
  UNIQUE KEY idx4id_ver_of_user_domain (id,version),
  KEY idx4version_of_user_domain (version)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户域';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES user_domain_data WRITE;
/*!40000 ALTER TABLE user_domain_data DISABLE KEYS */;
INSERT INTO user_domain_data VALUES ('UD000001','用户区域',1);
/*!40000 ALTER TABLE user_domain_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS user_status_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE user_status_data (
  id varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID',
  `name` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户状态',
  `code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '代码',
  create_time datetime DEFAULT NULL COMMENT '创建于',
  platform varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '平台',
  version int DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (id),
  UNIQUE KEY idx4id_ver_of_user_status (id,version),
  UNIQUE KEY idx4code_of_user_status (`code`),
  KEY idx4create_time_of_user_status (create_time),
  KEY idx4version_of_user_status (version),
  KEY fk4platform_of_user_status_data (platform),
  CONSTRAINT fk4platform_of_user_status_data FOREIGN KEY (platform) REFERENCES platform_data (id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户状态';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES user_status_data WRITE;
/*!40000 ALTER TABLE user_status_data DISABLE KEYS */;
INSERT INTO user_status_data VALUES ('ACTIVE','活跃','ACTIVE','2023-09-25 12:34:08','P000001',1);
INSERT INTO user_status_data VALUES ('DISABLED','未激活','DISABLED','2023-09-26 17:03:24','P000001',1);
/*!40000 ALTER TABLE user_status_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS user_token_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE user_token_data (
  id varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `value` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '值',
  start_time datetime DEFAULT NULL COMMENT '启动时间',
  end_time datetime DEFAULT NULL COMMENT '结束时间',
  create_time datetime DEFAULT NULL COMMENT '创建于',
  user_app varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户应用程序',
  version int DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (id),
  UNIQUE KEY idx4id_ver_of_user_token (id,version),
  KEY idx4start_time_of_user_token (start_time),
  KEY idx4end_time_of_user_token (end_time),
  KEY idx4create_time_of_user_token (create_time),
  KEY idx4version_of_user_token (version),
  KEY fk4user_app_of_user_token_data (user_app),
  CONSTRAINT fk4user_app_of_user_token_data FOREIGN KEY (user_app) REFERENCES user_app_data (id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='用户令牌';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES user_token_data WRITE;
/*!40000 ALTER TABLE user_token_data DISABLE KEYS */;
INSERT INTO user_token_data VALUES ('UT000001','feedback-proxy','NGqpg0j5g8eWlvC+',NULL,NULL,'2025-09-25 12:53:21','UA000127',1);
/*!40000 ALTER TABLE user_token_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS wechat_miniapp_identity_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE wechat_miniapp_identity_data (
  id varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID',
  open_id varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '开放Id',
  app_id varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '应用程序Id',
  union_id varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '联盟Id',
  sec_user varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '安全用户',
  create_time datetime DEFAULT NULL COMMENT '创建于',
  last_login_time datetime DEFAULT NULL COMMENT '最后登录时间',
  version int DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (id),
  UNIQUE KEY idx4id_ver_of_wechat_miniapp_identity (id,version),
  KEY idx4open_id_of_wechat_miniapp_identity (open_id),
  KEY idx4app_id_of_wechat_miniapp_identity (app_id),
  KEY idx4union_id_of_wechat_miniapp_identity (union_id),
  KEY idx4create_time_of_wechat_miniapp_identity (create_time),
  KEY idx4last_login_time_of_wechat_miniapp_identity (last_login_time),
  KEY idx4version_of_wechat_miniapp_identity (version),
  KEY fk4sec_user_of_wechat_miniapp_identity_data (sec_user),
  CONSTRAINT fk4sec_user_of_wechat_miniapp_identity_data FOREIGN KEY (sec_user) REFERENCES sec_user_data (id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='微信小程序认证';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES wechat_miniapp_identity_data WRITE;
/*!40000 ALTER TABLE wechat_miniapp_identity_data DISABLE KEYS */;
/*!40000 ALTER TABLE wechat_miniapp_identity_data ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS wechat_workapp_identity_data;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE wechat_workapp_identity_data (
  id varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID',
  corp_id varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '公司标识',
  user_id varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户Id',
  sec_user varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '安全用户',
  create_time datetime DEFAULT NULL COMMENT '创建于',
  last_login_time datetime DEFAULT NULL COMMENT '最后登录时间',
  version int DEFAULT NULL COMMENT '版本',
  PRIMARY KEY (id),
  UNIQUE KEY idx4id_ver_of_wechat_workapp_identity (id,version),
  KEY idx4corp_id_of_wechat_workapp_identity (corp_id),
  KEY idx4user_id_of_wechat_workapp_identity (user_id),
  KEY idx4create_time_of_wechat_workapp_identity (create_time),
  KEY idx4last_login_time_of_wechat_workapp_identity (last_login_time),
  KEY idx4version_of_wechat_workapp_identity (version),
  KEY fk4sec_user_of_wechat_workapp_identity_data (sec_user),
  CONSTRAINT fk4sec_user_of_wechat_workapp_identity_data FOREIGN KEY (sec_user) REFERENCES sec_user_data (id) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='企业微信认证';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES wechat_workapp_identity_data WRITE;
/*!40000 ALTER TABLE wechat_workapp_identity_data DISABLE KEYS */;
/*!40000 ALTER TABLE wechat_workapp_identity_data ENABLE KEYS */;
UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;