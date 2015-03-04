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
    [self setupListView];
    [self registerCell];
}

- (void)registerCell
{
    
}

- (void)setupListView
{
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, DeviceWidth, DeviceHeight)];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
//    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    UIView *v = [[UIView alloc] initWithFrame:CGRectZero];
    [self.tableView setTableFooterView:v];
    [self.view addSubview:self.tableView];
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
