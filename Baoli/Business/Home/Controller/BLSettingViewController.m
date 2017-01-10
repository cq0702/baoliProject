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
    UILabel *sexLabel=[[UILabel alloc] initWithFrame:CGRectMake(20, 10, 100, 20)];
    [self setlabel:sexLabel title:@"性别"];
    [self.sexButton addSubview:sexLabel];
    UILabel *birthdayLabel=[[UILabel alloc] initWithFrame:CGRectMake(20, 10, 100, 20)];
    [self setlabel:birthdayLabel title:@"生日"];
    [self.birthdayButton addSubview:birthdayLabel];
    UILabel *signLabel=[[UILabel alloc] initWithFrame:CGRectMake(20, 10, 100, 20)];
    [self setlabel:signLabel title:@"签名"];
    [self.signButton addSubview:signLabel];
    UILabel *phoneLabel=[[UILabel alloc] initWithFrame:CGRectMake(20, 10, 100, 20)];
    [self setlabel:phoneLabel title:@"手机号码"];
    [self.phoneButton addSubview:phoneLabel];
    UILabel *passwordLabel=[[UILabel alloc] initWithFrame:CGRectMake(20, 10, 100, 20)];
    [self setlabel:passwordLabel title:@"重置密码"];
    [self.passwordButton addSubview:passwordLabel];
    UILabel *locationLabel=[[UILabel alloc] initWithFrame:CGRectMake(20, 10, 100, 20)];
    [self setlabel:locationLabel title:@"所在小区"];
    [self.locationButton addSubview:locationLabel];

}
-(UILabel *)setlabel:(UILabel *)label title:(NSString *)title{
    label.font=[UIFont defaultSmallFont];
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
