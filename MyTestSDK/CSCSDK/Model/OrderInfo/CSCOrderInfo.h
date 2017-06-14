//
//  CSCOrderInfo.h
//  CSCVirtualCardSDK
//
//  Created by yinzhihao on 17/5/25.
//  Copyright © 2017年 Andy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CSCComponent.h"

@interface CSCOrderInfo : NSObject

@property (nonatomic, strong) NSString *orderNum; //订单号
@property (nonatomic, strong) NSString *amount; //交易金额
@property (nonatomic, strong) NSString *orderTime; //订单时间
@property (nonatomic, strong) NSString *orderStatus; //订单状态
@property (nonatomic, strong) NSString *giveNum; //赠送积分
@property (nonatomic, strong) NSString *tradeType; //交易类型
@property (nonatomic, strong) NSString *brandName; //机构名称
@property (nonatomic, strong) NSString *merchantName; //商户名称
@property (nonatomic, strong) NSString *payType; //支付方式（在线、离线）
@property (nonatomic, strong) NSString *cardIdFrom; //预留字段
@property (nonatomic, strong) NSString *cardIdFromName; //预留字段
@property (nonatomic, strong) NSString *cardIdTo; //预留字段
@property (nonatomic, strong) NSString *cardIdToName; //预留字段
@property (nonatomic, strong) NSString *direction; //增加金额或者减少金额（+、-）
@property (nonatomic, strong) NSString *goodsName; //交易名称
@property (nonatomic, strong) NSString *realAmount; //实际支付
@property (nonatomic, strong) NSString *paymentName; //付款方
@property (nonatomic, strong) NSString *receivablesName; //收款方
@property (nonatomic, strong) NSString *tradeName; //交易类型名称
@property (nonatomic, strong) NSArray<CSCComponent *> *componentList; //支付活动方式
@property (nonatomic, strong) NSString *tradeImg; //交易图片
@property (nonatomic, strong) NSString *originOrderNum; //退货之后的原始订单号
@property (nonatomic, strong) NSString *remark; //交易错误信息
@property (nonatomic, strong) NSString *txnFee; //手续费

+ (instancetype)sharedInstance;


@end
