//
//  UIBarButtonItem+Extension.h
//  weibo
//
//  Created by 张恒 on 15/11/30.
//  Copyright © 2015年 zhangheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extension)

+ (UIBarButtonItem *)itemWithImageName:(NSString *)imageName hightLightImageName:(NSString *)hightLightImageName target:(id)target action:(SEL)action;

@end
