//
//  BDBaseTableViewController.h
//  cocoapodsDemo
//
//  Created by zyf on 15/2/27.
//  Copyright (c) 2015年 baidu. All rights reserved.
//

#import "BDBaseViewController.h"

@interface BDBaseTableViewController : BDBaseViewController <UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;

@end
