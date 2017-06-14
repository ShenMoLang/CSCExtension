//
//  CSCComponent.m
//  CSCVirtualCardSDK
//
//  Created by yinzhihao on 17/5/25.
//  Copyright © 2017年 Andy. All rights reserved.
//

#import "CSCComponent.h"

@implementation CSCComponent

+ (instancetype)sharedInstance
{
    static CSCComponent * _sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [CSCComponent new];
        // do some things
        
    });
    
    return _sharedInstance;
}

@end
