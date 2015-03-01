//
//  UITableView+Register.m
//  cocoapodsDemo
//
//  Created by zyf on 15/2/28.
//  Copyright (c) 2015年 baidu. All rights reserved.
//

#import "UITableView+Register.h"

@implementation UITableView (Register)

- (void)registerNibWithString:(NSString *)classString
{
    UINib *nib = [UINib nibWithNibName:classString bundle:nil];
    [self registerNib:nib forCellReuseIdentifier:classString];
}


@end
