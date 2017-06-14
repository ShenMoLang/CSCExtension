//
//  CSCUserService.m
//  Farmwork
//
//  Created by yinzhihao on 17/5/20.
//  Copyright © 2017年 Andy. All rights reserved.
//

#import "CSCUserService.h"
#import "CSCUserInfo.h"

@implementation CSCUserService

+ (instancetype)sharedInstance
{
    static CSCUserService * _sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [CSCUserService new];
        // do some things
        
    });
    
    return _sharedInstance;
}

/**
 @brief 用户注册
 @param externalUserId  外部用户号
 @param phone           电话号
 @param appName         应用名称
 @param block           结果
 */
- (void)userRegister:(NSString *)externalUserId phone:(NSString *)phone appName:(NSString *)appName block:(void (^)(BOOL isSuccess, CSCError retCode, NSString* retInfo, NSDictionary* message))block
{
    CSCUserInfo.sharedInstance.externalUserId = externalUserId;
    
    NSDictionary *message = @{@"first": @"test1",
                              @"second": @2,
                              @"third": @[@"3",@"4"]};
    if (block) {
        block(YES, E001, @"接口调用成功", message);
    }
}

/**
 @brief 用户初始化
 @param block   结果
 */
- (void)userInit:(void (^)(BOOL isSuccess, CSCError retCode, NSString* retInfo, NSDictionary* message))block
{
    NSDictionary *message = @{@"first": @"1",
                              @"second": @2,
                              @"third": @[@"3",@"4"]};
    if (block) {
        block(YES, E000, @"接口调用成功", message);
    }
}

/**
 @brief 用户新设备登录
 @param smsCode 短信验证码
 @param block   结果
 */
- (void)changeDevice:(NSString *)smsCode block:(void (^)(BOOL isSuccess, CSCError retCode, NSString* retInfo, NSDictionary* message))block
{
    NSDictionary *message = @{@"first": @"1",
                              @"second": @2,
                              @"third": @[@"3",@"4"]};
    if (block) {
        block(YES, E000, @"接口调用成功", message);
    }
}

/**
 @brief 用户信息更新
 @param userInfo    用户信息
 @param block       结果
 */
- (void)userInfoUpdate:(NSDictionary *)userInfo block:(void (^)(BOOL isSuccess, CSCError retCode, NSString* retInfo, NSDictionary* message))block
{
    NSDictionary *message = @{@"first": @"1",
                              @"second": @2,
                              @"third": @[@"3",@"4"]};
    if (block) {
        block(YES, E000, @"接口调用成功", message);
    }
}


/*
- (void)test
{
    CSCUserService *service = [CSCUserService sharedInstance];
    
    [[CSCSDKFactory sharedInstance] init:@"" version:@"" block:^(BOOL isSuccess, CSCError retCode, NSString *retInfo, NSDictionary *message) {
        
        if (isSuccess) {
            // 进行用户注册
            [service userRegister:@"" phone:@"" appName:@"" block:^(BOOL isSuccess, CSCError retCode, NSString *retInfo, NSDictionary *message) {
               
                if (isSuccess) {
                    
                    //用户初始化
                    [service userInit:^(BOOL isSuccess, CSCError retCode, NSString *retInfo, NSDictionary *message) {
                        
                        //do some things
                        
                    }];
                    
                }
                
            }];
        }
        else {
            //更换新设备
            [service changeDevice:@"" block:^(BOOL isSuccess, CSCError retCode, NSString *retInfo, NSDictionary *message) {
                
            }];
        }
        
        
    }];
}
*/



@end
