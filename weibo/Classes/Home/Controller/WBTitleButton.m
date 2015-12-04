//
//  WBTitleButton.m
//  weibo
//
//  Created by 张恒 on 15/12/1.
//  Copyright © 2015年 zhangheng. All rights reserved.
//

#import "WBTitleButton.h"
#import "UIView+Frame.h"
#import "UIImage+WB.h"


@implementation WBTitleButton

- (instancetype)initWithFrame:(CGRect)frame{
    
    if (self = [super initWithFrame:frame]) {
        [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//        self.titleLabel.
        [self setBackgroundImage:[UIImage imageWithStretchableName:@"navigationbar_filter_background_highlighted"] forState:UIControlStateHighlighted];
    }
    
    return self;
}


- (void)layoutSubviews{
    [super layoutSubviews];
    
    if (self.currentImage == nil) return;
    
    self.imageView.x = CGRectGetMaxX(self.titleLabel.frame);
 
}


//重写 添加根据图片和文字大小设置控件FRAME的功能
- (void)setTitle:(NSString *)title forState:(UIControlState)state{
    [super setTitle:title forState:state];
    
    [self sizeToFit];
}

- (void)setImage:(UIImage *)image forState:(UIControlState)state{
    [super setImage:image forState:state];
    
    [self sizeToFit];
}



@end
