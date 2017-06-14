//
//  CSCCCKSControls.m
//  CSCVirtualCardSDK
//
//  Created by yinzhihao on 17/5/27.
//  Copyright © 2017年 Andy. All rights reserved.
//

#import "CSCCCKSControls.h"

@implementation CSCCCKSControls

/**
 @brief 获取单例对象
 @return instancetype
 */
+ (instancetype)sharedInstance
{
    static CSCCCKSControls * _sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [CSCCCKSControls new];
        // do some things
        
    });
    
    return _sharedInstance;
}


/**
 @brief 获取安全id
 @return id
 */
+ (NSData *)getSecurtiyId
{
    NSString *securtiyId = @"123456";
    return [securtiyId dataUsingEncoding:NSUTF8StringEncoding];
}

/**
 @brief 加密
 @param planStr 明文，必须UTF-8编码
 @return 密文
 */
+ (NSString *)EncryptData:(NSString *)planStr
{
    return [NSString stringWithFormat:@"CSCEncryptData%@", planStr];
}

/**
 @brief 解密
 @param encryptStr  加密的数据
 @return 解密数据
 */
+ (NSString *)DeEncryptData:(NSString *)encryptStr
{
    return [NSString stringWithFormat:@"CSCDeEncryptData%@", encryptStr];
}


/**
 @brief 给数据签名
 @param planStr 待签名数据
 @return 返回签名后的数据，nil表示签名失败
 */
+ (NSString *)SignData:(NSString *)planStr
{
    return [NSString stringWithFormat:@"CSCSignData%@", planStr];
}



/**
 @brief 验证签名
 @param planStr 明文
 @param signStr 签名数据
 @return 状态，非0表示失败
 */
+ (Boolean)validData:(NSString *)planStr signStr:(NSString *)signStr
{
    return true;
}



@end
