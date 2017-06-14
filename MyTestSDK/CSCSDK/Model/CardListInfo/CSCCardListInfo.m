//
//  CSCCardListInfo.m
//  CSCVirtualCardSDK
//
//  Created by yinzhihao on 17/5/25.
//  Copyright © 2017年 Andy. All rights reserved.
//

#import "CSCCardListInfo.h"

@implementation CSCCardListInfo

+ (instancetype)sharedInstance
{
    static CSCCardListInfo * _sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [CSCCardListInfo new];
        // do some things
        
    });
    
    return _sharedInstance;
}

@end
