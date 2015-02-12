//
//  BDWorkbenchController.m
//  cocoapodsDemo
//
//  Created by zyf on 15/2/9.
//  Copyright (c) 2015年 baidu. All rights reserved.
//

#import "BDWorkbenchController.h"

@interface BDWorkbenchController ()

@end

@implementation BDWorkbenchController

- (void)viewDidLoad {
    [super viewDidLoad];

    BDNewsController *newsVC = [[BDNewsController alloc]init];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)insertViewController:(UIViewController *)viewController
             witchNormalIcon:(UIImage *)normalImage
            withSelectedIcon:(UIImage *)selectedImage
                   withTitle:(NSString *)title{
    UITabBarItem *newsTabBarItem  = [[UITabBarItem alloc]initWithTitle:title image:normalImage selectedImage:selectedImage];
    UINavigationController *newsNavigationVC = [[UINavigationController alloc]initWithRootViewController:viewController];
    newsNavigationVC.tabBarItem = newsTabBarItem;
//    self setvi
}


@end
