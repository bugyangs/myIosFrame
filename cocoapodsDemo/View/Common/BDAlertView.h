//
//  BDAlertView.h
//  cocoapodsDemo
//
//  Created by zyf on 15/3/3.
//  Copyright (c) 2015年 baidu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BDAlertView : UIView

@property (weak, nonatomic) IBOutlet UIButton *okButton;

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;

@property (nonatomic,strong)UIView *maskUIView;

-(void)show;
-(void)hidden;

@end
