//
//  CSCIdInfo.m
//  CSCVirtualCardSDK
//
//  Created by yinzhihao on 17/5/25.
//  Copyright © 2017年 Andy. All rights reserved.
//

#import "CSCIdInfo.h"

@implementation CSCIdInfo


+ (instancetype)sharedInstance
{
    static CSCIdInfo * _sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [CSCIdInfo new];
        // do some things
        
    });
    
    return _sharedInstance;
}

@end
