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

- (void)test
{
    NSLog(@"333333333333");
    dispatch_source_t source = dispatch_source_create(DISPATCH_SOURCE_TYPE_DATA_ADD, 0, 0, dispatch_get_main_queue());
    dispatch_source_set_event_handler(source, ^{
        //        NSLog(@"-------------%ld----------",dispatch_source_get_data(source));
        dispatch_sync(dispatch_get_main_queue(), ^{
            NSLog(@"dddddddddd");
        });
    });
    dispatch_resume(source);
    //    int i = 0;
    //    while (i < 100) {
    //        dispatch_source_merge_data(source, 1);
    //    }
    
    dispatch_sync(dispatch_get_main_queue(), ^{
        dispatch_source_merge_data(source, 1); //通知队列
        NSLog(@"eeeeeeeeeeeeeeeee");
        NSLog(@"eeeeeeeeeeeeeeeee");
    });
}


@end
