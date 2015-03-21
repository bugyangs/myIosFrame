//
//  BDTestController.m
//  cocoapodsDemo
//
//  Created by zyf on 15/3/10.
//  Copyright (c) 2015年 baidu. All rights reserved.
//

#import "BDTestController.h"
#import "ArrayDataSource.h"

@interface BDTestController ()

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *dataArray;
@property (nonatomic, strong) ArrayDataSource *dataSource;

@end

@implementation BDTestController

- (void)viewDidLoad {
    [super viewDidLoad];
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, DeviceWidth, DeviceHeight)];
    [self.view addSubview:_tableView];
    _dataArray = @[@"11111",@"11111",@"11111",@"11111"];
    _dataSource = [[ArrayDataSource alloc]initWithArray:_dataArray cellIdentifier:@"BDMineViewCell" configCellBlock:^(id cell, id item){
        BDMineViewCell *mineCell = (BDMineViewCell *)cell;
        mineCell.nameLabel.text = (NSString *)item;
    }];
    _tableView.dataSource = _dataSource;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




@end
