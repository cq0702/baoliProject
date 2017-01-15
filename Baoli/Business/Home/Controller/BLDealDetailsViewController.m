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
#import "BLDealDetailsCell.h"
@interface BLDealDetailsViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    UITableView *_tableView;
    UIScrollView *_scrollerView;
    NSMutableArray *_dataArray;
    
}
@end

@implementation BLDealDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"交易详情";
    self.view.backgroundColor=[UIColor defaultBackgroundColor];
    _dataArray=[[NSMutableArray alloc] init];
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
    
    _tableView=[[UITableView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, ScreenHeight-40) style:UITableViewStylePlain];
    _tableView.backgroundColor=[UIColor defaultBackgroundColor];
    _tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
    _tableView.tag=180;
    _tableView.dataSource=self;
    _tableView.delegate=self;
    _tableView.separatorStyle=UITableViewCellSeparatorStyleNone;
    _tableView.tableHeaderView=[self viewWithHeaderView];
    [self.view addSubview:_tableView];
    
}
-(UIView *)viewWithHeaderView{
    UIView *headerView=[[UIView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, 464)];
    UIImageView *pictureImage=[[UIImageView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, 200)];
    pictureImage.image=[UIImage imageNamed:@"ditu.png"];
    [headerView addSubview:pictureImage];
    for (int i=0; i<5; i++) {
        UIView *LabelView=[[UIView alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(pictureImage.frame)+10+41*i, ScreenWidth, 40)];
        [headerView addSubview:LabelView];
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
    UILabel *reviewLabel=[[UILabel alloc] initWithFrame:CGRectMake(0, 424, ScreenWidth, 40)];
    [self setlabel:reviewLabel title:@"历史评论"];
    reviewLabel.backgroundColor=[UIColor whiteColor];
    reviewLabel.textAlignment=NSTextAlignmentCenter;
    [headerView addSubview:reviewLabel];
    return headerView;
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

#pragma mark - Table view delegate

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identify = @"BLDealDetailsCell";
    BLDealDetailsCell *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"BLDealDetailsCell" owner:nil options:nil] firstObject];
    }
    
    return cell;
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}

@end
