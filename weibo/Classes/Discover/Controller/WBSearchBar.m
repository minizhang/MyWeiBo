//
//  WBSearchBar.m
//  weibo
//
//  Created by 张恒 on 15/11/30.
//  Copyright © 2015年 zhangheng. All rights reserved.
//

#import "WBSearchBar.h"
#import "UIImage+WB.h"
#import "UIView+Frame.h"

@implementation WBSearchBar

- (instancetype)initWithFrame:(CGRect)frame{
    
    if (self = [super initWithFrame:frame]) {
        self.font = [UIFont systemFontOfSize:13];
        //设置searchBar的背景图片，拉伸
        self.background = [UIImage imageWithStretchableName:@"searchbar_textfield_background"];
        
        //设置左边的图片
        // initWithImage:默认UIImageView的尺寸跟图片一样
        UIImageView * imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"searchbar_textfield_search_icon"]];
        self.leftView = imageView;
        imageView.width += 10;
        imageView.contentMode = UIViewContentModeCenter;
        
        //必须设置leftViewMode 否则leftView不会显示
        self.leftViewMode = UITextFieldViewModeAlways;
    }
    return self;
}

@end
