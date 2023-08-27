# customer_authentication数据库Description

## customers表
用于存储客户的基本信息，如姓名、身份证号、联系方式等。该表的主键是customer_id，用于唯一标识每个客户。
该表还包含了一个verification_status字段，用于记录客户的验证状态，有三种可能的值：pending（待验证）、passed（验证通过）或failed（验证失败）。

## data_sources表
用于存储权威数据源的信息，如名称、类型、URL等。该表的主键是source_id，用于唯一标识每个数据源。该表还包含了一个source_type字段，用于区分数据源的类型，有两种可能的值：identity（身份信息）或sanction（制裁名单）。

## verifications表
用于存储客户与数据源之间的验证记录，如验证时间、结果、原因等。该表的主键是verification_id，用于唯一标识每条验证记录。该表还包含了两个外键：customer_id和source_id，分别引用customers表和data_sources表的主键，用于表示验证的客户和数据源。

## results表
用于存储客户与数据源之间的验证结果的详细信息，如比对项、比对值、比对结果等。该表没有主键，而是由两个外键组成复合键：verification_id和result_id，分别引用verifications表的主键和自增长的序号，用于表示每条验证记录下的每个比对项。