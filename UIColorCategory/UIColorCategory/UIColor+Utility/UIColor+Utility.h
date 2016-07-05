//
//  UIColor+Utility.h
//  test
//
//  Created by baishiqi on 15/10/7.
//  Copyright © 2015年 baishiqi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Utility)

/**
 * 十六进制色值，NSInteger，如0xABCDEF，无透明度
 */
+ (UIColor *)colorWithHex:(NSInteger)hexColor;
/**
 * 十六进制色值，NSInteger，如0xABCDEF，有透明度
 */
+ (UIColor *)colorWithHex:(NSInteger)hexColor alpha:(CGFloat)alpha;
/**
 * 十进制色值，NSInteger，0~255，无透明度
 */
+ (UIColor *)colorWithDecimalIntegerRed:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue;
/**
 * 十进制色值，NSInteger，0~255，有透明度
 */
+ (UIColor *)colorWithDecimalIntegerRed:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue alpha:(CGFloat)alpha;

@end
