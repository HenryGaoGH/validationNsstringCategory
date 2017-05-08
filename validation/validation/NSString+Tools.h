//
//  NSString+Tools.h
//
//  Created by HenryGao on 2017/5/8.
//  Copyright © 2017年 HenryGao. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum : NSUInteger {
    Phone,
    Mail,
    Password,
    Account,
} whatENUM;



@interface NSString (Tools)


//创建NSRegularExpression
- (BOOL)createRegularExpression: (whatENUM )isWhat :(NSString *)content;

////验证手机
//- (BOOL)isPhone;
//
////验证邮箱
//- (BOOL)isMail;
//
////验证密码
//- (BOOL)isPassword;
//
////验证账号 （规则 ： 不允许中文、特殊字符）
//- (BOOL)isAccount;





@end
