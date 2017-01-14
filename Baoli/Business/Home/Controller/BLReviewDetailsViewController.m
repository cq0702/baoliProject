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
#import "UIFont+Extra.h"
@interface BLReviewDetailsViewController ()
@property (weak, nonatomic) IBOutlet UIButton *reviewBUtton;
@property (weak, nonatomic) IBOutlet UILabel *reviewLabel;
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
    
    int wide=(ScreenWidth-300-40)/2;
    UIImageView *imageView1=[[UIImageView alloc] initWithFrame:CGRectMake(20, CGRectGetMaxY(self.reviewLabel.frame)+30, 100, 100)];
    imageView1.image=[UIImage imageNamed:@"backgroud.png"];
    [self.view addSubview:imageView1];
    
    UIImageView *imageView2=[[UIImageView alloc] initWithFrame:CGRectMake(wide+100+20, CGRectGetMaxY(self.reviewLabel.frame)+30, 100, 100)];
    imageView2.image=[UIImage imageNamed:@"backgroud2.png"];
    [self.view addSubview:imageView2];
    
    UIImageView *imageView3=[[UIImageView alloc] initWithFrame:CGRectMake(wide*2+200+20, CGRectGetMaxY(self.reviewLabel.frame)+30, 100, 100)];
    imageView3.image=[UIImage imageNamed:@"backgroud.png"];
    [self.view addSubview:imageView3];
    
    UILabel *count=[[UILabel alloc] initWithFrame:CGRectMake(20, CGRectGetMaxY(imageView1.frame)+10, 100, 20)];
    [self setlabel:count title:@"评论: 0"];
    [self.view addSubview:count];
    
    UILabel *see=[[UILabel alloc] initWithFrame:CGRectMake(ScreenWidth - 100 - 20, CGRectGetMaxY(imageView1.frame)+10, 100, 20)];
    see.textAlignment=NSTextAlignmentRight;
    [self setlabel:see title:@"14人看过"];
    [self.view addSubview:see];
}
-(void)contactOwner{
    
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


- (IBAction)reviewAction:(UIButton *)sender {
    BLSendReviewViewController *BLSendReviewVC=[[BLSendReviewViewController alloc] init];
    [self.navigationController pushViewController:BLSendReviewVC animated:YES];
}
@end
