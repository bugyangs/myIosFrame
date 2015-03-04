//
//  BDNewsController.m
//  cocoapodsDemo
//
//  Created by zyf on 15/2/9.
//  Copyright (c) 2015年 baidu. All rights reserved.
//

#import "BDNewsController.h"
#import "BDNewsViewCell.h"

@interface BDNewsController ()

@property (nonatomic, strong) NSMutableArray *dataArray;

@end

@implementation BDNewsController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initTableData];
    [self.tableView reloadData];
}

- (void)registerCell
{
    NSArray *cellArray = @[@"BDNewsViewCell"];
    for (NSInteger i = 0; i < cellArray.count; i++) {
        [self.tableView registerNibWithString:cellArray[i]];
    }
}

- (void)initTableData
{
    _dataArray = [[NSMutableArray alloc] init];
    for (NSInteger i = 0; i < 10; i++) {
        [_dataArray addObject:[NSString stringWithFormat:@"测试-----%ld", (long)i]];
    }
}

#pragma UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_dataArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    BDNewsViewCell *newsCell = nil;
    
    newsCell = [tableView dequeueReusableCellWithIdentifier:@"BDNewsViewCell" forIndexPath:indexPath];
    
    newsCell.nameLabel.text = _dataArray[indexPath.row];
    
    return newsCell;
}
#pragma UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 43;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}



@end
