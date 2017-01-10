//
//  BLSendReviewViewController.m
//  Baoli
//
//  Created by Roy Chan on 17/1/10.
//  Copyright © 2017年 user. All rights reserved.
//

#import "BLSendReviewViewController.h"
#import "UIColor+Extra.h"
@interface BLSendReviewViewController ()

@end

@implementation BLSendReviewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"信用评价";
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:@"发送"
                                                                    style:UIBarButtonItemStylePlain
                                                                   target:self action:@selector(sendAction)];
    self.navigationItem.rightBarButtonItem = rightButton;
}
-(void)sendAction{
    
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
