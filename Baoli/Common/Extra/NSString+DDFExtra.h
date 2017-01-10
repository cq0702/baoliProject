//
//  NSString+DDFExtra.h
//  DDFlower_iOS
//
//  Created by user on 16/11/21.
//  Copyright © 2016年 user. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (DDFExtra)

- (BOOL) isValidateMobile;
- (BOOL)isPureNumandCharacters;
- (NSString *)removerTheSpaceWord;
- (CGSize)sizeOfFont:(UIFont *)font maxWidth:(CGFloat)width;

@end
