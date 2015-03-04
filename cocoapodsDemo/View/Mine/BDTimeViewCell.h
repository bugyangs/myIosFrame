//
//  BDTimeViewCell.h
//  cocoapodsDemo
//
//  Created by zyf on 15/3/2.
//  Copyright (c) 2015年 baidu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BDTimeViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;


@property (weak, nonatomic) IBOutlet UIButton *saveButton;
- (IBAction)saveClick:(id)sender;

@end
