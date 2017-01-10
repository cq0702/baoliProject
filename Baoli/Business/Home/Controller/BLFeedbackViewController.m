//
//  BLFeedbackViewController.m
//  Baoli
//
//  Created by Roy Chan on 17/1/9.
//  Copyright © 2017年 user. All rights reserved.
//

#import "BLFeedbackViewController.h"
#import "UIColor+Extra.h"
@interface BLFeedbackViewController ()

@end

@implementation BLFeedbackViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"意见反馈";
    self.view.backgroundColor=[UIColor defaultBackgroundColor];
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
