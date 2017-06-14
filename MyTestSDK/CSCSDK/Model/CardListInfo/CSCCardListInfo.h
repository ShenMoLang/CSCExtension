//
//  CSCCardListInfo.h
//  CSCVirtualCardSDK
//
//  Created by yinzhihao on 17/5/25.
//  Copyright © 2017年 Andy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CSCCardListInfo : NSObject

@property (nonatomic, strong) NSString *brandName; //机构名
@property (nonatomic, strong) NSString *cardId; //卡号
@property (nonatomic, strong) NSString *background; //背景颜色
@property (nonatomic, strong) NSString *cardImg; //卡样图片
@property (nonatomic, strong) NSString *brhName; //品牌名
@property (nonatomic, strong) NSString *tel; //联系电话

+ (instancetype)sharedInstance;

@end
