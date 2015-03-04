//
//  BDPickerView.m
//  cocoapodsDemo
//
//  Created by zyf on 15/3/3.
//  Copyright (c) 2015年 baidu. All rights reserved.
//

#import "BDPickerView.h"

@implementation BDPickerView

- (void)awakeFromNib {
    
//    self.layer.cornerRadius = 8;
//    self.layer.masksToBounds = YES;
    _pickerView.dataSource = self;
    _pickerView.delegate = self;
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
        self.frame = CGRectMake(0, DeviceHeight - self.frame.size.height, self.frame.size.width, self.frame.size.height);
    }
    [rootViewController.view addSubview:self];
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
#pragma UIPickerViewDataSource
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}
-(NSInteger) pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return [_pickerArray count];
}
#pragma UIPickerViewDelegate
-(NSString*) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [_pickerArray objectAtIndex:row];
}
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSString *name = _pickerArray[row];
    if (_pickerSelectBlock) {
        _pickerSelectBlock(name);
    }
}

@end
