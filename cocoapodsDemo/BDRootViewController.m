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
    
    [self initTest];
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
    self.view = workbenchController.view;
    
    _workbenchController = workbenchController;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
