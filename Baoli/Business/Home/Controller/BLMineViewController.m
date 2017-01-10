//
//  BLMineViewController.m
//  Baoli
//
//  Created by Roy Chan on 17/1/9.
//  Copyright © 2017年 user. All rights reserved.
//

#import "BLMineViewController.h"
#import "UIColor+Extra.h"
#import "UIFont+Extra.h"
#import "BLFeedbackViewController.h"
#import "BLSettingViewController.h"
#import "BLMessagesViewController.h"
#import "BLReviewViewController.h"
@interface BLMineViewController ()
@property (weak, nonatomic) IBOutlet UIButton *feedbackButton;
@property (weak, nonatomic) IBOutlet UIButton *introductionButton;
@property (weak, nonatomic) IBOutlet UIButton *helpButton;
@property (weak, nonatomic) IBOutlet UIButton *protocolButton;
@property (weak, nonatomic) IBOutlet UIButton *loginout;
- (IBAction)feedbackAction:(UIButton *)sender;
- (IBAction)introductionAction:(UIButton *)sender;
- (IBAction)helpAction:(UIButton *)sender;
- (IBAction)protocolAction:(UIButton *)sender;
- (IBAction)loginoutAction:(UIButton *)sender;
- (IBAction)settingAction:(UIButton *)sender;
- (IBAction)messagesAction:(UIButton *)sender;

@end

@implementation BLMineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor defaultBackgroundColor];
    UILabel *feedback=[[UILabel alloc] initWithFrame:CGRectMake(20, 10, 100, 20)];
    [self setlabel:feedback title:@"意见反馈"];
    UIImageView *nextImage=[[UIImageView alloc] initWithFrame:CGRectMake(ScreenWidth-35, 5, 15, 20)];
    nextImage.image=[UIImage imageNamed:@"IQButtonBarArrowRight.png"];
    UILabel *introduction=[[UILabel alloc] initWithFrame:CGRectMake(20, 10, 100, 20)];
    [self setlabel:introduction title:@"平台简介"];
    UILabel *help=[[UILabel alloc] initWithFrame:CGRectMake(20, 10, 100, 20)];
    [self setlabel:help title:@"帮助中心"];
    UILabel *protocol=[[UILabel alloc] initWithFrame:CGRectMake(20, 10, 100, 20)];
    [self setlabel:protocol title:@"使用协议"];
    UILabel *loginout=[[UILabel alloc] initWithFrame:CGRectMake(20, 10, 100, 20)];
    [self setlabel:loginout title:@"退出登录"];
    [self.feedbackButton addSubview:nextImage];
    [self.feedbackButton addSubview:feedback];
    [self.introductionButton addSubview:introduction];
    [self.helpButton addSubview:help];
    [self.protocolButton addSubview:protocol];
    [self.loginout addSubview:loginout];
}

-(UILabel *)setlabel:(UILabel *)label title:(NSString *)title{
    label.font=[UIFont defaultSmallFont];
    label.text=title;
    label.textColor=[UIColor defaultSubTextColor];
    return label;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)feedbackAction:(UIButton *)sender {
    BLFeedbackViewController *BLFeedbackVC=[[BLFeedbackViewController alloc] init];
    [self.navigationController pushViewController:BLFeedbackVC animated:YES];
 }

- (IBAction)introductionAction:(UIButton *)sender {
}

- (IBAction)helpAction:(UIButton *)sender {
}

- (IBAction)protocolAction:(UIButton *)sender {
    BLReviewViewController *BLReviewVC=[[BLReviewViewController alloc] init];
    [self.navigationController pushViewController:BLReviewVC animated:YES];
}

- (IBAction)loginoutAction:(UIButton *)sender {
}

- (IBAction)settingAction:(UIButton *)sender {
    BLSettingViewController *BLSettingVC=[[BLSettingViewController alloc] init];
    [self.navigationController pushViewController:BLSettingVC animated:YES];
}

- (IBAction)messagesAction:(UIButton *)sender {
    BLMessagesViewController *BLMessagesVC=[[BLMessagesViewController alloc] init];
    [self.navigationController pushViewController:BLMessagesVC animated:YES];
}

-(void)viewWillAppear:(BOOL)animated{
    self.navigationController.navigationBar.hidden=YES;
}
-(void)viewWillDisappear:(BOOL)animated{
    self.navigationController.navigationBar.hidden=NO;
}
@end
