//
//  CSCComponent.h
//  CSCVirtualCardSDK
//
//  Created by yinzhihao on 17/5/25.
//  Copyright © 2017年 Andy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CSCComponent : NSObject

@property (nonatomic, strong) NSString *prdtTitle; //产品名称
@property (nonatomic, strong) NSString *transNum; //转换比例
@property (nonatomic, strong) NSString *transAmount; //转换金额
@property (nonatomic, strong) NSString *sttlUnit; //单位

+ (instancetype)sharedInstance;


@end
