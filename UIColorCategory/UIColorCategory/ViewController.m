//
//  ViewController.m
//  UIColorCategory
//
//  Created by baishiqi on 16/7/5.
//  Copyright © 2016年 baishiqi. All rights reserved.
//

#import "ViewController.h"
#import "UIColor+Utility.h"

@interface ViewController () <UITextFieldDelegate>

@property (nonatomic, weak) IBOutlet UIView *colorView;

@property (nonatomic, weak) IBOutlet UITextField *textFieldRed;
@property (nonatomic, weak) IBOutlet UITextField *textFieldGreen;
@property (nonatomic, weak) IBOutlet UITextField *textFieldBlue;
@property (nonatomic, weak) IBOutlet UITextField *textFieldHex;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)rgbBtnClicked:(id)sender
{
    self.colorView.backgroundColor = [UIColor colorWithDecimalIntegerRed:[self.textFieldRed.text integerValue] green:[self.textFieldGreen.text integerValue] blue:[self.textFieldBlue.text integerValue]];
}

- (IBAction)hexBtnClicked:(id)sender
{
    NSString *str = self.textFieldHex.text;
    // 先以16为参数告诉strtoul字符串参数表示16进制数字，然后使用0x%X转为数字类型
    unsigned long hex = strtoul([str UTF8String], 0, 16);
    // 如果字符串形式“0xffffff”, 最后一个参数可以为0
//    unsigned long hex = strtoul([str UTF8String], 0, 0);
    
    self.colorView.backgroundColor = [UIColor colorWithHex:hex];
}

#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    return YES;
}

@end
