//
//  CSCHttpManager.m
//  Farmwork
//
//  Created by yinzhihao on 17/5/20.
//  Copyright © 2017年 Andy. All rights reserved.
//

#import "CSCHttpManager.h"

static NSTimeInterval timeoutInterval = 6.0;

@interface CSCHttpManager ()
@end

@implementation CSCHttpManager

+ (instancetype)sharedInstance
{
    static CSCHttpManager * _sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [CSCHttpManager new];
    });
    return _sharedInstance;
}

- (NSURLSessionTask *)post:(NSString *)url
                parameters:(NSDictionary *)parameters
                   success:(nonnull void (^)(id _Nonnull))success
                   failure:(nonnull void (^)(NSError * _Nonnull))failure
{
    NSLog(@"\n-----请求报文-----:\n%@",parameters);
    
    // 将参数添加在请求体中
    NSMutableString *str = [NSMutableString string];
    //参数处理
    for (NSString * key in parameters) {
        [str appendFormat:@"%@=%@&", key, parameters[key]];
    }
    // 创建请求体
    NSData * body = [str dataUsingEncoding:NSUTF8StringEncoding];
    // 创建URL
    NSURL * URL = [NSURL URLWithString:url];
    // 创建可变请求对象
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:URL];
    // 设置请求方法
    [request setHTTPMethod:@"POST"];
    // 设置请求体
    [request setHTTPBody:body];
    // 设置提交数据格式
//    [request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    // 设置超时时间
    [request setTimeoutInterval:timeoutInterval];
    
    // 实例化网络会话.
    NSURLSession *session = [NSURLSession sharedSession];
    // 根据请求对象创建请求任务
    NSURLSessionDataTask * task = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (data && !error) {
            
            //请求成功  对请求的数据做初步的json解析
            id object = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
            // 如果 obj 能够解析,说明就是 JSON
            if (!object) {
                object = data;
            }
            // 成功回调
            dispatch_async(dispatch_get_main_queue(), ^{
                
                if (success) {
                    success(object);
                }
            });
        }else {
            
            //请求失败回调
            if (failure) {
                failure(error);
            }
        }

    }];
    
    // 开启任务.  //这一步很关键，如果没有这一步，请求任务不会执行
    [task resume];
    
    return task;
}

- (NSURLSessionTask *)get:(NSString *)url
               parameters:(NSDictionary *)parameters
                  success:(nonnull void (^)(id _Nonnull))success
                  failure:(nonnull void (^)(NSError * _Nonnull))failure
{
    //GET请求需要将参数拼接在url后面
    //网络接口和参数 以“?”分隔. 参数和参数之间以“&”符号分隔。
    // 拼接url及参数
    NSMutableString * str = [NSMutableString string];
    [str appendString:url];
    //当有参数时将参数拼接上去（小编在此做的是url没有拼接参数情况下，如果url已经拼接了参数，这里还传入了一些参数，那么此处的判断需要更改，具体的大家可以来实现）
    if (parameters.count > 0) {
        //小编在此对url时候以"?"结尾做了判断，有的话就不需要再拼接"?"
        if (![str hasSuffix:@"?"]) {
            [str appendString:@"?"];
        }
        //拼接参数
        for (NSString * key in parameters) {
            [str appendFormat:@"%@=%@&", key, parameters[key]];
        }
        //注意最后一个"&"符号需要去掉
        [str deleteCharactersInRange:NSMakeRange(str.length - 1, 1)];
    }
    // 设置URL
    NSURL *URL = [NSURL URLWithString:str];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:URL];
    [request setTimeoutInterval:timeoutInterval];
    
    // 实例化网络会话.
    NSURLSession * session = [NSURLSession sharedSession];
    
    //根据URL创建请求任务
    NSURLSessionDataTask * task = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (data && !error) {
            //请求成功  对请求的数据做初步的json解析
            id object = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
            // 如果 obj 能够解析,说明就是 JSON
            if (!object) {
                object = data;
            }
            // 成功回调
            dispatch_async(dispatch_get_main_queue(), ^{
                if (success) {
                    success(object);
                }
            });
        }else {
            //请求失败回调
            if (failure) {
                failure(error);
            }
        }
    }];
    // 开启任务.  //这一步很关键，如果没有这一步，请求任务不会执行
    [task resume];
    
    return task;
}


@end
