//
//  BDBaseTableViewController.m
//  cocoapodsDemo
//
//  Created by zyf on 15/2/27.
//  Copyright (c) 2015年 baidu. All rights reserved.
//

#import "BDBaseTableViewController.h"

@interface BDBaseTableViewController ()

@end

@implementation BDBaseTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)setupListView
{
    
}

#pragma UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return nil;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
