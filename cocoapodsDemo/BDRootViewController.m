//
//  BDRootViewController.m
//  cocoapodsDemo
//
//  Created by zyf on 15/2/9.
//  Copyright (c) 2015年 baidu. All rights reserved.
//

#import "BDRootViewController.h"
#import "Test1.h"
#import "Test2.h"
@interface BDRootViewController ()

@end

@implementation BDRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initRootView];
//    [self initTest];
}

- (void)initTest
{
//    Test1 *t1 = [[Test1 alloc]init];
    
    
//    __block NSInteger i = 10;
//    NSInteger j = 20;
//    
//    void (^testBlock)(void) = ^{
//        NSLog(@"-------%ld---------%ld", (long)i, (long)j);
//    };
//    i = 100;
//    j = 200;
//    testBlock();
//    
//    void (^copyBlock)(void) = [testBlock copy];
//    copyBlock();
}

- (void)initRootView
{
    BDWorkbenchController *workbenchController = [[BDWorkbenchController alloc]init];
    [self addChildViewController:workbenchController];
    [self.view addSubview: workbenchController.view];
    
    _workbenchController = workbenchController;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
