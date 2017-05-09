# validationNsstringCategory

## 说明：
验证手机号、邮箱、密码、账号规则的NSString类别

## 项目截图 
![image](https://github.com/HenryGaoGH/validationNsstringCategory/blob/master/images/001.png)
![image](https://github.com/HenryGaoGH/validationNsstringCategory/blob/master/images/002.png)



## 使用方法
添加NSString一个验证手机号、邮箱、密码、账号是否符合规则的类别，将项目中NSString+Tools添加到你的项目中。在使用的地方引入头文件。使用枚举代表需要验证的 类型。
```objective-c
    typedef enum : NSUInteger {
        Phone,   //
        Mail,
        Password,
        Account,
    } whatENUM;
    
    BOOL aa = [_tF.text createRegularExpression:_what :_tF.text];
```










