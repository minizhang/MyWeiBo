//
//  WBHomeViewController.m
//  weibo
//
//  Created by 张恒 on 15/11/27.
//  Copyright © 2015年 zhangheng. All rights reserved.
//

#import "WBHomeViewController.h"
#import "UIBarButtonItem+Extension.h"

@interface WBHomeViewController ()

@end

@implementation WBHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //添加左边的BarButtonItem
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImageName:@"navigationbar_friendsearch" hightLightImageName:@"navigationbar_friendsearch_highlighted" target:self action:@selector(friendSearch)];
    
    //添加右边的BarButtonItem
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithImageName:@"navigationbar_pop" hightLightImageName:@"navigationbar_pop_highlighted" target:self action:@selector(pop)];
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
