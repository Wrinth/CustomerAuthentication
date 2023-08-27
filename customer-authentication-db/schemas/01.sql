/* 创建数据库 */
CREATE DATABASE customer_verification;

/* 使用数据库 */
USE customer_verification;

/* 创建customers表 */
CREATE TABLE customers (
    customer_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    id_number VARCHAR(18) NOT NULL,
    phone_number VARCHAR(11) NOT NULL,
    verification_status ENUM('pending', 'passe', 'failed') NOT NULL DEFAULT 'pending',
    PRIMARY KEY (customer_id)
);

/* 创建data_sources表 */
CREATE TABLE data_sources (
    source_id INT NOT NULL AUTO_INCREMENT, /* 数据源ID */
    source_name VARCHAR(50) NOT NULL, /* 数据源名称 */
    source_type ENUM('identity', 'sanction') NOT NULL, /* 数据源类型 */
    source_url VARCHAR(255) NOT NULL, /* 数据源URL */
    PRIMARY KEY (source_id) /* 主键约束 */
);

/* 创建verifications表 */
CREATE TABLE verifications (
    verification_id INT NOT NULL AUTO_INCREMENT, /* 验证记录ID */
    customer_id INT NOT NULL, /* 客户ID */
    source_id INT NOT NULL, /* 数据源ID */
    verification_time DATETIME NOT NULL, /* 验证时间 */
    verification_result ENUM('passed', 'failed') NOT NULL, /* 验证结果 */
    verification_reason VARCHAR(255), /* 验证原因 */
    PRIMARY KEY (verification_id), /* 主键约束 */
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON UPDATE CASCADE ON DELETE RESTRICT, /* 外键约束（引用customers表） */
    FOREIGN KEY (source_id) REFERENCES data_sources(source_id) ON UPDATE CASCADE ON DELETE RESTRICT /* 外键约束（引用data_sources表） */
);

/* 创建results表 */
CREATE TABLE results (
    verification_id INT NOT NULL, /* 验证记录ID */
    result_id INT NOT NULL AUTO_INCREMENT, /* 比对项序号 */
    comparison_item VARCHAR(50) NOT NULL, /* 比对项名称 */
    comparison_value VARCHAR(50) NOT NULL, /* 比对项值 */
    comparison_result ENUM('matched', 'unmatched') NOT NULL, /* 比对结果 */
    PRIMARY KEY (verification_id, result_id), /* 复合主键约束 */
    FOREIGN KEY (verification_id) REFERENCES verifications(verification_id) ON UPDATE CASCADE ON DELETE CASCADE /* 外键约束（引用verifications表） */
);

/* 插入customers表的示例数据 */
INSERT INTO customers (name, id_number, phone_number)
VALUES ('张三', '110101199001011234', '13800000001'), ('李四', '120102199002022345', '13900000002'),
('王五', '130103199003033456', '15800000003'), ('赵六', '140104199004044567', '15900000004'),
('孙七', '150105199005055678', '18800000005');

/* 插入data_sources表的示例数据 */
INSERT INTO data_sources (source_name, source_type, source_url)
VALUES ('公安部身份信息核验平台', 'identity', '1'), ('中国人民银行制裁名单查询系统', 'sanction', '2'),
('联合国安理会制裁名单查询系统', 'sanction', '3');

/* 插入verifications表的示例数据 */
INSERT INTO verifications (customer_id, source_id, verification_time, verification_result, verification_reason)
VALUES (1, 1, '2023-04-06 12:00:00', 'passed', NULL), (1, 2, '2023-04-06 12:01:00', 'passed', NULL),
(1, 3, '2023-04-06 12:02:00', 'passed', NULL), (2, 1, '2023-04-06 12:03:00', 'failed', '身份证号与姓名不匹配'),
(2, 2, '2023-04-06 12:04:00', 'failed', '客户在制裁名单中'), (2, 3, '2023-04-06 12:05:00', 'passed', NULL),
(3, 1, '2023-04-06 12:06:00', 'passed', NULL), (3, 2, '2023-04-06 12:07:00', 'passed', NULL),
(3, 3, '2023-04-06 12:08:00', 'failed', '客户在制裁名单中'), (4, 1, '2023-04-06 12:09:00', 'failed', '身份证号不存在'),
(4, 2, '2023-04-06 12:10:00', 'passed', NULL), (4, 3, '2023-04-06 12:11:00', 'passed', NULL),
(5, 1, '2023-04-06 12:12:00', 'passed', NULL), (5, 2, '2023-04-06 12:13:00', 'passed', NULL),
(5, 3, '2023-04-06 12:14:00', 'passed', NULL);

/* 插入results表的示例数据 */
INSERT INTO results (verification_id, comparison_item, comparison_value, comparison_result)
VALUES (1, '姓名', '张三', 'matched'), (1, '身份证号码','110101199001011234','matched'),
(2,'姓名','张三','matched'), (2,'身份证号码','110101199001011234','matched'), (2,'制裁类型','无','matched'),
(3,'姓名','张三','matched'), (3,'身份证号码','110101199001011234','matched'), (3,'制裁类型','无','matched'),
(4,'姓名','李四','unmatched'), (4,'身份证号码','120102199002022345','unmatched'), (5,'姓名','李四','matched'),
(5,'身份证号码','120102199002022345','matched'), (5,'制裁类型','金融制裁','unmatched'), (6,'姓名','李四','matched'),
(6,'身份证号码','120102199002022345','matched'), (6,'制裁类型','无','matched'), (7,'姓名','王五','matched'),
(7,'身份证号码','130103199003033456','matched'), (8,'姓名','王五','matched'), (8,'身份证号码','130103199003033456','matched'),
(8,'制裁类型','无','matched'), (9,'姓名','王五','matched'), (9,'身份证号码','130103199003033456','matched'),
(9,'制裁类型','无','matched');