//
//  WBNavigationController.m
//  weibo
//
//  Created by 张恒 on 15/11/28.
//  Copyright © 2015年 zhangheng. All rights reserved.
//

#import "WBNavigationController.h"

@interface WBNavigationController ()

@end

@implementation WBNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    
    if (self.viewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    
    [super pushViewController:viewController animated:YES];
}

@end
