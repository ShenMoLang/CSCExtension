//
//  CSCVirtualCardDefines.h
//  CSCVirtualCardSDK
//
//  Created by yinzhihao on 17/5/26.
//  Copyright © 2017年 Andy. All rights reserved.
//

#ifndef CSCVirtualCardDefines_h
#define CSCVirtualCardDefines_h

typedef enum : NSUInteger {
    E000 = 0,           //成功
    E001,               //参数有误
    E002,               //系统异常，请联系管理员
    E003,               //操作失败
    SIGN_NOT_MATCH,     //初始化填写的应用信息不正确
    USER_CHANGE_DEVICE, //用户是新设备登录
    SOFTCARD_NOT_EXIST  //虚拟卡不存在
} CSCError;



#endif /* CSCVirtualCardDefines_h */
