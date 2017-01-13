//
//  BLPublishViewController.m
//  Baoli
//
//  Created by Roy Chan on 2017/1/12.
//  Copyright © 2017年 user. All rights reserved.
//

#import "BLPublishViewController.h"
#import "UIColor+Extra.h"
#import "UIFont+Extra.h"
#import "EMTextView.h"
@interface BLPublishViewController ()<UITextViewDelegate,UITextFieldDelegate>
{
    EMTextView *_replayTextView;
}
@end

@implementation BLPublishViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"发布";
    self.view.backgroundColor=[UIColor defaultBackgroundColor];
    [self setConfig];
}
-(void)setConfig{
    for (int i=0; i<4; i++) {
        UIButton *infoButton=[UIButton buttonWithType:UIButtonTypeCustom];
        infoButton.frame=CGRectMake(0, 0+41*i, ScreenWidth, 40);
        [self.view addSubview:infoButton];
        switch (i) {
            case 0:
                [self setLabelWithButton:infoButton title:@"所在小区" value:@"广州保利"];
                break;
            case 1:
                [self setLabelWithButton:infoButton title:@"幢" value:@"C"];
                break;
            case 2:
                [self setLabelWithButton:infoButton title:@"车位编号" value:@"C2110"];
                break;
            case 3:
                [self setLabelWithButton:infoButton title:@"车位状态" value:@"可租赁"];
                break;
            default:
                break;
        }
    }
    UILabel *photoLabel=[[UILabel alloc] initWithFrame:CGRectMake(0, 173, ScreenWidth, 40)];
    photoLabel.backgroundColor=[UIColor whiteColor];
    photoLabel.textAlignment=NSTextAlignmentCenter;
    [self setlabel:photoLabel title:@"添加图片"];
    [self.view addSubview:photoLabel];
    
    UIView *photoView=[[UIView alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(photoLabel.frame), ScreenWidth, 70)];
    photoView.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:photoView];
    UIView *photo=[[UIView alloc] initWithFrame:CGRectMake(20, 0, 60, 60)];
    photo.layer.borderColor=[UIColor lightGrayColor].CGColor;
    photo.layer.borderWidth=1;
    [photoView addSubview:photo];
    UIButton *takePhotoButton=[UIButton buttonWithType:UIButtonTypeCustom];
    takePhotoButton.frame=CGRectMake(15, 15, 30, 30);
    [takePhotoButton setImage:[UIImage imageNamed:@"photo.png"] forState:UIControlStateNormal];
    [photo addSubview:takePhotoButton];
    
    _replayTextView=[[EMTextView alloc] init];
    _replayTextView.frame=CGRectMake(0, CGRectGetMaxY(photoView.frame)+10, ScreenWidth, 150);
    _replayTextView.layer.borderColor = ([[UIColor lightGrayColor] CGColor]);
    _replayTextView.layer.borderWidth = 0.5;
    _replayTextView.layer.cornerRadius = 3;
    _replayTextView.font = [UIFont systemFontOfSize:14.0];
    _replayTextView.backgroundColor = [UIColor whiteColor];
    _replayTextView.returnKeyType = UIReturnKeyDone;
    _replayTextView.placeholder=@"添加车位描述";
    _replayTextView.delegate = self;
    [self.view addSubview:_replayTextView];
    
    UITextField *phone=[[UITextField alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(_replayTextView.frame)+10, ScreenWidth, 30)];
    phone.backgroundColor=[UIColor whiteColor];
    phone.font=[UIFont defaultMediumFont];
    phone.placeholder=@"联系电话";
    [self.view addSubview:phone];
    
    UIButton *publishButton=[UIButton buttonWithType:UIButtonTypeCustom];
    publishButton.frame=CGRectMake(30, CGRectGetMaxY(phone.frame)+10, ScreenWidth-60, 40);
    publishButton.backgroundColor=[UIColor colorWithHexString:@"4792e5"];
    [publishButton setTitle:@"确定发布" forState:UIControlStateNormal];
    [publishButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.view addSubview:publishButton];
    
}
-(void)setLabelWithButton:(UIButton *)button title:(NSString *)title value:(NSString *)value{
    button.backgroundColor=[UIColor whiteColor];
    UILabel *titleLabel=[[UILabel alloc] initWithFrame:CGRectMake(20, 10, 100, 20)];
    [self setlabel:titleLabel title:title];
    [button addSubview:titleLabel];
    
    UILabel *valueLabel=[[UILabel alloc] initWithFrame:CGRectMake(ScreenWidth-120-34, 10, 100, 20)];
    valueLabel.textAlignment=NSTextAlignmentRight;
    [self setlabel:valueLabel title:value];
    [button addSubview:valueLabel];
    
    UIImageView *nextImage=[[UIImageView alloc] initWithFrame:CGRectMake(ScreenWidth-34, 12, 14, 16)];
    nextImage.image=[UIImage imageNamed:@"next.png"];
    [button addSubview:nextImage];
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

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    if ([text isEqualToString:@"\n"]) {
        [textView resignFirstResponder];
        return NO;
    }
    
    return YES;
}

@end
