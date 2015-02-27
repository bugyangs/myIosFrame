//
//  BDRootViewController.m
//  cocoapodsDemo
//
//  Created by zyf on 15/2/9.
//  Copyright (c) 2015年 baidu. All rights reserved.
//

#import "BDRootViewController.h"

@interface BDRootViewController ()

@end

@implementation BDRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initRootView];
}

- (void)initTest
{
    __block int i = 1024;
    int j = 1;
    NSLog(@"--------");
    void (^tBlock)(void);
    
    tBlock = ^{
        NSLog(@"-----%d-----%d", i, j);
    };
    i++;
    j++;
    tBlock();
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
    // Dispose of any resources that can be recreated.
}


@end
