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
@property (weak, nonatomic) IBOutlet UIView *takePhotoView;

@end

@implementation BLSendReviewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"信用评价";
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:@"发送"
                                                                    style:UIBarButtonItemStylePlain
                                                                   target:self action:@selector(sendAction)];
    self.navigationItem.rightBarButtonItem = rightButton;
    
    UIButton *takePhoto=[UIButton buttonWithType:UIButtonTypeCustom];
    takePhoto.frame=CGRectMake(15, 15, 30, 30);
    [takePhoto setImage:[UIImage imageNamed:@"photo.png"] forState:UIControlStateNormal];
    self.takePhotoView.layer.borderWidth=1;
    self.takePhotoView.layer.borderColor = ([[UIColor lightGrayColor] CGColor]);
    [self.takePhotoView addSubview:takePhoto];
}
-(void)sendAction{
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
