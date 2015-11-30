//
//  UIImage+WB.h
//  我的微博
//
//  Created by 张恒 on 15/11/24.
//  Copyright © 2015年 张恒. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (WB)

//加载原始图片，去掉系统默认的渲染功能（渲染为蓝色）
+ (instancetype)imageWithOriginalName:(NSString *)imageName;

//在给定的像素值内拉伸图片
+ (instancetype)imageWithStretchableName:(NSString *)imageName;

@end
