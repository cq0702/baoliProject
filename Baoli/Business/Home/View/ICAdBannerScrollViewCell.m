//
//  ICAdBannerScrollViewCell.m
//  iCarePregnant
//
//  Created by wcz on 16/4/7.
//  Copyright © 2016年 oenius. All rights reserved.
//

#import "ICAdBannerScrollViewCell.h"
#import "ICAdCollectionViewCell.h"
#import "ICAdModel.h"

@interface ICAdBannerScrollViewCell ()<UICollectionViewDataSource, UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>

@property (nonatomic, strong) UICollectionView *collectionview;
@property (nonatomic, strong) UIPageControl *pageController;
@property (nonatomic, strong) NSTimer *timer;

@end
@implementation ICAdBannerScrollViewCell

- (UIPageControl *)pageController
{
    if (_pageController == nil) {
        _pageController = [[UIPageControl alloc] init];
        //        _pageController.numberOfPages = 3;
        _pageController.currentPage = 0;
        _pageController.pageIndicatorTintColor = [UIColor grayColor];
        _pageController.currentPageIndicatorTintColor = [UIColor blackColor];
    }
    return _pageController;
}

- (NSTimer *)timer
{
    if (_timer == nil)
    {
        _timer = [NSTimer scheduledTimerWithTimeInterval:5 target:self selector:@selector(actionToBePerform) userInfo:nil repeats:YES];
        [[NSRunLoop currentRunLoop] addTimer:_timer forMode:NSRunLoopCommonModes];
    }
    return _timer;
}

- (void)actionToBePerform
{
    NSInteger index = self.collectionview.contentOffset.x / ScreenWidth;
    if (index == self.model.array.count - 1)
    {
        index = 0;
        [self.collectionview setContentOffset:CGPointMake(index *ScreenWidth, 0) animated:NO];
        self.pageController.currentPage = 0;


    } else
    {
        index = index + 1;
        [self.collectionview setContentOffset:CGPointMake(index *ScreenWidth, 0) animated:YES];
        
    }
}
- (UICollectionView *)collectionview
{
    if (_collectionview == nil) {
        UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
        flowLayout.minimumInteritemSpacing = 0;
        flowLayout.minimumLineSpacing = 0;
        flowLayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        _collectionview = [[UICollectionView alloc]initWithFrame:CGRectZero collectionViewLayout:flowLayout];
        _collectionview.dataSource = self;
        _collectionview.showsVerticalScrollIndicator = NO;
        _collectionview.showsHorizontalScrollIndicator = NO;
        _collectionview.delegate = self;
        _collectionview.pagingEnabled = YES;
        [_collectionview registerClass:[ICAdCollectionViewCell class] forCellWithReuseIdentifier:@"ICAdCollectionViewCell"];
        _collectionview.backgroundColor = [UIColor whiteColor];
    }
    return _collectionview;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame])
    {
        self.contentView.backgroundColor = [UIColor whiteColor];
        [self.contentView addSubview:self.collectionview];
        [self.collectionview mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.equalTo(@0);
        }];
        
        [self addSubview:self.pageController];
        [self.pageController mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.equalTo(@0);
            make.bottom.equalTo(@(-10));
            make.height.equalTo(@10);
        }];
        
        delay(5, ^{
            [self.timer setFireDate:[NSDate distantPast]];
        });
    }
    return self;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.model.array.count;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(ScreenWidth, ScreenWidth / 2);
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    ICAdCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"ICAdCollectionViewCell" forIndexPath:indexPath];
    cell.model = self.model.array[indexPath.row];
//    cell.backgroundColor = [UIColor redColor];
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    ICAdModel *model = self.model.array[indexPath.row];
    if ([model.clickUrl isTrimWhiteSpaceEmpty]) {
        return;
    }
    
    NSString *urlString = nil;
    
    if (model.param && ![model.param isTrimWhiteSpaceEmpty])
    {
        
        ICUserModel *userModel = [ICUserDefaults standardUserDefaults].currentUser;

        urlString = [NSString stringWithFormat:@"%@%@%ld",model.clickUrl,model.param,userModel.userId];
    } else
    {
        urlString = model.clickUrl;
    }
    [[DDRouter router]setAppInside:YES];
    [[DDRouter router]openUrl:urlString];
}

- (void)setModel:(ICAdListModel *)model
{
    _model = model;
    if (model.array.count <=1) {
        self.pageController.hidden = YES;
    } else
    {
        self.pageController.numberOfPages = model.array.count;
        self.pageController.hidden = NO;
    }
    [self.collectionview reloadData];
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    NSInteger numberPage = scrollView.contentOffset.x / ScreenWidth;
    self.pageController.currentPage = numberPage;
}

- (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView
{
    NSInteger numberPage = scrollView.contentOffset.x / ScreenWidth;
    self.pageController.currentPage = numberPage;
}
@end
