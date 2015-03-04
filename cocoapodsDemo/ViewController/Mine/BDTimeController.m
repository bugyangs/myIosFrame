//
//  BDTimeController.m
//  cocoapodsDemo
//
//  Created by zyf on 15/3/2.
//  Copyright (c) 2015年 baidu. All rights reserved.
//

#import "BDTimeController.h"
#import "BDTimeViewCell.h"

@interface BDTimeController ()

@property (nonatomic, strong)NSArray *menuArray;

@end

@implementation BDTimeController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initData];
}

- (void)registerCell
{
    NSArray *cellArray = @[@"BDTimeViewCell"];
    for (NSInteger i = 0; i < [cellArray count]; i++) {
        [self.tableView registerNibWithString:cellArray[i]];
    }
}

- (void)initData
{

}

#pragma UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    BDTimeViewCell *cell = nil;
    cell = [tableView dequeueReusableCellWithIdentifier:@"BDTimeViewCell" forIndexPath:indexPath];

    return cell;
}

#pragma UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if (indexPath.row == 0) {
        
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return DeviceHeight;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
