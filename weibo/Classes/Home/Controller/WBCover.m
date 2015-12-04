//
//  WBCover.m
//  weibo
//
//  Created by 张恒 on 15/12/1.
//  Copyright © 2015年 zhangheng. All rights reserved.
//

#import "WBCover.h"

@implementation WBCover

- (void)setDimBackground:(BOOL)dimBackground{
    _dimBackground = dimBackground;
    if (dimBackground) {
        self.backgroundColor = [UIColor blackColor];
        self.alpha = 0.5;
    }else{
        self.backgroundColor = [UIColor clearColor];
        self.alpha = 1;
    }
}

//显示蒙板
+ (instancetype)show{
    WBCover * cover = [[WBCover alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    cover.backgroundColor = [UIColor clearColor];//默认蒙板是透明的
    
    [[UIApplication sharedApplication].keyWindow addSubview:cover];
    
    return cover;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self removeFromSuperview];
    
    //通知代理一处菜单
    if ([_delegate respondsToSelector:@selector(coverDidClickCover:)]) {
       
        [_delegate coverDidClickCover:self];
    }
}



@end
