//
//  WBDiscoverViewController.m
//  weibo
//
//  Created by 张恒 on 15/11/27.
//  Copyright © 2015年 zhangheng. All rights reserved.
//

#import "WBDiscoverViewController.h"
#import "WBSearchBar.h"

@interface WBDiscoverViewController ()

@end

@implementation WBDiscoverViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //创建搜索框
    WBSearchBar * searchBar = [[WBSearchBar alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 35)];
    searchBar.placeholder = @"大家都在搜";
    
    //设置title为搜索框
    self.navigationItem.titleView = searchBar;
}



#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 0;
}


@end
