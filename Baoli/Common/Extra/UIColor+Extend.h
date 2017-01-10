//
//  UIColor+Extend.h
//  PWKitExtension
//
//  Created by kingkong on 15/12/16.
//  Copyright (c) 2015年 Hangzhou TaiXuan Network Technology Co., Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

#define RGB(r, g, b) [UIColor colorWithRed:(r) / 255.0f green:(g) / 255.0f blue:(b) / 255.0f alpha:1]
#define RGBA(r, g, b, a) [UIColor colorWithRed:(r) / 255.0f green:(g) / 255.0f blue:(b) / 255.0f alpha:(a)]

#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

#define UIColorFromRGBA(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF000000) >> 16))/255.0 green:((float)((rgbValue & 0xFF0000) >> 8))/255.0 blue:((float)(rgbValue & 0xFF00))/255.0 alpha:((float)(rgbValue & 0xFF))/255.0]

@interface  UIColor (Extend)

/**
 *  将16进制色值代码转换为UIColor对象
 *
 *  @param hexString 16进制色值，如"#DCDCDC"
 *
 *  @return UIColor对象
 */
+ (UIColor *)colorWithHexString:(NSString *)hexString;

@end
