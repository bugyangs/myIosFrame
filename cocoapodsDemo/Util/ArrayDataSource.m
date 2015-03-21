//
//  ArrayDataSource.m
//  cocoapodsDemo
//
//  Created by zyf on 15/3/10.
//  Copyright (c) 2015年 baidu. All rights reserved.
//

#import "ArrayDataSource.h"
@interface ArrayDataSource()

@property (nonatomic, strong) NSArray *itemsArray;
@property (nonatomic, strong) NSString *cellIdentifier;
@property (nonatomic, copy) ConfigCellBlock configCellBlock;

@end

@implementation ArrayDataSource

- (instancetype)initWithArray:(NSArray *)array
                cellIdentifier:(NSString *)identifier
                configCellBlock:(ConfigCellBlock)block
{
    if (self = [super init]) {
        _itemsArray = array;
        _cellIdentifier = identifier;
        _configCellBlock = block;
    }
    return self;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_itemsArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView registerNibWithString:_cellIdentifier];
//    static NSString *FirstLevelCell = _cellIdentifier;
    id cell = nil;
    cell = [tableView dequeueReusableCellWithIdentifier:_cellIdentifier forIndexPath:indexPath];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:_cellIdentifier];
    }
    if (_configCellBlock) {
        _configCellBlock(cell, _itemsArray[indexPath.row]);
    }
    
    return cell;
}


@end
