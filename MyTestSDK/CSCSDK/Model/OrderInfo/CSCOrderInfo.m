//
//  CSCOrderInfo.m
//  CSCVirtualCardSDK
//
//  Created by yinzhihao on 17/5/25.
//  Copyright © 2017年 Andy. All rights reserved.
//

#import "CSCOrderInfo.h"

@implementation CSCOrderInfo

+ (instancetype)sharedInstance
{
    static CSCOrderInfo * _sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [CSCOrderInfo new];
        // do some things
        
    });
    
    return _sharedInstance;
}

@end
