//
//  CSCIdInfo.h
//  CSCVirtualCardSDK
//
//  Created by yinzhihao on 17/5/25.
//  Copyright © 2017年 Andy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CSCIdInfo : NSObject

@property (nonatomic, strong) NSString *validityPeriod; //证件有效期
@property (nonatomic, strong) NSString *photo; //证件照片

+ (instancetype)sharedInstance;

@end
