//
//  EMTextView.h
//  quanzi
//
//  Created by tam on 15-5-6.
//  Copyright (c) 2015年 tam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EMTextView : UITextView
{
    UIColor *_contentColor;
    BOOL _editing;
}

@property(strong, nonatomic) NSString *placeholder;
@property(strong, nonatomic) UIColor *placeholderColor;
@end
