//
//  BLSettingViewController.m
//  Baoli
//
//  Created by Roy Chan on 17/1/9.
//  Copyright © 2017年 user. All rights reserved.
//

#import "BLSettingViewController.h"
#import "UIColor+Extra.h"
#import "UIFont+Extra.h"
@interface BLSettingViewController ()
@property (weak, nonatomic) IBOutlet UIButton *nameButton;
@property (weak, nonatomic) IBOutlet UIButton *sexButton;
@property (weak, nonatomic) IBOutlet UIButton *birthdayButton;
@property (weak, nonatomic) IBOutlet UIButton *signButton;
@property (weak, nonatomic) IBOutlet UIButton *phoneButton;
@property (weak, nonatomic) IBOutlet UIButton *passwordButton;
@property (weak, nonatomic) IBOutlet UIButton *locationButton;

@end

@implementation BLSettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"个人中心";
    self.view.backgroundColor=[UIColor defaultBackgroundColor];
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:@"更换头像"
                                                                    style:UIBarButtonItemStylePlain
                                                                   target:self action:@selector(changeAvatar)];
    self.navigationItem.rightBarButtonItem = rightButton;
    
    [self setLabelWithButton:self.nameButton title:@"昵称" value:@"陈先生"];
    [self setLabelWithButton:self.sexButton title:@"性别" value:@"男"];
    [self setLabelWithButton:self.birthdayButton title:@"生日" value:@"02-09"];
    [self setLabelWithButton:self.signButton title:@"签名" value:@"何以解忧唯有杜康"];
    [self setLabelWithButton:self.phoneButton title:@"手机号码" value:@"13455550199"];
    [self setLabelWithButton:self.passwordButton title:@"重置密码" value:@"******"];
    [self setLabelWithButton:self.locationButton title:@"所在小区" value:@"广州保利"];

}

-(void)setLabelWithButton:(UIButton *)button title:(NSString *)title value:(NSString *)value{
    button.backgroundColor=[UIColor whiteColor];
    UILabel *titleLabel=[[UILabel alloc] initWithFrame:CGRectMake(20, 10, 100, 20)];
    [self setlabel:titleLabel title:title];
    [button addSubview:titleLabel];
    
    UILabel *valueLabel=[[UILabel alloc] initWithFrame:CGRectMake(ScreenWidth-120-34-50, 10, 150, 20)];
    valueLabel.textAlignment=NSTextAlignmentRight;
    [self setlabel:valueLabel title:value];
    [button addSubview:valueLabel];
    
    UIImageView *nextImage=[[UIImageView alloc] initWithFrame:CGRectMake(ScreenWidth-34, 12, 14, 16)];
    nextImage.image=[UIImage imageNamed:@"next.png"];
    [button addSubview:nextImage];
}

-(UILabel *)setLabelValue:(UILabel *)label value:(NSString *)value{
    label.font=[UIFont defaultMediumFont];
    label.text=value;
    label.textAlignment=NSTextAlignmentRight;
    label.textColor=[UIColor defaultSubTextColor];
    return label;
}

-(UILabel *)setlabel:(UILabel *)label title:(NSString *)title{
    label.font=[UIFont defaultMediumFont];
    label.text=title;
    label.textColor=[UIColor defaultSubTextColor];
    return label;
}

-(void)changeAvatar{
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
