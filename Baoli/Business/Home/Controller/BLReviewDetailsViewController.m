//
//  BLReviewDetailsViewController.m
//  Baoli
//
//  Created by Roy Chan on 17/1/10.
//  Copyright © 2017年 user. All rights reserved.
//

#import "BLReviewDetailsViewController.h"
#import "UIColor+Extra.h"
#import "BLSendReviewViewController.h"
@interface BLReviewDetailsViewController ()
@property (weak, nonatomic) IBOutlet UIButton *reviewBUtton;
- (IBAction)reviewAction:(UIButton *)sender;

@end

@implementation BLReviewDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"信评详情";
    self.view.backgroundColor=[UIColor defaultBackgroundColor];
    self.reviewBUtton.layer.cornerRadius=6;
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:@"联系业主"
                                                                    style:UIBarButtonItemStylePlain
                                                                   target:self action:@selector(contactOwner)];
    self.navigationItem.rightBarButtonItem = rightButton;
}
-(void)contactOwner{
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)reviewAction:(UIButton *)sender {
    BLSendReviewViewController *BLSendReviewVC=[[BLSendReviewViewController alloc] init];
    [self.navigationController pushViewController:BLSendReviewVC animated:YES];
}
@end
