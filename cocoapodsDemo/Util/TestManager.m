//
//  TestManager.m
//  cocoapodsDemo
//
//  Created by zyf on 15/2/9.
//  Copyright (c) 2015年 baidu. All rights reserved.
//

#import "TestManager.h"
typedef void (^NetWorkBlock)(NSDictionary *result);
typedef void (^NetworkReuqestCompletionBlock)(NSDictionary *result);
@implementation TestManager

+ (TestManager *)sharedInstance
{
    static TestManager *manager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[TestManager alloc]init];
    });
    return manager;
}

- (void)testBlock
{
    __block int i_param = 5;
    int j_param = 10;
    void (^testPlusBlock)(int i,int j) = ^(int i,int j){
        printf("---%d,---%d", i_param, j_param);
    };
    testPlusBlock(0,0);
}

@end






