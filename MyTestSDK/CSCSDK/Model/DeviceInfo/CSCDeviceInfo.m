//
//  CSCDeviceInfo.m
//  Farmwork
//
//  Created by yinzhihao on 17/5/20.
//  Copyright © 2017年 Andy. All rights reserved.
//

#import "CSCDeviceInfo.h"

@implementation CSCDeviceInfo


+ (instancetype)sharedInstance
{
    static CSCDeviceInfo * _sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [CSCDeviceInfo new];
        // do some things
        
    });
    
    return _sharedInstance;
}

@end
