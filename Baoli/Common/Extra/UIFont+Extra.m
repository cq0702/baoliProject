//
//  UIFont+Extra.m
//  DDFlower_iOS
//
//  Created by user on 16/11/17.
//  Copyright © 2016年 user. All rights reserved.
//

#import "UIFont+Extra.h"

@implementation UIFont (Extra)


+ (UIFont *)defaltMaxFont;
{
    return [UIFont systemFontOfSize:18.f];
}

+ (UIFont *)defaultBigFont;
{
    return [UIFont systemFontOfSize:17.f];
}

+ (UIFont *)defaultNormalFont;
{
    return [UIFont systemFontOfSize:15.f];
}

+ (UIFont *)defaultMediumFont;
{
    return [UIFont systemFontOfSize:13.f];
}

+ (UIFont *)defaultSmallFont;
{
    return [UIFont systemFontOfSize:11.f];
}

+ (UIFont *)defaultMinFont;
{
    return [UIFont systemFontOfSize:10.f];
}

@end
