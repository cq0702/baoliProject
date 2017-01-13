//
//  BLParkingViewController.m
//  Baoli
//
//  Created by Roy Chan on 17/1/10.
//  Copyright © 2017年 user. All rights reserved.
//

#import "BLParkingViewController.h"
#import "BLParkingCell.h"
#import "BLDealDetailsViewController.h"
@interface BLParkingViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    UITableView *_tableView;
    NSMutableArray *_dataArray;
}
@end

@implementation BLParkingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"车位";
    UISearchBar *searchBar=[[UISearchBar alloc] initWithFrame:CGRectMake(20, 10, ScreenWidth-40, 40)];
    searchBar.placeholder=@"搜索";
    [self.view addSubview:searchBar];
    _dataArray=[[NSMutableArray alloc] init];
    [self createTableView];
}
-(void)createTableView
{
    _tableView=[[UITableView alloc] initWithFrame:CGRectMake(0, 60, ScreenWidth, ScreenHeight-60) style:UITableViewStylePlain];
    _tableView.backgroundColor=[UIColor colorWithRed:241/255.0f green:241/255.0f blue:241/255.0f alpha:1];
    _tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight;
    _tableView.dataSource=self;
    _tableView.delegate=self;
//    _tableView.separatorStyle=UITableViewCellSeparatorStyleNone;
    
    [self.view addSubview:_tableView];
    if ([_tableView respondsToSelector:@selector(setSeparatorInset:)]) {
        [_tableView setSeparatorInset:UIEdgeInsetsZero];
    }
    if ([_tableView respondsToSelector:@selector(setLayoutMargins:)]) {
        [_tableView setLayoutMargins:UIEdgeInsetsZero];
    }
}
#pragma mark - Table view delegate

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identify = @"BLParkingCell";
    BLParkingCell *cell = [tableView dequeueReusableCellWithIdentifier:identify];
    if (!cell) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"BLParkingCell" owner:nil options:nil] firstObject];
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


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    BLDealDetailsViewController *BLDealDetailsVC=[[BLDealDetailsViewController alloc] init];
    [self.navigationController pushViewController:BLDealDetailsVC animated:YES];
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
