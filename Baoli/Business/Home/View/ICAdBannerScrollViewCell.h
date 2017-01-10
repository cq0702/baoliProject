//
//  ICAdBannerScrollViewCell.h
//  iCarePregnant
//
//  Created by wcz on 16/4/7.
//  Copyright © 2016年 oenius. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ICAdListModel.h"
@interface ICAdBannerScrollViewCell : UICollectionViewCell

@property (nonatomic, strong) ICAdListModel *model;
@property (nonatomic,   weak) id delegate;

@end
