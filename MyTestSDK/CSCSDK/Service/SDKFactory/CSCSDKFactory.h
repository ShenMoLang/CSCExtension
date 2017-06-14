//
//  CSCSDKFactory.h
//  CSCVirtualCardSDK
//
//  Created by yinzhihao on 17/5/26.
//  Copyright © 2017年 Andy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CSCBaseService.h"

@interface CSCSDKFactory : CSCBaseService

+ (instancetype)sharedInstance;

/**
 @brief SDK注册
 @param appName 应用名称
 @param version 版本号
 @param block   结果(isSuccess=接口调用结果，retCode=返回码，retInfo=返回信息，message=信息)
 */
- (void)init:(NSString *)appName version:(NSString *)version block:(void (^)(BOOL isSuccess, CSCError retCode, NSString* retInfo, NSDictionary* message))block;

@end
