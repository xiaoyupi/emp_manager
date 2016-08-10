/*CREATE_DB.sql*/
DROP DATABASE IF EXISTS EMP_MANAGER;
CREATE DATABASE EMP_MANAGER;
USE EMP_MANAGER;

/*emp_base_info.sql*/
CREATE TABLE emp_base_info(
	emp_id BIGINT AUTO_INCREMENT PRIMARY KEY COMMENT '员工id',
	emp_name VARCHAR(20) COMMENT '员工姓名',
	card_num VARCHAR(20) COMMENT '身份证号',
	birthday DATE COMMENT '出生日期',
  gender INT COMMENT '性别',
	address VARCHAR(100) COMMENT '地址',
	hire_status INT DEFAULT 1 COMMENT '有效状态,1:有效,0:无效',
	phone VARCHAR(20) COMMENT '手机号码',
	email VARCHAR(20) COMMENT '邮箱',
	marriage_status INT COMMENT '婚姻状态,1:已婚,0:未婚',
	create_dt DATETIME COMMENT '创建时间',
	is_deleted INT DEFAULT 0 COMMENT '是否删除 1:是 0:否'
)ENGINE=INNODB COMMENT '员工基本信息表';


/*login_user_info.sql*/
CREATE TABLE login_user_info(
	login_id BIGINT PRIMARY KEY AUTO_INCREMENT COMMENT 'ID',
	login_num VARCHAR(20) COMMENT '登录用户名:采用手机号',
	login_pwd VARCHAR(20) COMMENT '登录密码',
	emp_id BIGINT COMMENT '所属员工ID',
	create_dt DATETIME COMMENT '创建时间',
	is_deleted INT DEFAULT 0 COMMENT '是否删除 1:是 0:否'
)ENGINE=INNODB COMMENT '登录信息表';
