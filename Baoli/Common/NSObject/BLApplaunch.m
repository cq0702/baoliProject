


//
//  BLApplaunch.m
//  Baoli
//
//  Created by user on 17/1/3.
//  Copyright © 2017年 user. All rights reserved.
//

#import "BLApplaunch.h"
#import "BLTableViewController.h"
#import "UIColor+Extra.h"
#import "BLRegisterViewController.h"
#import "BLNavigationController.h"

static BLApplaunch *shareInstance;

@implementation BLApplaunch


+ (instancetype)launcher
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shareInstance = [[BLApplaunch alloc] init];
        [self setBaseConfigure];
    });
    return shareInstance;
}

- (UIViewController *)rootViewController
{
    BLRegisterViewController *controller = [[BLRegisterViewController alloc] init];
    BLNavigationController *nav = [[BLNavigationController alloc] initWithRootViewController:controller];
    return nav;
}

+ (void)setBaseConfigure
{
    [[UINavigationBar appearance] setBarTintColor:[UIColor defaultMainColor]];
    [[UINavigationBar appearance]setTranslucent:NO];
    [UINavigationBar appearance].backIndicatorTransitionMaskImage = [[UIImage imageNamed:@"icon_nav_back"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [UINavigationBar appearance].backIndicatorImage = [[UIImage imageNamed:@"icon_nav_back"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [[UIBarButtonItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor defaultTitleColor],NSFontAttributeName:[UIFont systemFontOfSize:15]} forState:UIControlStateNormal];
    [[UINavigationBar appearance] setBackgroundImage:[[UIImage alloc] init] forBarMetrics:UIBarMetricsDefault];
    [[UINavigationBar appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor defaultTitleColor]}];
    [[UINavigationBar appearance] setShadowImage:[[UIImage alloc] init]];
    [[UIBarButtonItem appearance] setBackButtonTitlePositionAdjustment:UIOffsetMake(0, -60) forBarMetrics:UIBarMetricsDefault];

}


@end
