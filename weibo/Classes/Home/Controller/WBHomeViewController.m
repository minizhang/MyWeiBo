//
//  WBHomeViewController.m
//  weibo
//
//  Created by 张恒 on 15/11/27.
//  Copyright © 2015年 zhangheng. All rights reserved.
//

#import "WBHomeViewController.h"
#import "UIBarButtonItem+Extension.h"
#import "WBTitleButton.h"
#import "WBCover.h"

@interface WBHomeViewController ()

@property (nonatomic, weak) WBTitleButton *titleButton;

@end

@implementation WBHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //添加左边的BarButtonItem
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImageName:@"navigationbar_friendsearch" hightLightImageName:@"navigationbar_friendsearch_highlighted" target:self action:@selector(friendSearch)];
    
    //添加右边的BarButtonItem
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithImageName:@"navigationbar_pop" hightLightImageName:@"navigationbar_pop_highlighted" target:self action:@selector(pop)];
    
    //TitleView
    WBTitleButton *titleButton = [WBTitleButton buttonWithType:UIButtonTypeCustom];
    _titleButton = titleButton;
    
    [titleButton setTitle:@"首页" forState:UIControlStateNormal];
    [titleButton setImage:[UIImage imageNamed:@"navigationbar_arrow_up"] forState:UIControlStateNormal];
    [titleButton setImage:[UIImage imageNamed:@"navigationbar_arrow_down"] forState:UIControlStateHighlighted];
    
//    titleButton.adjustsImageWhenHighlighted = NO;
    [titleButton addTarget:self action:@selector(titleClick:) forControlEvents:UIControlEventTouchUpInside];
    
    self.navigationItem.titleView = titleButton;
//    NSLog(@"frame %f",self.navigationItem.titleView.frame.size.width);
}

- (void)titleClick:(UIButton *)button{
    button.selected = !button.selected;
    [WBCover show];
}

- (void)friendSearch {
    NSLog(@"friendSearch");
}

- (void)pop {
    NSLog(@"pop");
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *ID = @"cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"Home-- %ld",(long)indexPath.row];
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UIViewController *vc = [[UIViewController alloc] init];
    vc.view.backgroundColor = [UIColor lightGrayColor];
    [self.navigationController pushViewController:vc animated:YES];
}








@end
