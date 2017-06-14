//
//  CSCMQTTService.h
//  Farmwork
//
//  Created by yinzhihao on 17/5/20.
//  Copyright © 2017年 Andy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, CSCMqttMessageType) {
    CSCMqttMessageTypeDeviceBound = 0, //银业员设备绑定通知
    CSCMqttMessageTypeConsumeResult, //消费通知
    CSCMqttMessageTypeConsumeWait, //消费等待
    CSCMqttMessageTypeConsumeAuth, //消费授权通知
    CSCMqttMessageTypeConsumeRefund //消费退货通知
};

typedef NS_ENUM(NSUInteger, CSCMqttRetCodeType) {
    CSCMqttRetCodeTypeSuccess = 0,  //成功
    CSCMqttRetCodeTypeFailure       //失败
};

@protocol CSCVirtualCardSDKMQTTDelegate <NSObject>

@optional
//所有回调方法均在主线程返回

// 广播消息回调
- (void)mqttDidPublicDataToServer:(CSCMqttRetCodeType)code;
// APP接收到消息回调
- (void)mqttDidReceiveDataFromServer:(NSDictionary *)payload type:(CSCMqttMessageType)type;

@end

@interface CSCMQTTService : NSObject

@property (nonatomic, weak) id<CSCVirtualCardSDKMQTTDelegate> delegate;

+ (instancetype)sharedInstance;

// 广播消息
- (void)publicData:(NSDictionary *)dictionary;

/// 可通过调用这个方法测试 - (void)mqttDidReceiveData:(NSDictionary *)payload type:(MqttMessageType)type;
- (void)test;

@end
