





//
//  NSString+DDFExtra.m
//  DDFlower_iOS
//
//  Created by user on 16/11/21.
//  Copyright © 2016年 user. All rights reserved.
//

#import "NSString+DDFExtra.h"

@implementation NSString (DDFExtra)

- (BOOL) isValidateMobile
{
    NSString *phoneRegex = @"1[3|4|5|7|8|][0-9]{9}";
    NSPredicate *phoneTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", phoneRegex];
    return [phoneTest evaluateWithObject:self];
}

- (BOOL)isPureNumandCharacters
{        BOOL result = NO;
        if ([self length] >= 6){
            // 判断长度大于8位后再接着判断是否同时包含数字和字符
            NSString * regex = @"^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,16}$";
            NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regex];
            result = [pred evaluateWithObject:self];
        }
        return result;
}

- (NSString *)removerTheSpaceWord
{
    NSString *string = [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
    return string;
}

- (CGSize)sizeOfFont:(UIFont *)font maxWidth:(CGFloat)width
{
    CGRect rect = [self boundingRectWithSize:CGSizeMake(width, MAXFLOAT)
                                     options:NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading
                                  attributes:@{ NSFontAttributeName : font }
                                     context:nil];
    return rect.size;
}

@end
