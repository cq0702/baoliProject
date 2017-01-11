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
@property (weak, nonatomic) IBOutlet UIButton *myRent;
@property (weak, nonatomic) IBOutlet UIButton *mySale;
@property (weak, nonatomic) IBOutlet UIButton *myReview;
@property (weak, nonatomic) IBOutlet UIButton *loginout;
- (IBAction)feedbackAction:(UIButton *)sender;
- (IBAction)introductionAction:(UIButton *)sender;
- (IBAction)helpAction:(UIButton *)sender;
- (IBAction)protocolAction:(UIButton *)sender;
- (IBAction)loginoutAction:(UIButton *)sender;
- (IBAction)settingAction:(UIButton *)sender;
- (IBAction)messagesAction:(UIButton *)sender;
- (IBAction)rentAction:(UIButton *)sender;
- (IBAction)saleAction:(UIButton *)sender;
- (IBAction)reviewAction:(UIButton *)sender;

@end

@implementation BLMineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor defaultBackgroundColor];
    
    [self setConfig];
    
    UILabel *feedback=[[UILabel alloc] initWithFrame:CGRectMake(20, 10, 100, 20)];
    [self setlabel:feedback title:@"意见反馈"];
    UIImageView *feedbackNext=[[UIImageView alloc] initWithFrame:CGRectMake(ScreenWidth-34, 12, 14, 16)];
    feedbackNext.image=[UIImage imageNamed:@"next.png"];
    
    UILabel *introduction=[[UILabel alloc] initWithFrame:CGRectMake(20, 10, 100, 20)];
    [self setlabel:introduction title:@"平台简介"];
    UIImageView *introductionNext=[[UIImageView alloc] initWithFrame:CGRectMake(ScreenWidth-34, 12, 14, 16)];
    introductionNext.image=[UIImage imageNamed:@"next.png"];
    
    UILabel *help=[[UILabel alloc] initWithFrame:CGRectMake(20, 10, 100, 20)];
    [self setlabel:help title:@"帮助中心"];
    UIImageView *helpNext=[[UIImageView alloc] initWithFrame:CGRectMake(ScreenWidth-34, 12, 14, 16)];
    helpNext.image=[UIImage imageNamed:@"next.png"];
    
    UILabel *protocol=[[UILabel alloc] initWithFrame:CGRectMake(20, 10, 100, 20)];
    [self setlabel:protocol title:@"使用协议"];
    UIImageView *protocolNext=[[UIImageView alloc] initWithFrame:CGRectMake(ScreenWidth-34, 12, 14, 16)];
    protocolNext.image=[UIImage imageNamed:@"next.png"];
    
    UILabel *loginout=[[UILabel alloc] initWithFrame:CGRectMake(20, 10, 100, 20)];
    [self setlabel:loginout title:@"退出登录"];

    [self.feedbackButton addSubview:feedbackNext];
    [self.feedbackButton addSubview:feedback];
    [self.introductionButton addSubview:introduction];
    [self.introductionButton addSubview:introductionNext];
    [self.helpButton addSubview:help];
    [self.helpButton addSubview:helpNext];
    [self.protocolButton addSubview:protocol];
    [self.protocolButton addSubview:protocolNext];
    [self.loginout addSubview:loginout];
}

-(void)setConfig{
    UIImageView *rentImage=[[UIImageView alloc] initWithFrame:CGRectMake(25, 5, 30, 30)];
    rentImage.image=[UIImage imageNamed:@"我出租的.png"];
    UILabel *rentLabel=[[UILabel alloc] initWithFrame:CGRectMake(0, 40, 80, 20)];
    rentLabel.textAlignment=NSTextAlignmentCenter;
    [self setlabel:rentLabel title:@"我出租的"];
    [self.myRent addSubview:rentImage];
    [self.myRent addSubview:rentLabel];
    
    UIImageView *saleImage=[[UIImageView alloc] initWithFrame:CGRectMake(25, 5, 30, 30)];
    saleImage.image=[UIImage imageNamed:@"我租到的.png"];
    UILabel *saleLabel=[[UILabel alloc] initWithFrame:CGRectMake(0, 40, 80, 20)];
    saleLabel.textAlignment=NSTextAlignmentCenter;
    [self setlabel:saleLabel title:@"我租到的"];
    [self.mySale addSubview:saleImage];
    [self.mySale addSubview:saleLabel];
    
    UIImageView *reviewImage=[[UIImageView alloc] initWithFrame:CGRectMake(25, 5, 30, 30)];
    reviewImage.image=[UIImage imageNamed:@"我的信评.png"];
    UILabel *reviewLabel=[[UILabel alloc] initWithFrame:CGRectMake(0, 40, 80, 20)];
    reviewLabel.textAlignment=NSTextAlignmentCenter;
    [self setlabel:reviewLabel title:@"我的信评"];
    [self.myReview addSubview:reviewImage];
    [self.myReview addSubview:reviewLabel];
}

-(UILabel *)setlabel:(UILabel *)label title:(NSString *)title{
    label.font=[UIFont defaultMediumFont];
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

- (IBAction)rentAction:(UIButton *)sender {
}

- (IBAction)saleAction:(UIButton *)sender {
}

- (IBAction)reviewAction:(UIButton *)sender {
    BLReviewViewController *BLReviewVC=[[BLReviewViewController alloc] init];
    [self.navigationController pushViewController:BLReviewVC animated:YES];
}

-(void)viewWillAppear:(BOOL)animated{
    self.navigationController.navigationBar.hidden=YES;
}
-(void)viewWillDisappear:(BOOL)animated{
    self.navigationController.navigationBar.hidden=NO;
}
@end
