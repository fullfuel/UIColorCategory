//
//  UIColor+Utility.m
//  test
//
//  Created by baishiqi on 15/10/7.
//  Copyright © 2015年 baishiqi. All rights reserved.
//

#import "UIColor+Utility.h"

@implementation UIColor (Utility)

+ (UIColor *)colorWithHex:(NSInteger)hexColor;
{
    return [UIColor colorWithHex:hexColor alpha:1.0];
}

+ (UIColor *)colorWithHex:(NSInteger)hexColor alpha:(CGFloat)alpha
{
    CGFloat red = ((CGFloat)((hexColor & 0xFF0000) >> 16)) / 255.0;
    CGFloat green = ((CGFloat)((hexColor & 0xFF00) >> 8)) / 255.0;
    CGFloat blue = ((CGFloat)(hexColor & 0xFF)) / 255.0;
    return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
}

+ (UIColor *)colorWithDecimalIntegerRed:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue
{
    return [UIColor colorWithDecimalIntegerRed:red green:green blue:blue alpha:1.0];
}

+ (UIColor *)colorWithDecimalIntegerRed:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue alpha:(CGFloat)alpha
{
    return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha];
}

@end
