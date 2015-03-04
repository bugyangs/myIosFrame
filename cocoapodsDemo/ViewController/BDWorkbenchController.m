//
//  BDWorkbenchController.m
//  cocoapodsDemo
//
//  Created by zyf on 15/2/9.
//  Copyright (c) 2015年 baidu. All rights reserved.
//

#import "BDWorkbenchController.h"
@interface BDWorkbenchController()

@property (nonatomic, strong) NSMutableArray *viewControllerArray;
@property (nonatomic, strong) NSArray *menuArray;

@end
@implementation BDWorkbenchController

- (void)viewDidLoad {
    [super viewDidLoad];
    _menuArray = @[@{@"class":@"BDNewsController",@"title":@"新闻",@"icon":@"",@"selectIcon":@""},
                   @{@"class":@"BDAblumController",@"title":@"相册",@"icon":@"",@"selectIcon":@""},
                   @{@"class":@"BDFilmController",@"title":@"电影",@"icon":@"",@"selectIcon":@""},
                   @{@"class":@"BDMineController",@"title":@"我的",@"icon":@"",@"selectIcon":@""},
                  ];
    [self loadMenu: _menuArray];
    self.selectedIndex = 3;
}

//通过传入字典数组生成菜单
- (void)loadMenu:(NSArray *)menuArray {
    _viewControllerArray = [[NSMutableArray alloc]init];
    for (NSInteger i = 0; i < [menuArray count]; i++) {
        NSDictionary *vcInfoDict = (NSDictionary *)menuArray[i];
        if (!vcInfoDict) {
            continue;
        }
        BDBaseViewController *viewController = [[NSClassFromString(vcInfoDict[@"class"]) alloc] init];
        UIImage *image = nil;
        if (vcInfoDict[@"icon"]) {
            image = [UIImage imageNamed:vcInfoDict[@"icon"]];
        }
        UIImage *selectedImage = nil;
        if (vcInfoDict[@"selectIcon"]) {
            selectedImage = [UIImage imageNamed:vcInfoDict[@"selectIcon"]];
        }
        viewController.title = vcInfoDict[@"title"];
        UITabBarItem *tabBarItem  = [[UITabBarItem alloc]initWithTitle:vcInfoDict[@"title"] image:image selectedImage:selectedImage];
        
        UINavigationController *navigationVC = [[UINavigationController alloc]initWithRootViewController:viewController];
        navigationVC.tabBarItem = tabBarItem;
        
        [_viewControllerArray addObject:navigationVC];
    }
    
    self.viewControllers = _viewControllerArray;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end
