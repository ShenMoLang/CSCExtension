//
//  CSCCerService.m
//  CSCVirtualCardSDK
//
//  Created by yinzhihao on 17/5/25.
//  Copyright © 2017年 Andy. All rights reserved.
//

#import "CSCCerService.h"

@implementation CSCCerService

+ (instancetype)sharedInstance
{
    static CSCCerService * _sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [CSCCerService new];
        // do some things
        
    });
    
    return _sharedInstance;
}

#pragma mark - CER
/**
 @brief CER-01 申请电子证件虚拟卡
 @param certId  证件编号
 @param block   结果
 */
- (void)applyElectronicId:(NSString *)certId block:(void (^)(BOOL isSuccess, CSCError retCode, NSString* retInfo, NSDictionary* message))block
{
    NSDictionary *message = @{@"first": @"1",
                              @"second": @2,
                              @"third": @[@"3",@"4"]};
    if (block) {
        block(YES, E000, @"接口调用成功", message);
    }
}

/**
 @brief CER-02 找回电子证件虚拟卡
 @param certId  证件编号
 @param block   结果
 */
- (void)getBackElectronicId:(NSString *)certId block:(void (^)(BOOL isSuccess, CSCError retCode, NSString* retInfo, NSDictionary* message))block
{
    NSDictionary *message = @{@"first": @"1",
                              @"second": @2,
                              @"third": @[@"3",@"4"]};
    if (block) {
        block(YES, E000, @"接口调用成功", message);
    }
}

/**
 @brief CER-03 电子证件虚拟卡验证-近场验证
 @param block   结果
 */
- (void)touchVertify:(void (^)(BOOL isSuccess, CSCError retCode, NSString* retInfo, NSDictionary* message))block
{
    NSDictionary *message = @{@"first": @"1",
                              @"second": @2,
                              @"third": @[@"3",@"4"]};
    if (block) {
        block(YES, E000, @"接口调用成功", message);
    }
}

/**
 @brief CER-03 电子证件虚拟卡验证-扫码验证
 @param block   结果
 */
- (void)qrcodeVertify:(void (^)(BOOL isSuccess, CSCError retCode, NSString* retInfo, NSDictionary* message))block
{
    NSDictionary *message = @{@"first": @"1",
                              @"second": @2,
                              @"third": @[@"3",@"4"]};
    if (block) {
        block(YES, E000, @"接口调用成功", message);
    }
}



@end
