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
- (IBAction)buttonAction:(UIButton *)sender;


@end

@implementation BLMineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor defaultBackgroundColor];
    
    [self setConfig];
    
    [self setLabelWithButton:self.feedbackButton title:@"意见反馈" value:@""];
    [self setLabelWithButton:self.introductionButton title:@"平台简介" value:@""];
    [self setLabelWithButton:self.helpButton title:@"使用帮助" value:@""];
    [self setLabelWithButton:self.protocolButton title:@"使用协议" value:@""];
    [self setLabelWithButton:self.loginout title:@"退出登录" value:@""];

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

-(void)setLabelWithButton:(UIButton *)button title:(NSString *)title value:(NSString *)value{
    button.backgroundColor=[UIColor whiteColor];
    UILabel *titleLabel=[[UILabel alloc] initWithFrame:CGRectMake(20, 10, 100, 20)];
    [self setlabel:titleLabel title:title];
    [button addSubview:titleLabel];
    
    UILabel *valueLabel=[[UILabel alloc] initWithFrame:CGRectMake(ScreenWidth-120-34, 10, 100, 20)];
    valueLabel.textAlignment=NSTextAlignmentRight;
    [self setlabel:valueLabel title:value];
    [button addSubview:valueLabel];
    if ([title isEqualToString:@"退出登录"]) {
        
    }else{
        UIImageView *nextImage=[[UIImageView alloc] initWithFrame:CGRectMake(ScreenWidth-34, 12, 14, 16)];
        nextImage.image=[UIImage imageNamed:@"next.png"];
        [button addSubview:nextImage];
    }

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

-(void)viewWillAppear:(BOOL)animated{
    self.navigationController.navigationBar.hidden=YES;
}
-(void)viewWillDisappear:(BOOL)animated{
    self.navigationController.navigationBar.hidden=NO;
}
- (IBAction)buttonAction:(UIButton *)sender {
    BLSettingViewController *BLSettingVC=[[BLSettingViewController alloc] init];
    BLReviewViewController *BLReviewVC=[[BLReviewViewController alloc] init];
    BLMessagesViewController *BLMessagesVC=[[BLMessagesViewController alloc] init];
    BLFeedbackViewController *BLFeedbackVC=[[BLFeedbackViewController alloc] init];

    switch (sender.tag) {
        case 300://设置
            [self.navigationController pushViewController:BLSettingVC animated:YES];
            break;
        case 301://消息
            [self.navigationController pushViewController:BLMessagesVC animated:YES];
            break;
        case 302://我出租的
            
            break;
        case 303://我租到的
            
            break;
        case 304://我的信评
            [self.navigationController pushViewController:BLReviewVC animated:YES];
            break;
        case 305://意见反馈
            [self.navigationController pushViewController:BLFeedbackVC animated:YES];
            break;
        case 306://平台简介
            
            break;
        case 307://使用帮助
            
            break;
        case 308://使用协议
            
            break;
        default:
            break;
    }
}
@end
