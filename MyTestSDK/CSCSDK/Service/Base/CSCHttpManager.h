//
//  CSCHttpManager.h
//  Farmwork
//
//  Created by yinzhihao on 17/5/20.
//  Copyright © 2017年 Andy. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@interface CSCHttpManager : NSObject

+ (instancetype)sharedInstance;

/**
 @brief  post方法
 @param url      ulr地址
 @param parameters     上传参数
 @param success  通信成功
 @param failure     失败
 @return 任务
 */
- (NSURLSessionTask *)post:(NSString *)url
                parameters:(NSDictionary *)parameters
                   success:(void (^)(id responseObject))success
                   failure:(void (^)(NSError *error))failure;

/**
 @brief  get方法
 @param url      ulr地址
 @param success  通信成功
 @param failure     失败
 @return 任务
 */
- (NSURLSessionTask *)get:(NSString *)url
               parameters:(NSDictionary *)parameters
                  success:(void (^)(id responseObject))success
                  failure:(void (^)(NSError *error))failure;


@end
NS_ASSUME_NONNULL_END
