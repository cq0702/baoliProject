//
//  BLDealDetailsViewController.m
//  Baoli
//
//  Created by Roy Chan on 2017/1/12.
//  Copyright © 2017年 user. All rights reserved.
//

#import "BLDealDetailsViewController.h"
#import "UIColor+Extra.h"
#import "UIFont+Extra.h"
#import "UIColor+Extend.h"
@interface BLDealDetailsViewController ()
{
    UIScrollView *_scrollView;
}
@end

@implementation BLDealDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"交易详情";
    self.view.backgroundColor=[UIColor defaultBackgroundColor];
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:@"联系车位主"
                                                                    style:UIBarButtonItemStylePlain
                                                                   target:self action:@selector(contactOwner)];
    self.navigationItem.rightBarButtonItem = rightButton;
    
    [self setConfig];
}
-(void)contactOwner{
    
}
-(void)setConfig{
    
    UIButton *confirmButton=[UIButton buttonWithType:UIButtonTypeCustom];
    confirmButton.frame=CGRectMake(0, ScreenHeight-40-64, ScreenWidth, 40);
    confirmButton.backgroundColor=[UIColor colorWithHexString:@"4792e5"];
    [confirmButton setTitle:@"确定租赁" forState:UIControlStateNormal];
    [confirmButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.view addSubview:confirmButton];
    
    _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, ScreenHeight-64-40)];
    _scrollView.backgroundColor=[UIColor defaultBackgroundColor];

    [self.view addSubview:_scrollView];
    UIImageView *pictureImage=[[UIImageView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, 200)];
    pictureImage.image=[UIImage imageNamed:@"ditu.png"];
    [_scrollView addSubview:pictureImage];
    
    for (int i=0; i<5; i++) {
        UIView *LabelView=[[UIView alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(pictureImage.frame)+10+41*i, ScreenWidth, 40)];
        [_scrollView addSubview:LabelView];
        switch (i) {
            case 0:
                [self setLabelWithView:LabelView title:@"车位主" value:@"陈先生"];
                break;
            case 1:
                [self setLabelWithView:LabelView title:@"所属小区" value:@"广州保利"];
                break;
            case 2:
                [self setLabelWithView:LabelView title:@"幢" value:@"C"];
                break;
            case 3:
                [self setLabelWithView:LabelView title:@"车位编号" value:@"C1220"];
                break;
            case 4:
                [self setLabelWithView:LabelView title:@"车位状态" value:@"可租赁"];
                break;
            default:
                break;
        }
    }
    
    UILabel *reviewLabel=[[UILabel alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(pictureImage.frame)+224, ScreenWidth, 40)];
    reviewLabel.backgroundColor=[UIColor whiteColor];
    reviewLabel.textAlignment=NSTextAlignmentCenter;
    [self setlabel:reviewLabel title:@"历史评论"];
    [_scrollView addSubview:reviewLabel];
    
    for (int i=0; i<3; i++) {
        UIView *reviewView=[[UIView alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(reviewLabel.frame)+100*i, ScreenWidth, 100)];
        reviewView.backgroundColor=[UIColor whiteColor];
        reviewView.tag=100+i;
        [_scrollView addSubview:reviewView];
        UIImageView *avatarImage=[[UIImageView alloc] initWithFrame:CGRectMake(10, 20, 60, 60)];
        avatarImage.image=[UIImage imageNamed:@"我.png"];
        [reviewView addSubview:avatarImage];
        UILabel *nameLabel=[[UILabel alloc] initWithFrame:CGRectMake(80, 10, 100, 20)];
        nameLabel.text=@"业主A先生";
        [reviewView addSubview:nameLabel];
        UILabel *timeLabel=[[UILabel alloc] initWithFrame:CGRectMake(ScreenWidth-110, 10, 100, 20)];
        timeLabel.textAlignment=NSTextAlignmentRight;
        [self setlabel:timeLabel title:@"2016/12/12"];
        [reviewView addSubview:timeLabel];
        for (int j=0; j<5; j++) {
            UIImageView *starImage=[[UIImageView alloc] initWithFrame:CGRectMake(80+j*25, CGRectGetMaxY(nameLabel.frame)+5, 20, 20)];
            if (j==4) {
                starImage.image=[UIImage imageNamed:@"半星选中.png"];
            }else{
                starImage.image=[UIImage imageNamed:@"选中.png"];
            }
            [reviewView addSubview:starImage];
        }
        UILabel *contentLabel=[[UILabel alloc] initWithFrame:CGRectMake(80, CGRectGetMaxY(nameLabel.frame)+30, ScreenWidth-100, 20)];
        [self setlabel:contentLabel title:@"不错不错。非常不错，下次继续，不错不错，非常不错，下次继续"];
        [reviewView addSubview:contentLabel];
        if (i==2) {
            UIView *lastView=[self.view viewWithTag:100+i];
            _scrollView.contentSize=CGSizeMake(0, CGRectGetMaxY(lastView.frame));
        }
    }
    
}
-(void)setLabelWithView:(UIView *)view title:(NSString *)title value:(NSString *)value{
    view.backgroundColor=[UIColor whiteColor];
    UILabel *titleLabel=[[UILabel alloc] initWithFrame:CGRectMake(20, 10, 100, 20)];
    [self setlabel:titleLabel title:title];
    [view addSubview:titleLabel];
    
    UILabel *valueLabel=[[UILabel alloc] initWithFrame:CGRectMake(ScreenWidth-120, 10, 100, 20)];
    valueLabel.textAlignment=NSTextAlignmentRight;
    [self setlabel:valueLabel title:value];
    [view addSubview:valueLabel];
}

-(void)setlabel:(UILabel *)label title:(NSString *)title{
    label.font=[UIFont defaultMediumFont];
    label.text=title;
    label.textColor=[UIColor defaultSubTextColor];
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
