//
//  CSCUserService.h
//  Farmwork
//
//  Created by yinzhihao on 17/5/20.
//  Copyright © 2017年 Andy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CSCBaseService.h"

@interface CSCUserService : CSCBaseService

+ (instancetype)sharedInstance;

/**
 @brief 用户注册
 @param externalUserId  外部用户号
 @param phone           电话号
 @param appName         应用名称
 @param block           结果
 */
- (void)userRegister:(NSString *)externalUserId phone:(NSString *)phone appName:(NSString *)appName block:(void (^)(BOOL isSuccess, CSCError retCode, NSString* retInfo, NSDictionary* message))block;

/**
 @brief 用户初始化
 @param block   结果
 */
- (void)userInit:(void (^)(BOOL isSuccess, CSCError retCode, NSString* retInfo, NSDictionary* message))block;

/**
 @brief 用户新设备登录
 @param smsCode 短信验证码
 @param block   结果
 */
- (void)changeDevice:(NSString *)smsCode block:(void (^)(BOOL isSuccess, CSCError retCode, NSString* retInfo, NSDictionary* message))block;

/**
 @brief 用户信息更新
 @param appName 应用名称
 @param block   结果
 */
- (void)userInfoUpdate:(NSString *)appName block:(void (^)(BOOL isSuccess, CSCError retCode, NSString* retInfo, NSDictionary* message))block;


@end
