//
//  UIColor+Extra.m
//  DDFlower_iOS
//
//  Created by user on 16/11/16.
//  Copyright © 2016年 user. All rights reserved.
//

#import "UIColor+Extra.h"

@implementation UIColor (Extra)


//0xfec82e
+ (UIColor *)defaultMainColor
{
    return [UIColor colorWithHexString:@"0xfec82e"];
}

//763f01
+ (UIColor *)defaultTitleColor
{
    return [UIColor blueColor];

}
// 181818
+ (UIColor *)defaultTextColor;
{
    return [UIColor colorWithHexString:@"181818"];

}

//666666
+ (UIColor *)defaultSubTextColor
{
    return [UIColor colorWithHexString:@"666666"];

}


+ (UIColor *)defaultAssistTextColor
{
    return [UIColor colorWithHexString:@"666666"];

}


+ (UIColor *)defaultDescriptionColor
{
    return [UIColor colorWithHexString:@"666666"];

}


+ (UIColor *)defaultBackgroundColor
{
    return [UIColor colorWithHexString:@"f2f2f2"];

}

+ (UIColor *)defaultCodeButtonColor
{
    return [UIColor colorWithHexString:@"FFF5D8"];

}

+ (UIColor *)defaultLineColor
{
    return [UIColor colorWithHexString:@"CECECE"];

}

+ (UIColor *)defaultGrayColor
{
    return [UIColor colorWithHexString:@"DEDEDE"];
    
}

@end
