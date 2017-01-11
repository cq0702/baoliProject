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
    
    UILabel *nameLabel=[[UILabel alloc] initWithFrame:CGRectMake(20, 10, 100, 20)];
    [self setlabel:nameLabel title:@"昵称"];
    [self.nameButton addSubview:nameLabel];
    UIImageView *nameNext=[[UIImageView alloc] initWithFrame:CGRectMake(ScreenWidth-34, 12, 14, 16)];
    nameNext.image=[UIImage imageNamed:@"next.png"];
    [self.nameButton addSubview:nameNext];
    UILabel *nameValue=[[UILabel alloc] initWithFrame:CGRectMake(ScreenWidth-34-5-100, 10, 100, 20)];
    [self setLabelValue:nameValue value:@"陈先生"];
    [self.nameButton addSubview:nameValue];
    
    UILabel *sexLabel=[[UILabel alloc] initWithFrame:CGRectMake(20, 10, 100, 20)];
    [self setlabel:sexLabel title:@"性别"];
    [self.sexButton addSubview:sexLabel];
    UIImageView *sexNext=[[UIImageView alloc] initWithFrame:CGRectMake(ScreenWidth-34, 12, 14, 16)];
    sexNext.image=[UIImage imageNamed:@"next.png"];
    [self.sexButton addSubview:sexNext];
    UILabel *sexValue=[[UILabel alloc] initWithFrame:CGRectMake(ScreenWidth-34-5-100, 10, 100, 20)];
    [self setLabelValue:sexValue value:@"男"];
    [self.sexButton addSubview:sexValue];
    
    UILabel *birthdayLabel=[[UILabel alloc] initWithFrame:CGRectMake(20, 10, 100, 20)];
    [self setlabel:birthdayLabel title:@"生日"];
    [self.birthdayButton addSubview:birthdayLabel];
    UIImageView *birthdayNext=[[UIImageView alloc] initWithFrame:CGRectMake(ScreenWidth-34, 12, 14, 16)];
    birthdayNext.image=[UIImage imageNamed:@"next.png"];
    [self.birthdayButton addSubview:birthdayNext];
    UILabel *birthdayValue=[[UILabel alloc] initWithFrame:CGRectMake(ScreenWidth-34-5-100, 10, 100, 20)];
    [self setLabelValue:birthdayValue value:@"02-09"];
    [self.birthdayButton addSubview:birthdayValue];
    
    UILabel *signLabel=[[UILabel alloc] initWithFrame:CGRectMake(20, 10, 100, 20)];
    [self setlabel:signLabel title:@"签名"];
    [self.signButton addSubview:signLabel];
    UIImageView *signNext=[[UIImageView alloc] initWithFrame:CGRectMake(ScreenWidth-34, 12, 14, 16)];
    signNext.image=[UIImage imageNamed:@"next.png"];
    [self.signButton addSubview:signNext];
    UILabel *signValue=[[UILabel alloc] initWithFrame:CGRectMake(ScreenWidth-34-5-150, 10, 150, 20)];
    [self setLabelValue:signValue value:@"何以解忧唯有杜康"];
    [self.signButton addSubview:signValue];
    
    UILabel *phoneLabel=[[UILabel alloc] initWithFrame:CGRectMake(20, 10, 100, 20)];
    [self setlabel:phoneLabel title:@"手机号码"];
    [self.phoneButton addSubview:phoneLabel];
    UIImageView *phoneNext=[[UIImageView alloc] initWithFrame:CGRectMake(ScreenWidth-34, 12, 14, 16)];
    phoneNext.image=[UIImage imageNamed:@"next.png"];
    [self.phoneButton addSubview:phoneNext];
    UILabel *phoneValue=[[UILabel alloc] initWithFrame:CGRectMake(ScreenWidth-34-5-100, 10, 100, 20)];
    [self setLabelValue:phoneValue value:@"13455550199"];
    [self.phoneButton addSubview:phoneValue];
    
    UILabel *passwordLabel=[[UILabel alloc] initWithFrame:CGRectMake(20, 10, 100, 20)];
    [self setlabel:passwordLabel title:@"重置密码"];
    [self.passwordButton addSubview:passwordLabel];
    UIImageView *passwordNext=[[UIImageView alloc] initWithFrame:CGRectMake(ScreenWidth-34, 12, 14, 16)];
    passwordNext.image=[UIImage imageNamed:@"next.png"];
    [self.passwordButton addSubview:passwordNext];
    UILabel *passwordValue=[[UILabel alloc] initWithFrame:CGRectMake(ScreenWidth-34-5-100, 10, 100, 20)];
    [self setLabelValue:passwordValue value:@"******"];
    [self.passwordButton addSubview:passwordValue];
    
    UILabel *locationLabel=[[UILabel alloc] initWithFrame:CGRectMake(20, 10, 100, 20)];
    [self setlabel:locationLabel title:@"所在小区"];
    [self.locationButton addSubview:locationLabel];
    UIImageView *locationNext=[[UIImageView alloc] initWithFrame:CGRectMake(ScreenWidth-34, 12, 14, 16)];
    locationNext.image=[UIImage imageNamed:@"next.png"];
    [self.locationButton addSubview:locationNext];
    UILabel *locationValue=[[UILabel alloc] initWithFrame:CGRectMake(ScreenWidth-34-5-100, 10, 100, 20)];
    [self setLabelValue:locationValue value:@"广州保利"];
    [self.locationButton addSubview:locationValue];
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
