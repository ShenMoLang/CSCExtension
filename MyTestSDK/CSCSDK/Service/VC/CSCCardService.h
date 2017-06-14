//
//  CSCCardService.h
//  Farmwork
//
//  Created by yinzhihao on 17/5/20.
//  Copyright © 2017年 Andy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CSCBaseService.h"

@interface CSCCardService : CSCBaseService

+ (instancetype)sharedInstance;

#pragma mark - VC
/**
 @brief VC-01申请虚拟卡
 @param brhId   发卡机构号
 @param prdtId  卡品牌号
 @param block   结果
 */
- (void)applyCard:(NSString *)brhId prdtId:(NSString *)prdtId block:(void (^)(BOOL isSuccess, CSCError retCode, NSString* retInfo, NSDictionary* message))block;

/**
 @brief VC-02加载虚拟卡
 @param cardId  卡号
 @param block   结果
 */
- (void)loadCard:(NSString *)cardId block:(void (^)(BOOL isSuccess, CSCError retCode, NSString* retInfo, NSDictionary* message))block;

/**
 @brief VC-03找回虚拟卡
 @param cardId  卡号
 @param block   结果
 */
- (void)regetVirtualCard:(NSString *)cardId block:(void (^)(BOOL isSuccess, CSCError retCode, NSString* retInfo, NSDictionary* message))block;

/**
 @brief VC-04二维码支付（用户扫商户码）
 @param cardId  卡号
 @param block   结果
 */
- (void)merCodePay:(NSString *)cardId block:(void (^)(BOOL isSuccess, CSCError retCode, NSString* retInfo, NSDictionary* message))block;

/**
 @brief 进行支付初始化
 @param qrcode  二维码串
 @param cardId  卡号
 @param block   结果
 */
- (void)merCodePayInit:(NSString *)qrcode cardId:(NSString *)cardId block:(void (^)(BOOL isSuccess, CSCError retCode, NSString* retInfo, NSDictionary* message))block;

/**
 @brief VC-05二维码支付（商户扫用户码）
 @param orderId 订单号
 @param money   金额
 @param cardId  卡号
 @param merId   商户号
 @param account 对应支付账户
 @param amount  对应支付金额
 @param block   结果
 */
- (void)qrCodePay:(NSString *)orderId money:(NSInteger)money cardId:(NSString *)cardId merId:(NSString *)merId account:(NSDictionary *)account amount:(NSInteger)amount block:(void (^)(BOOL isSuccess, CSCError retCode, NSString* retInfo, NSDictionary* message))block;

/**
 @brief 申请二维码串
 @param cardId  卡号
 @param block   结果
 */
- (void)qrCodePayInit:(NSString *)cardId block:(void (^)(BOOL isSuccess, CSCError retCode, NSString* retInfo, NSDictionary* message))block;

/**
 @brief VC-07联机充值
 @param cardId  卡号
 @param prdtId  产品号
 @param money   金额
 @param block   结果
 */
- (void)recharge:(NSString *)cardId prdtId:(NSString *)prdtId money:(NSInteger)money block:(void (^)(BOOL isSuccess, CSCError retCode, NSString* retInfo, NSDictionary* message))block;

/**
 @brief VC-08退货
 @param cardId  卡号
 @param prdtId  产品号
 @param money   金额
 @param block   结果

- (void)refund:(NSString *)cardId prdtId:(NSString *)prdtId money:(NSInteger)money block:(void (^)(BOOL isSuccess, CSCError retCode, NSString* retInfo, NSDictionary* message))block;
 */

/**
 @brief 获取退货二维码串
 @param orderId 订单号
 @param cardId  卡号
 @param block   结果
 */
- (void)getRefundCode:(NSString *)orderId cardId:(NSString *)cardId block:(void (^)(BOOL isSuccess, CSCError retCode, NSString* retInfo, NSDictionary* message))block;


#pragma mark - Q
/**
 @brief Q-01查询卡信息列表
 @param block   结果
 */
- (void)queryCardList:(void (^)(BOOL isSuccess, CSCError retCode, NSString* retInfo, NSDictionary* message))block;

/**
 @brief Q-02查询卡信息
 @param cardId  卡号
 @param block   结果
 */
- (void)queryCardInfo:(NSString *)cardId block:(void (^)(BOOL isSuccess, CSCError retCode, NSString* retInfo, NSDictionary* message))block;

/**
 @brief Q-03查询订单信息（通过ID）
 @param orderId 订单号
 @param block   结果
 */
- (void)queryOrderInfoById:(NSString *)orderId block:(void (^)(BOOL isSuccess, CSCError retCode, NSString* retInfo, NSDictionary* message))block;

/**
 @brief Q-04查询证件信息
 @param idNumber    证件编号
 @param block       结果
 */
- (void)queryIdInfo:(NSString *)idNumber block:(void (^)(BOOL isSuccess, CSCError retCode, NSString* retInfo, NSDictionary* message))block;

/**
 @brief Q-05查询证件列表
 @param block   结果
 */
- (void)queryIdInfoList:(void (^)(BOOL isSuccess, CSCError retCode, NSString* retInfo, NSDictionary* message))block;



@end
