# CustomerAuthentication
确认金融客户的真实性、合法性和可靠性

## 功能描述
确认客户的真实性、合法性和可靠性:
- 通过客户的基本信息（如姓名、身份证号、联系方式等），自动向权威数据源进行比对。
- 检查客户是否为高风险人员（如政治敏感人物、涉嫌犯罪人员等）
- 检查客户是否为制裁对象，会在相关名单库（如联合国安理会制裁名单、中国人民银行制裁名单等）进行比对。
最终把结果验证结果进行存储和展示。 

##验证方法
### 基本信息
- [香港身份证验证](https://stripe.com/zh-cn-hk/identity)：提供香港身份证号码验证的网站，可以检查身份证号码的格式、校验码、出生日期等是否合法。
- [香港公司注册处](https://www.zhihu.com/question/30768186)：提供香港公司注册信息查询的网站，可以查询公司的名称、注册号码、注册日期、地址等是否一致。

### 高风险人员

### 制裁对象
- [联合国安理会制裁名单](https://www.cedb.gov.hk/tc/policies/united-nations-security-council-sanctions.html)：访问商务及经济发展局网站，查看《联合国制裁条例》下的指定个人和实体的制裁名单。
- [中国人民银行制裁名单]()：访问中国人民银行网站，查看《金融机构反洗钱和反恐怖融资管理办法》下的指定个人和实体的制裁名单。