//
//  CSCCardInfo.h
//  Farmwork
//
//  Created by yinzhihao on 17/5/24.
//  Copyright © 2017年 Andy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CSCCardInfo : NSObject

@property (nonatomic, strong) NSString *prdtId; //产品号
@property (nonatomic, strong) NSString *aid; //aid
@property (nonatomic, strong) NSString *prdtTitle; //产品名称
@property (nonatomic, strong) NSString *blance; //金额
@property (nonatomic, strong) NSString *startDt; //预留字段
@property (nonatomic, strong) NSString *endDt; //预留字段
@property (nonatomic, strong) NSString *brhId; //机构id
@property (nonatomic, strong) NSString *sttlUnit; //单位
@property (nonatomic, strong) NSString *flag; //是否脱机
@property (nonatomic, strong) NSString *isAvailable; //是否可充值
@property (nonatomic, strong) NSString *isWithdrawals; //是否可提现


+ (instancetype)sharedInstance;


@end
