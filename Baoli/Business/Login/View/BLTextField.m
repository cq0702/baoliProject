//
//  BLTextField.m
//  Baoli
//
//  Created by wcz on 17/1/7.
//  Copyright © 2017年 user. All rights reserved.
//

#import "BLTextField.h"
#import "UIFont+Extra.h"
#import "UIColor+Extra.h"

@implementation BLTextField

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame])
    {
        self.backgroundColor = [UIColor blueColor];
        self.leftViewMode = UITextFieldViewModeAlways;
        self.font = [UIFont defaultNormalFont];
        UIView *leftView = [[UIView alloc] init];
        leftView.frame = CGRectMake(0, 0, 15, 30);
        self.leftView = leftView;
    }
    return self;
}

- (void)awakeFromNib
{
    [super awakeFromNib];
    //self.backgroundColor = [UIColor blueColor];
    self.layer.cornerRadius = 4;
    self.layer.borderColor = [UIColor defaultTitleColor].CGColor;
    self.layer.borderWidth = 1;
   // self.placeholder.
    [self setValue:[UIColor defaultTitleColor] forKeyPath:@"_placeholderLabel.textColor"];
    self.leftViewMode = UITextFieldViewModeAlways;
    self.font = [UIFont defaultNormalFont];
    UIView *leftView = [[UIView alloc] init];
    leftView.frame = CGRectMake(0, 0, 15, 30);
    self.leftView = leftView;
}

@end
