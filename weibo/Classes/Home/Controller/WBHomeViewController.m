//
//  WBHomeViewController.m
//  weibo
//
//  Created by 张恒 on 15/11/27.
//  Copyright © 2015年 zhangheng. All rights reserved.
//

#import "WBHomeViewController.h"

@interface WBHomeViewController ()

@end

@implementation WBHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
    
    cell.textLabel.text = [NSString stringWithFormat:@"Home-- %d",indexPath.row];
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UIViewController *vc = [[UIViewController alloc] init];
    vc.view.backgroundColor = [UIColor lightGrayColor];
    [self.navigationController pushViewController:vc animated:YES];
}








@end
