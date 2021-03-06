//
//  WFMainTabbarViewController.m
//  AnimationDemo
//
//  Created by Jack on 2018/3/30.
//  Copyright © 2018年 Jack. All rights reserved.
//

#import "WFMainTabbarViewController.h"
#import "ViewController.h"
#import "WFProgressViewController.h"
#import "WFMainNavigationViewController.h"
#import "WFChartViewController.h"
#import "WFNavigationViewController.h"
#import "WFCardAnimationViewController.h"

@interface WFMainTabbarViewController ()

@end

@implementation WFMainTabbarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    ViewController *vc = [[ViewController alloc] init];
    vc.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemRecents tag:0];
    WFMainNavigationViewController *nav1 = [[WFMainNavigationViewController alloc] initWithRootViewController:vc];
    [self addChildViewController:nav1];
    
    WFProgressViewController *progressVC = [[WFProgressViewController alloc] init];
    progressVC.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFeatured tag:1];
    WFMainNavigationViewController *nav2 = [[WFMainNavigationViewController alloc] initWithRootViewController:progressVC];
    [self addChildViewController:nav2];
    
    WFChartViewController *chartVC = [[WFChartViewController alloc] init];
    chartVC.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemBookmarks tag:2];
    WFMainNavigationViewController *nav3 = [[WFMainNavigationViewController alloc] initWithRootViewController:chartVC];
    [self addChildViewController:nav3];
    
    WFNavigationViewController *testNavigationVC = [[WFNavigationViewController alloc] init];
    testNavigationVC.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemTopRated tag:3];
    WFMainNavigationViewController *nav4 = [[WFMainNavigationViewController alloc] initWithRootViewController:testNavigationVC];
    [self addChildViewController:nav4];
    
    WFCardAnimationViewController *gestureVC = [[WFCardAnimationViewController alloc] init];
    gestureVC.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemMore tag:4];
    WFMainNavigationViewController *nav5 = [[WFMainNavigationViewController alloc] initWithRootViewController:gestureVC];
    [self addChildViewController:nav5];
    
    NSString *string = @"asdfg";
    for (NSInteger i = string.length; i > 0; i --) {
        for (NSInteger j = 0; j <= string.length - i; j ++) {
            NSLog(@"j = %zd; i = %zd ; %@",j , i, [string substringWithRange:NSMakeRange(j, i)]);
        }
    }
}

@end
