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
}

@end