//
//  WBTabBarController.m
//  我的微博
//
//  Created by 张恒 on 15/11/24.
//  Copyright © 2015年 张恒. All rights reserved.
//

#import "WBTabBarController.h"
#import "UIImage+WB.h"
#import "WBTabBar.h"
#import "WBHomeViewController.h"
#import "WBDiscoverViewController.h"
#import "WBProFileViewController.h"
#import "WBMessageViewController.h"

@interface WBTabBarController ()
 
@end

@implementation WBTabBarController
 
+ (void)initialize{
    //设置UITabBarItem的text被选中的时候的颜色
    UITabBarItem *item = [UITabBarItem appearanceWhenContainedIn:self, nil];
    NSMutableDictionary *att = [NSMutableDictionary dictionary];
    att[NSForegroundColorAttributeName] = [UIColor orangeColor];
    [item setTitleTextAttributes:att forState:UIControlStateSelected];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setAllChildViewController];
    
    //自定义tabBar
    
    WBTabBar *tabBar = [[WBTabBar alloc] initWithFrame:self.tabBar.frame];
    
    [self setValue:tabBar forKeyPath:@"tabBar" ];
}

//设置TabBar自控制器
- (void)setAllChildViewController{
    //  管理子控制器
    //首页
    WBHomeViewController *home = [[WBHomeViewController alloc] init];
    home.view.backgroundColor = [UIColor grayColor];
    [self setUpOneChildViewWith:home imageName:@"tabbar_home" selectedImageName:@"tabbar_home_selected" andTitle:@"首页"];
    
    //消息
    WBMessageViewController *message = [[WBMessageViewController alloc] init];
    message.view.backgroundColor = [UIColor blueColor];
    [self setUpOneChildViewWith:message imageName:@"tabbar_message_center" selectedImageName:@"tabbar_message_center_selected" andTitle:@"消息"];
    
    //发现
    WBDiscoverViewController *discover = [[WBDiscoverViewController alloc] init];
    discover.view.backgroundColor = [UIColor purpleColor];
    [self setUpOneChildViewWith:discover imageName:@"tabbar_discover" selectedImageName:@"tabbar_discover_selected" andTitle:@"发现"];
    
    //我
    WBProFileViewController *profile = [[WBProFileViewController alloc] init];
    profile.view.backgroundColor = [UIColor lightGrayColor];
    [self setUpOneChildViewWith:profile imageName:@"tabbar_profile" selectedImageName:@"tabbar_profile_selected" andTitle:@"我"];
}



- (void)setUpOneChildViewWith:(UIViewController *)vc imageName:(NSString *)image selectedImageName:(NSString *)selectedImage andTitle:(NSString *)title{
    [self addChildViewController:vc];
    vc.tabBarItem.title = title;
    vc.tabBarItem.image = [UIImage imageNamed:image];
//    vc.tabBarItem.badgeValue = @"3";
    vc.tabBarItem.selectedImage = [UIImage imageWithOriginalName:selectedImage];
}





@end
