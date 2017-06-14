//
//  CSCMQTTService.m
//  Farmwork
//
//  Created by yinzhihao on 17/5/20.
//  Copyright © 2017年 Andy. All rights reserved.
//

#import "CSCMQTTService.h"
#import "MQTTKit.h"

@interface CSCMQTTService ()
//@property (nonatomic, strong) MQTTClient *client;
@property (nonatomic, strong) NSString *topic; //订阅的主题

@end

#define clientID [UIDevice currentDevice].identifierForVendor.UUIDString
#define userName @"admin"
#define password @"zcsmart@123456"
#define topicPre @"fp_v10_topic_"
/*
//订阅主题回调
- (void)mqttDidSubscribe;
//取消订阅主题回调
- (void)mqttDidUnsubscribe;
//连接到MQTT回调
- (void)mqttDidConnect:(int)code;
//断开连接回调
- (void)mqttDidDisconnect:(int)code;
*/

@implementation CSCMQTTService

+ (instancetype)sharedInstance
{
    static CSCMQTTService * _sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [CSCMQTTService new];
        
    });
    
    return _sharedInstance;
}

// 发布数据
- (void)publicData:(NSDictionary *)dictionary
{
    if (_delegate != nil && [_delegate respondsToSelector:@selector(mqttDidPublicDataToServer:)]) {
        [_delegate mqttDidPublicDataToServer:CSCMqttRetCodeTypeSuccess];
    }
    
    if (dictionary) {
        NSLog(@"SDK didReceive dictionary From APP - %s - dictionary = %@", __func__, dictionary);
    }
}



// 枚举转字符串
- (NSString *)enumToString:(CSCMqttMessageType)type
{
    switch (type) {
        case CSCMqttMessageTypeDeviceBound:
            return @"device_bound";
        case CSCMqttMessageTypeConsumeResult:
            return @"consume_result";
        case CSCMqttMessageTypeConsumeWait:
            return @"consume_wait";
        case CSCMqttMessageTypeConsumeAuth:
            return @"consume_auth";
        case CSCMqttMessageTypeConsumeRefund:
            return @"consume_refund";
        
        default:
            return @"";
    }
}

- (void)test
{
    if (_delegate != nil && [_delegate respondsToSelector:@selector(mqttDidReceiveDataFromServer:type:)]) {
        NSDictionary *message = @{@"first": @"1",
                    @"second": @2,
                                  @"third": @[@"3",@"4"]};
        [_delegate mqttDidReceiveDataFromServer:message type:CSCMqttMessageTypeConsumeResult];
    }
}

@end
