//
//  UIImage+WB.m
//  我的微博
//
//  Created by 张恒 on 15/11/24.
//  Copyright © 2015年 张恒. All rights reserved.
//

#import "UIImage+WB.h"

@implementation UIImage (WB)

+ (instancetype)imageWithOriginalName:(NSString *)imageName{
    
    UIImage *image = [UIImage imageNamed:imageName];
    return [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];//取消image的选中渲染功能
}

+ (instancetype)imageWithStretchableName:(NSString *)imageName{
    UIImage *image = [UIImage imageNamed:imageName];
    
    //图片根据imageView的大小自动填充
    return [image stretchableImageWithLeftCapWidth:image.size.width * 0.5 topCapHeight:image.size.height * 0.5];
}


@end
