//
//  CSCCerService.h
//  CSCVirtualCardSDK
//
//  Created by yinzhihao on 17/5/25.
//  Copyright © 2017年 Andy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CSCBaseService.h"

@interface CSCCerService : CSCBaseService

+ (instancetype)sharedInstance;

#pragma mark - CER
/**
 @brief CER-01 申请电子证件虚拟卡
 @param certId  证件编号
 @param block   结果
 */
- (void)applyElectronicId:(NSString *)certId block:(void (^)(BOOL isSuccess, CSCError retCode, NSString* retInfo, NSDictionary* message))block;

/**
 @brief CER-02 找回电子证件虚拟卡
 @param certId  证件编号
 @param block   结果
 */
- (void)getBackElectronicId:(NSString *)certId block:(void (^)(BOOL isSuccess, CSCError retCode, NSString* retInfo, NSDictionary* message))block;

/**
 @brief CER-03 电子证件虚拟卡验证-近场验证
 @param block   结果
 */
- (void)touchVertify:(void (^)(BOOL isSuccess, CSCError retCode, NSString* retInfo, NSDictionary* message))block;

/**
 @brief CER-03 电子证件虚拟卡验证-扫码验证
 @param block   结果
 */
- (void)qrcodeVertify:(void (^)(BOOL isSuccess, CSCError retCode, NSString* retInfo, NSDictionary* message))block;




@end
