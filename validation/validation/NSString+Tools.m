//
//  NSString+Tools.m
//
//  Created by HenryGao on 2017/5/8.
//  Copyright © 2017年 HenryGao. All rights reserved.
//

#import "NSString+Tools.h"

//扩展实现。 一个 属性
//@interface NSStringTools : NSString
//
//
//
//@end



@implementation NSString (Tools)


//正则表达式
- (BOOL)createRegularExpression:(whatENUM)isWhat :(NSString *)content {
    
    //构建 正则表达式
    NSString *regularStr = [NSString new];
    switch (isWhat) {
        case Phone:{
            regularStr = @"0?(13|14|15|18)[0-9]{9}";
        }
            break;
        case Mail:{
            regularStr = @"\\w[-\\w.+]*@([A-Za-z0-9][-A-Za-z0-9]+\\.)+[A-Za-z]{2,14}";
        }
            break;
        case Password:{
//            ^(?=.*\d)(?=.*[a-zA-Z])(?=.*[~!@#$%^&*])[\da-zA-Z~!@#$%^&*]{8,}$
            regularStr = @"^(?=.*[0-9])(?=.*[a-zA-Z])(?=.*[!@#$]).{6,18}$";
        }
            break;
        case Account:{
            regularStr = @"^[a-zA-z]\\w{3,15}$";
        }
            break;
        default:{
            return NO;
        }
            break;
    }
    
    //去除。首尾空格
    NSString *newContent = [content stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regularStr];
    return [pred evaluateWithObject:newContent];


}








////验证手机
//- (BOOL)isPhone{
//    
//    
//    
//    return NO;
//    
//}
//
////验证邮箱
//- (BOOL)isMail{
//    
//    return NO;
//}
//
////验证密码
//- (BOOL)isPassword{
//    
//    
//    return NO;
//}
//
////验证账号 （规则 ： 不允许中文、特殊字符）
//- (BOOL)isAccount{
//    
//    
//    return NO;
//}









@end
