//
//  ICAdCollectionViewCell.m
//  iCarePregnant
//
//  Created by wcz on 16/3/22.
//  Copyright © 2016年 oenius. All rights reserved.
//

#import "ICAdCollectionViewCell.h"
#import "ICAdModel.h"
#import "ICDoctorTeamModel.h"
#import "ICPostImageModel.h"

@interface ICAdCollectionViewCell ()

//@property (nonatomic, strong) UIImageView *imageView;

@end

@implementation ICAdCollectionViewCell

- (UIImageView *)imageView
{
    if (_imageView == nil) {
        _imageView = [[UIImageView alloc] init];
        _imageView.contentMode = UIViewContentModeScaleAspectFit;
    }
    return _imageView;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame])
    {
        [self.contentView addSubview:self.imageView];
//        self.imageView.backgroundColor = [UIColor redColor];
        [self.imageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(@0);
        }];
        
    }
    return self;
}

- (void)setModel:(id )model
{
    
    if (model) {
        _model = model;
        
        if ([model isKindOfClass:[ICPostImageModel class]])
        {
            [self.imageView setImageWithURLText:[model attachment] placeholderImage:[UIImage imageNamed:@"icon_Placeholder"]];
            return;
        }
        
        if ([model isKindOfClass:[ICAdModel class] ]) {
            
            [self.imageView setImageWithURLText:[model advertImgUrl] placeholderImage:[UIImage imageNamed:@"icon_Placeholder"]];
        }else
        {
            [self.imageView setImageWithURLText:[model doctorImgUrl] placeholderImage:[UIImage imageNamed:@"icon_Placeholder"]];
        }
    } else
    {
        self.imageView.backgroundColor = [UIColor blueColor];
    }
   
}

@end
