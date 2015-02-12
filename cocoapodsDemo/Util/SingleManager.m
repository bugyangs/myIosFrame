//
//  SingleManager.m
//  cocoapodsDemo
//
//  Created by zyf on 15/2/6.
//  Copyright (c) 2015年 baidu. All rights reserved.
//

#import "SingleManager.h"

@implementation SingleManager

+ (SingleManager *)instance
{
    static SingleManager *singleManager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        singleManager = [[SingleManager alloc]init];
    });
    return singleManager;
}

@end
