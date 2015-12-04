//
//  WBCover.h
//  weibo
//
//  Created by 张恒 on 15/12/1.
//  Copyright © 2015年 zhangheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WBCover;
@protocol WBCoverDelegate <NSObject>

@optional
- (void)coverDidClickCover:(WBCover *)cover;

@end

@interface WBCover : UIView

/**
 *显示蒙板
 */
+ (instancetype)show;

@property (nonatomic, assign) BOOL dimBackground;

@property (nonatomic, weak)id<WBCoverDelegate> delegate;

@end
