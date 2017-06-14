//
//  CSCCardService.m
//  Farmwork
//
//  Created by yinzhihao on 17/5/20.
//  Copyright © 2017年 Andy. All rights reserved.
//

#import "CSCCardService.h"
#import "CSCUserInfo.h"

@implementation CSCCardService

+ (instancetype)sharedInstance
{
    static CSCCardService * _sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [CSCCardService new];
        // do some things
        
    });
    
    return _sharedInstance;
}

#pragma mark - VC
/**
 @brief VC-01申请虚拟卡
 @param brhId   发卡机构号
 @param prdtId  卡品牌号
 @param block   结果
 */
- (void)applyCard:(NSString *)brhId prdtId:(NSString *)prdtId block:(void (^)(BOOL isSuccess, CSCError retCode, NSString* retInfo, NSDictionary* message))block
{
    NSDictionary *message = @{@"first": @"1",
                              @"second": @2,
                              @"third": @[@"3",@"4"]};
    if (block) {
        block(YES, E000, @"接口调用成功", message);
    }
}

/**
 @brief VC-02加载虚拟卡
 @param cardId  卡号
 @param block   结果
 */
- (void)loadCard:(NSString *)cardId block:(void (^)(BOOL isSuccess, CSCError retCode, NSString* retInfo, NSDictionary* message))block
{
    NSDictionary *message = @{@"first": @"1",
                              @"second": @2,
                              @"third": @[@"3",@"4"]};
    if (block) {
        block(YES, E000, @"接口调用成功", message);
    }
}

/**
 @brief VC-03找回虚拟卡
 @param cardId  卡号
 @param block   结果
 */
- (void)regetVirtualCard:(NSString *)cardId block:(void (^)(BOOL isSuccess, CSCError retCode, NSString* retInfo, NSDictionary* message))block
{
    NSDictionary *message = @{@"first": @"1",
                              @"second": @2,
                              @"third": @[@"3",@"4"]};
    if (block) {
        block(YES, E000, @"接口调用成功", message);
    }
}

/**
 @brief VC-04二维码支付（用户扫商户码）
 @param cardId  卡号
 @param block   结果
 */
- (void)merCodePay:(NSString *)cardId block:(void (^)(BOOL isSuccess, CSCError retCode, NSString* retInfo, NSDictionary* message))block
{
    //第一步、查询卡信息列表Q-01
    
    //第二步、进行支付初始化
    //需要提供外部用户号，二维码串，卡号，初始化成功，进行下一步
    
    //第三步、接收支付列表的广播消息并解析
    //接收到支付列表是String字符串，需要开发者解析json格式的消息并作出对应展示，给用户选择之后获取到对应的支付账户和支付金额，供第四步支付操作使用
    
    //第四步、进行支付
    //支付需要参数：外部用户号、金额、卡号、商户号、对应支付账户和对应金额，在onNext中获取支付结果，在OnCSCError中获取错误信息，若错误信息为“1002”，则说明虚拟卡不存在，需要找回对应虚拟卡
    
    NSDictionary *message = @{@"first": @"1",
                              @"second": @2,
                              @"third": @[@"3",@"4"]};
    if (block) {
        block(YES, E000, @"接口调用成功", message);
    }
}

/**
 @brief 进行支付初始化
 @param cardId  卡号
 @param block   结果
 */
- (void)merCodePayInit:(NSString *)qrcode cardId:(NSString *)cardId block:(void (^)(BOOL isSuccess, CSCError retCode, NSString* retInfo, NSDictionary* message))block
{
    NSDictionary *message = @{@"first": @"1",
                              @"second": @2,
                              @"third": @[@"3",@"4"]};
    if (block) {
        block(YES, E000, @"接口调用成功", message);
    }
}

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
- (void)qrCodePay:(NSString *)orderId money:(NSInteger)money cardId:(NSString *)cardId merId:(NSString *)merId account:(NSDictionary *)account amount:(NSInteger)amount block:(void (^)(BOOL isSuccess, CSCError retCode, NSString* retInfo, NSDictionary* message))block
{
    /*
     第一步、获取卡信息列表，与VC-04的第一步相同
     第二步、获取二维码串并展示给用户
     需要提供外部用户号和卡号，若onCSCError中错误码为CSCError.SOFTCARD_NOT_EXIST，则虚拟卡不存在需找回
     第三步、接收支付活动列表的广播并解析，与VC-04的第三步接收广播相同
     第四步、进行支付
     支付需要参数外部用户号、订单号、金额、卡号、商户号、对应支付账户和对应支付金额
     */
    NSDictionary *message = @{@"first": @"1",
                              @"second": @2,
                              @"third": @[@"3",@"4"]};
    if (block) {
        block(YES, E000, @"接口调用成功", message);
    }
}

/**
 @brief 申请二维码串
 @param cardId  卡号
 @param block   结果
 */
- (void)qrCodePayInit:(NSString *)cardId block:(void (^)(BOOL isSuccess, CSCError retCode, NSString* retInfo, NSDictionary* message))block
{
    NSDictionary *message = @{@"first": @"1",
                              @"second": @2,
                              @"third": @[@"3",@"4"]};
    if (block) {
        block(YES, E000, @"接口调用成功", message);
    }
}

/**
 @brief VC-07联机充值
 @param cardId  卡号
 @param prdtId  产品号
 @param money   金额
 @param block   结果
 */
- (void)recharge:(NSString *)cardId prdtId:(NSString *)prdtId money:(NSInteger)money block:(void (^)(BOOL isSuccess, CSCError retCode, NSString* retInfo, NSDictionary* message))block
{
    NSDictionary *message = @{@"first": @"1",
                              @"second": @2,
                              @"third": @[@"3",@"4"]};
    if (block) {
        block(YES, E000, @"接口调用成功", message);
    }
}

/**
 @brief VC-08退货
 @param cardId  卡号
 @param prdtId  产品号
 @param money   金额
 @param block   结果
 */
- (void)refund:(NSString *)cardId prdtId:(NSString *)prdtId money:(NSInteger)money block:(void (^)(BOOL isSuccess, CSCError retCode, NSString* retInfo, NSDictionary* message))block
{
    /*
     第一步、查询订单信息
     第二步、获取退货二维码串
     需要外部用户号和订单号
     第三步、接收退货的广播消息并解析
     需要添加广播的IntentFilter，对应退货的是Constants.SDK_BROADCAST_ACTION_REFUND
     */
    NSDictionary *message = @{@"first": @"1",
                              @"second": @2,
                              @"third": @[@"3",@"4"]};
    if (block) {
        block(YES, E000, @"接口调用成功", message);
    }
}

/**
 @brief 获取退货二维码串
 @param orderId 订单号
 @param cardId  卡号
 @param block   结果
 */
- (void)getRefundCode:(NSString *)orderId cardId:(NSString *)cardId block:(void (^)(BOOL isSuccess, CSCError retCode, NSString* retInfo, NSDictionary* message))block
{
    /*
     第一步、查询订单信息
     第二步、获取退货二维码串
     需要外部用户号和订单号
     第三步、接收退货的广播消息并解析
     需要添加广播的IntentFilter，对应退货的是Constants.SDK_BROADCAST_ACTION_REFUND
     */
    NSDictionary *message = @{@"first": @"1",
                              @"second": @2,
                              @"third": @[@"3",@"4"]};
    if (block) {
        block(YES, E000, @"接口调用成功", message);
    }
}


#pragma mark - Q
/**
 @brief Q-01查询卡信息列表
 @param block   结果
 */
- (void)queryCardList:(void (^)(BOOL isSuccess, CSCError retCode, NSString* retInfo, NSDictionary* message))block
{
    NSDictionary *message = @{@"first": @"1",
                              @"second": @2,
                              @"third": @[@"3",@"4"]};
    if (block) {
        block(YES, E000, @"接口调用成功", message);
    }
}

/**
 @brief Q-02查询卡信息
 @param cardId  卡号
 @param block   结果
 */
- (void)queryCardInfo:(NSString *)cardId block:(void (^)(BOOL isSuccess, CSCError retCode, NSString* retInfo, NSDictionary* message))block
{
    NSDictionary *message = @{@"first": @"1",
                              @"second": @2,
                              @"third": @[@"3",@"4"]};
    if (block) {
        block(YES, E000, @"接口调用成功", message);
    }
}

/**
 @brief Q-03查询订单信息（通过ID）
 @param orderId 订单号
 @param block   结果
 */
- (void)queryOrderInfoById:(NSString *)orderId block:(void (^)(BOOL isSuccess, CSCError retCode, NSString* retInfo, NSDictionary* message))block
{
    NSDictionary *message = @{@"first": @"1",
                              @"second": @2,
                              @"third": @[@"3",@"4"]};
    if (block) {
        block(YES, E000, @"接口调用成功", message);
    }
}

/**
 @brief Q-04查询证件信息
 @param idNumber    证件编号
 @param block       结果
 */
- (void)queryIdInfo:(NSString *)idNumber block:(void (^)(BOOL isSuccess, CSCError retCode, NSString* retInfo, NSDictionary* message))block
{
    NSDictionary *message = @{@"first": @"1",
                              @"second": @2,
                              @"third": @[@"3",@"4"]};
    if (block) {
        block(YES, E000, @"接口调用成功", message);
    }
}

/**
 @brief Q-05查询证件列表
 @param block   结果
 */
- (void)queryIdInfoList:(void (^)(BOOL isSuccess, CSCError retCode, NSString* retInfo, NSDictionary* message))block
{
    NSDictionary *message = @{@"first": @"1",
                              @"second": @2,
                              @"third": @[@"3",@"4"]};
    if (block) {
        block(YES, E000, @"接口调用成功", message);
    }
}

@end
