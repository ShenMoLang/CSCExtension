//
//  CSCUserInfo.h
//  Farmwork
//
//  Created by yinzhihao on 17/5/20.
//  Copyright © 2017年 Andy. All rights reserved.
//

#import <Foundation/Foundation.h>

//认证方式（0 未认证、1 公安、2 银行、3 电信运营商）
typedef NS_ENUM(NSInteger, AuthenticationType)
{
    AuthenticationTypeNone = 0,
    AuthenticationTypePublic = 1,
    AuthenticationTypeBank = 2,
    AuthenticationTypeTelecom = 3
};

//认证结果（0 无、1 通过、2 不通过）
typedef NS_ENUM(NSUInteger, AuthenticationResult) {
    AuthenticationResultNone = 0,
    AuthenticationResultPass = 1,
    AuthenticationResultNotPass = 2
};
@interface CSCUserInfo : NSObject

@property (nonatomic, strong) NSString *externalUserId; //外部用户号

@property (nonatomic, strong) NSString *name; //姓名
@property (nonatomic, strong) NSString *certificateType; //证件类型：1- 身份证，2-户口本，3-护照，4-军人证，5-回乡证，6-居住证，7-驾照，8-企业代码证，9-经营许可证，A-事业执照，B-事业法人证 ... X-其他，Y-电子邮件，Z-手机号码
@property (nonatomic, strong) NSString *documentNumber; //证件号码
@property (nonatomic, strong) NSString *province; //省份
@property (nonatomic, strong) NSString *city; //城市
@property (nonatomic, strong) NSString *address; //地址
@property (nonatomic, strong) NSString *zipCode; //邮编
@property (nonatomic, strong) NSString *fixedTelephone; //固定电话
@property (nonatomic, strong) NSString *sex; //性别
@property (nonatomic, strong) NSString *birthday; //生日
@property (nonatomic, strong) NSString *maritalStatus; //婚姻状况
@property (nonatomic, strong) NSString *whetherChildren; //有无子女
@property (nonatomic, strong) NSString *occupationType; //职业类型
@property (nonatomic, strong) NSString *individualAnnualIncome; //个人年收入
@property (nonatomic, strong) NSString *familyAnnuakIncome; //家庭年收入

@property (nonatomic, assign) AuthenticationType authenType; //认证方式
@property (nonatomic, assign) AuthenticationResult authenResult; //认证结果
@property (nonatomic, strong) NSString *certificateName; //证件名称
@property (nonatomic, strong) NSString *certificateDescription; //证照描述
@property (nonatomic, strong) NSString *templateNumber; //模板编号
@property (nonatomic, strong) NSString *templateInfo; //模板信息


+ (instancetype)sharedInstance;

@end
