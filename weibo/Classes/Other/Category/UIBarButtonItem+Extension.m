//
//  UIBarButtonItem+Extension.m
//  weibo
//
//  Created by 张恒 on 15/11/30.
//  Copyright © 2015年 zhangheng. All rights reserved.
//

#import "UIBarButtonItem+Extension.h"

@implementation UIBarButtonItem (Extension)
+ (UIBarButtonItem *)itemWithImageName:(NSString *)imageName hightLightImageName:(NSString *)hightLightImageName target:(id)target action:(SEL)action{
    
    UIButton *button = [[UIButton alloc] init];
    [button setBackgroundImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:hightLightImageName] forState:UIControlStateHighlighted];
    
    [button sizeToFit];
    
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return [[UIBarButtonItem alloc] initWithCustomView:button];
}
@end
