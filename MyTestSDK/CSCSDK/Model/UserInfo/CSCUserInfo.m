//
//  CSCUserInfo.m
//  Farmwork
//
//  Created by yinzhihao on 17/5/20.
//  Copyright © 2017年 Andy. All rights reserved.
//

#import "CSCUserInfo.h"

@implementation CSCUserInfo

+ (instancetype)sharedInstance
{
    static CSCUserInfo * _sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [CSCUserInfo new];
        
    });
    
    return _sharedInstance;
}

@end
