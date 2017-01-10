//
//  BLReviewViewController.m
//  Baoli
//
//  Created by Roy Chan on 17/1/10.
//  Copyright © 2017年 user. All rights reserved.
//

#import "BLReviewViewController.h"
#import "UIColor+Extra.h"
#import "BLReviewCell.h"
#import "BLReviewDetailsViewController.h"
@interface BLReviewViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    UITableView *_tableView;
    NSMutableArray *_dataArray;
}
@end

@implementation BLReviewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"我的信评";
    self.view.backgroundColor=[UIColor defaultBackgroundColor];
    UISearchBar *searchBar=[[UISearchBar alloc] initWithFrame:CGRectMake(20, 10, ScreenWidth-40, 40)];
    searchBar.placeholder=@"搜索";
    [self.view addSubview:searchBar];
    
    _dataArray=[[NSMutableArray alloc] init];
    [self createTableView];
    
}

-(void)createTableView
{
    _tableView=[[UITableView alloc] initWithFrame:CGRectMake(20, 60, ScreenWidth-40, ScreenHeight-49) style:UITableViewStyleGrouped];
    CGRect frame=CGRectMake(0, 0, 0, CGFLOAT_MIN);
    _tableView.tableHeaderView=[[UIView alloc] initWithFrame:frame];
    _tableView.backgroundColor=[UIColor colorWithRed:241/255.0f green:241/255.0f blue:241/255.0f alpha:1];
    _tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
    _tableView.dataSource=self;
    _tableView.delegate=self;
    _tableView.separatorStyle=UITableViewCellSeparatorStyleNone;
    
    [self.view addSubview:_tableView];
    if ([_tableView respondsToSelector:@selector(setSeparatorInset:)]) {
        [_tableView setSeparatorInset:UIEdgeInsetsZero];
    }
    if ([_tableView respondsToSelector:@selector(setLayoutMargins:)]) {
        [_tableView setLayoutMargins:UIEdgeInsetsZero];
    }
}
#pragma mark - Table view delegate

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 4;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identify = @"BLReviewCell";
    BLReviewCell *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"BLReviewCell" owner:nil options:nil] firstObject];
    }
    return cell;
    
}
- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    if ([cell respondsToSelector:@selector(setSeparatorInset:)]) {
        [cell setSeparatorInset:UIEdgeInsetsZero];
    }
    if ([cell respondsToSelector:@selector(setLayoutMargins:)]) {
        [cell setLayoutMargins:UIEdgeInsetsZero];
    }
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UIView *view=[[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 10)];
    view.backgroundColor=[UIColor defaultBackgroundColor];
    return view;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0.01f;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    BLReviewDetailsViewController *BLReviewDetailsVC=[[BLReviewDetailsViewController alloc] init];
    [self.navigationController pushViewController:BLReviewDetailsVC animated:YES];
    
}

@end
