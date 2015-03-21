//
//  BDMineController.m
//  cocoapodsDemo
//
//  Created by zyf on 15/2/9.
//  Copyright (c) 2015年 baidu. All rights reserved.
//

#import "BDMineController.h"
#import "BDTimeController.h"
#import "BDAlertController.h"
#import "BDTestController.h"
@interface BDMineController ()

@property (nonatomic, strong)NSArray *menuArray;

@end

@implementation BDMineController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initData];
}

- (void)registerCell
{
    NSArray *cellArray = @[@"BDMineViewCell"];
    for (NSInteger i = 0; i < [cellArray count]; i++) {
        [self.tableView registerNibWithString:cellArray[i]];
    }
}

- (void)initData
{
    _menuArray = @[@"时间",@"弹窗",@"测试"];
}

#pragma UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_menuArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    BDMineViewCell *cell = nil;
    cell = [tableView dequeueReusableCellWithIdentifier:@"BDMineViewCell" forIndexPath:indexPath];
    cell.nameLabel.text = _menuArray[indexPath.row];
    return cell;
}

#pragma UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if (indexPath.row == 0) {
        BDTimeController *timeController = [[BDTimeController alloc] init];
        [timeController setHidesBottomBarWhenPushed:YES];
        [self.navigationController pushViewController:timeController animated:YES];
    }
    else if (indexPath.row == 1) {
        BDAlertController *alertController = [[BDAlertController alloc] init];
        [alertController setHidesBottomBarWhenPushed:YES];
        [self.navigationController pushViewController:alertController animated:YES];
    }
    else if (indexPath.row == 2) {
        
        BDTestController *testController = [[BDTestController alloc] init];
        [testController setHidesBottomBarWhenPushed:YES];
        [self.navigationController pushViewController:testController animated:YES];
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 43;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
