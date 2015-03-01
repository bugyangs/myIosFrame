//
//  BDAblumController.m
//  cocoapodsDemo
//
//  Created by zyf on 15/2/9.
//  Copyright (c) 2015年 baidu. All rights reserved.
//

#import "BDAblumController.h"

@interface BDAblumController ()

@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic) dispatch_source_t source;

@end

@implementation BDAblumController

static NSInteger mark = 0;

- (void)viewDidLoad {
    [super viewDidLoad];

    [self initUI];
    [self dispatchTest];
}

- (void)initUI
{
    _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 100, 200, 50)];
    _titleLabel.text = @"显示：";
    [self.view addSubview:_titleLabel];
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(10, 250, 100, 70)];
    button.backgroundColor = [UIColor redColor];
    [button setTitle:@"点击测试" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(testClick:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
}

- (void)dispatchTest
{
    __weak typeof(self) weakSelf = self;
    _source = dispatch_source_create(DISPATCH_SOURCE_TYPE_DATA_ADD, 0, 0, dispatch_get_main_queue());
    dispatch_source_set_event_handler(_source , ^{
        [weakSelf increaseProgress:dispatch_source_get_data(_source)];
    });
    dispatch_resume(_source);
    
    void (^block)(void) = ^(void){
        // 合并数据
        dispatch_source_merge_data(_source, 1);
    };
    
    NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(updateProgress:) userInfo:block repeats:YES];
    [timer fire];
}

- (void)updateProgress:(NSTimer *)timer
{
    if (timer.userInfo) {
        void(^block)(void) = timer.userInfo;
        block();
    }
}

- (void)increaseProgress:(unsigned long)newSize
{
    static unsigned long progress = 0;
    NSLog(@"dispatch_source_get_data------%ld",newSize);
    progress += newSize;
    NSLog(@"progress %lu%%", progress);
}

- (void)testClick:(id)sender
{
//    dispatch_apply(5, dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^(size_t index) {
//        dispatch_source_merge_data(_source, 1);
//    });
//    dispatch_async(dispatch_get_global_queue(0, 0), ^{
//        dispatch_source_merge_data(_source, 1);
//    });
//    dispatch_async(dispatch_get_global_queue(0, 0), ^{
//        dispatch_source_merge_data(_source, 1);
//    });
//    dispatch_async(dispatch_get_global_queue(0, 0), ^{
//        dispatch_source_merge_data(_source, 1);
//    });
    for (NSInteger i = 0; i < 5; i++) {
        dispatch_source_merge_data(_source, 1);
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
