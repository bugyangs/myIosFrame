//
//  BDAlertView.m
//  cocoapodsDemo
//
//  Created by zyf on 15/3/3.
//  Copyright (c) 2015年 baidu. All rights reserved.
//

#import "BDAlertView.h"

@implementation BDAlertView

- (void)awakeFromNib {
    
    self.layer.cornerRadius = 8;
    self.layer.masksToBounds = YES;
    [_okButton addTarget:self action:@selector(closeView:) forControlEvents:UIControlEventTouchUpInside];
}

-(void)show
{
    if (!_maskUIView) {
        _maskUIView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, DeviceWidth, DeviceHeight)];
        _maskUIView.backgroundColor = [UIColor colorWithRed:51/255.0 green:51/255.0 blue:51/255.0 alpha:0.3];
    }
    UIViewController *rootViewController = [UIApplication sharedApplication].delegate.window.rootViewController;
    [rootViewController.view addSubview:_maskUIView];
    //设置默认位置
    if (self.frame.origin.x == 0) {
        self.frame = CGRectMake((DeviceWidth - self.frame.size.width)/2, 150, self.frame.size.width, self.frame.size.height);
    }
    [rootViewController.view addSubview:self];
    [self.layer addAnimation:[self animation] forKey:nil];
}

-(void)closeView:(id)sender
{
    [self hidden];
}

-(void)hidden
{
    [_maskUIView removeFromSuperview];
    [self removeFromSuperview];
}

- (CAKeyframeAnimation *)animation
{
    CAKeyframeAnimation *popAnimation = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
    popAnimation.duration = 0.5;
    popAnimation.values = @[[NSValue valueWithCATransform3D:CATransform3DMakeScale(0.01f, 0.01f, 1.0f)],
                            [NSValue valueWithCATransform3D:CATransform3DMakeScale(1.1f, 1.1f, 1.0f)],
                            [NSValue valueWithCATransform3D:CATransform3DIdentity]];
    popAnimation.keyTimes = @[@0.2f, @0.5f, @0.75f];
    popAnimation.timingFunctions = @[[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut],
                                     [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut],
                                     [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    return popAnimation;
}


@end
