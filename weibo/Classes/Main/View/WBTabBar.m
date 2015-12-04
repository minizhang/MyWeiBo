//
//  WBTabBar.m
//  我的微博
//
//  Created by 张恒 on 15/11/26.
//  Copyright © 2015年 张恒. All rights reserved.
//

#import "WBTabBar.h"

@interface WBTabBar ()

@property (nonatomic, weak)UIButton * centerButton;

@end

@implementation WBTabBar


//通过懒加载，让空间只创建一次
- (UIButton *)centerButton{
    if (!_centerButton) {
        UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setImage:[UIImage imageNamed:@"tabbar_compose_icon_add"] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:@"tabbar_compose_background_icon_add"] forState:UIControlStateHighlighted];
        [btn setBackgroundImage:[UIImage imageNamed:@"tabbar_compose_button"] forState:UIControlStateNormal];
        [btn setBackgroundImage:[UIImage imageNamed:@"tabbar_compose_button_highlighted"] forState:UIControlStateNormal];
        _centerButton = btn;
        
        //根据图片大小，设置按钮的大小
        [btn sizeToFit];
         
        [self addSubview:_centerButton];
    }
    return  _centerButton;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    
    CGFloat x = 0;
    CGFloat y = 0;
    CGFloat width = self.bounds.size.width / (self.items.count + 1);
    CGFloat hight = self.bounds.size.height;
    int i = 0;
    
    for (UIView * tabBarButton in self.subviews) {
        if ([tabBarButton isKindOfClass:NSClassFromString(@"UITabBarButton")]) {
            if (i == 2) {
                i++;
            }
            x = width * i;
            tabBarButton.frame = CGRectMake(x, y, width, hight);
            i++;
        }
    }
    
    self.centerButton.center = CGPointMake(self.bounds.size.width * 0.5, self.bounds.size.height * 0.5);
    
}

@end
