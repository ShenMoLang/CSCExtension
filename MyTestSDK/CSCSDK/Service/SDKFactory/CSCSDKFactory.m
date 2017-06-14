//
//  CSCSDKFactory.m
//  CSCVirtualCardSDK
//
//  Created by yinzhihao on 17/5/26.
//  Copyright © 2017年 Andy. All rights reserved.
//

#import "CSCSDKFactory.h"

@implementation CSCSDKFactory
+ (instancetype)sharedInstance
{
    static CSCSDKFactory * _sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [CSCSDKFactory new];
        // do some things
        
    });
    
    return _sharedInstance;
}

/**
 @brief SDK注册
 @param appName 应用名称
 @param version 版本号
 @param block   结果(isSuccess=接口调用结果，retCode=返回码，retInfo=返回信息，message=信息)
 */
- (void)init:(NSString *)appName version:(NSString *)version block:(void (^)(BOOL isSuccess, CSCError retCode, NSString* retInfo, NSDictionary* message))block
{
    /*
     //SDK注册和用户注册都在应用入口处进行，先进行SDK初始化，初始化完成在进行用户注册，注册完成调用用户初始化
     //第一步、SDK注册
     //需要提供应用信息、版本号
     CSCCardService *service = [CSCCardService sharedInstance];
     
     
     //第二步、用户注册
     //需要提供外部用户号、电话号码、用户信息，将返回值作为return对象
     [service userRegister:@"" phone:@"" userInfo:@{} block:^(BOOL isSuccess, NSString *retCode, NSString *retInfo, NSDictionary *message) {
     
     if (isSuccess) {
     
     //第三步、用户初始化，将返回值作为return对象
     [service userInit:@"" block:^(BOOL isSuccess, NSString *retCode, NSString *retInfo, NSDictionary *message) {
     
     //若错误信息为CSCError.SIGN_NOT_MATCH，说明初始化填写的应用信息不正确，若错误信息为CSCError.USER_CHANGE_DEVICE，说明用户是新设备登录，需要调用ChangeDevice接口。
     if (block) {
     block(isSuccess, retCode, retInfo, message);
     }
     }];
     }
     }];
     */
    
    NSDictionary *message = @{@"first": @"test1",
                              @"second": @2,
                              @"third": @[@"3",@"4"]};
    if (block) {
        block(YES, SIGN_NOT_MATCH, @"接口调用成功", message);
    }
    /*
     else {
     if (block) {
     block(NO, @"E001", @"接口调用失败", nil);
     }
     }*/
}


@end
