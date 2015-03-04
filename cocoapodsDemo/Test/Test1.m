//
//  Test1.m
//  cocoapodsDemo
//
//  Created by zyf on 15/3/4.
//  Copyright (c) 2015年 baidu. All rights reserved.
//

#import "Test1.h"
#import "Test2.h"
@implementation Test1

- (instancetype)init
{
    if (self = [super init]) {
        Test2 *test2 = [[Test2 alloc] init];
        _delegate = test2;
        [_delegate T1Method];
        [_delegate T2Method];
        [(Test2 *)_delegate T3Method];
    }
    return self;
}



@end
