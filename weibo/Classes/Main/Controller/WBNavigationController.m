//
//  WBNavigationController.m
//  weibo
//
//  Created by 张恒 on 15/11/28.
//  Copyright © 2015年 zhangheng. All rights reserved.
//

#import "WBNavigationController.h"
#import "UIBarButtonItem+Extension.h"
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
        viewController.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImageName:@"navigationbar_back" hightLightImageName:@"navigationbar_back_highlighted" target:self action:@selector(back)];
    
        viewController.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithImageName:@"navigationbar_more" hightLightImageName:@"navigationbar_more_highlighted" target:self action:@  selector(more)];
    }
    
    [super pushViewController:viewController animated:YES];
}

- (void)back{
    [self popViewControllerAnimated:YES];
}

- (void)more{
    [self popToRootViewControllerAnimated:YES];
}

@end
