//
//  ViewController.m
//  测试能不能继承扩展属性
//
//  Created by HenryGao on 2017/5/8.
//  Copyright © 2017年 HenryGao. All rights reserved.
//

#import "ViewController.h"
#import "NSString+Tools.h"

@interface ViewController ()


@property (weak, nonatomic) IBOutlet UITextField *tF;
@property whatENUM what;

@property (nonatomic,retain) UIButton *lastButton;




@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _lastButton = [self.view viewWithTag:11];
    [_lastButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    
    
    
    
}



#pragma mark ========== ButtoAction ===========
/** Single line comment spreading
 *  写点说明。。。。。
 **/
- (IBAction)buttonAction:(id)sender {
    
//    if (_tF.text.length <= 0) {
//        return;
//    }
    
    BOOL aa = [_tF.text createRegularExpression:_what :_tF.text];
    
    UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:@"是不是？？" message:aa ? @"正确" : @"不正确" preferredStyle:UIAlertControllerStyleAlert];
    [alertVC addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil]];
    [self presentViewController:alertVC animated:YES completion:nil];
    
    
    
}


#pragma mark ========== setting 验证什么 ===========
/** Single line comment spreading
 *  写点说明。。。。。
 **/
- (IBAction)validationAction:(UIButton *)sender {
    
    [_lastButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [sender setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    _lastButton = sender;
    
    switch (sender.tag) {
        case 11:{
            _what = Phone;
        }
            break;
        case 22:{
            _what = Mail;
        }
            break;
        case 33:{
            _what = Password;
        }
            break;
        case 44:{
            _what = Account;
        }
            break;
            
        default:
            break;
    }
    
    
    
    
}













- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
