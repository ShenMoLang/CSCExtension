//
//  CSCCardInfo.m
//  Farmwork
//
//  Created by yinzhihao on 17/5/24.
//  Copyright © 2017年 Andy. All rights reserved.
//

#import "CSCCardInfo.h"

@implementation CSCCardInfo

+ (instancetype)sharedInstance
{
    static CSCCardInfo * _sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [CSCCardInfo new];
        // do some things
        
    });
    
    return _sharedInstance;
}

@end
