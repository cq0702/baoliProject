//
//  BLSetInfoViewController.m
//  Baoli
//
//  Created by Roy Chan on 2017/1/15.
//  Copyright © 2017年 user. All rights reserved.
//

#import "BLSetInfoViewController.h"

@interface BLSetInfoViewController ()
@property (weak, nonatomic) IBOutlet UITextField *infoTextField;

@end

@implementation BLSetInfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if ([self.title isEqualToString:@"昵称"]) {
        self.infoTextField.placeholder=@"请输入你的昵称";
    }else if ([self.title isEqualToString:@"性别"]){
        self.infoTextField.placeholder=@"请输入你的性别";
    }else if ([self.title isEqualToString:@"生日"]){
        self.infoTextField.placeholder=@"请输入你的生日";
    }else if ([self.title isEqualToString:@"签名"]){
        self.infoTextField.placeholder=@"请输入你的签名";
    }else if ([self.title isEqualToString:@"手机号码"]){
        self.infoTextField.placeholder=@"请输入你的手机号码";
    }else if ([self.title isEqualToString:@"所在小区"]){
        self.infoTextField.placeholder=@"请输入你的小区";
    }
    

    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
