//
//  CSCCCKSControls.h
//  CSCVirtualCardSDK
//
//  Created by yinzhihao on 17/5/27.
//  Copyright © 2017年 Andy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CSCVirtualCardDefines.h"

/**
 @brief ios ckeys安全控件接口，待完成异常返回错误信息或其他方式返回错误信息NSError
 */
@interface CSCCCKSControls : NSObject

/**
 @brief 获取单例对象
 @return instancetype
 */
+ (instancetype)sharedInstance;

/**
 @brief 获取安全id
 @return id
 */
+ (NSData *)getSecurtiyId;

/**
 @brief 加密
 @param planStr 明文，必须UTF-8编码
 @return 密文
 */
+ (NSString *)EncryptData:(NSString *)planStr;

/**
 @brief 解密
 @param encryptStr  加密的数据
 @return 解密数据
 */
+ (NSString *)DeEncryptData:(NSString *)encryptStr;


/**
 @brief 给数据签名
 @param planStr 待签名数据
 @return 返回签名后的数据，nil表示签名失败
 */
+ (NSString *)SignData:(NSString *)planStr;


/**
 @brief 验证签名
 @param planStr 明文
 @param signStr 签名数据
 @return 状态，非0表示失败
 */
+ (Boolean)validData:(NSString *)planStr signStr:(NSString *)signStr;



@end
