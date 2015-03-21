//
//  BDAlertViewCell.h
//  cocoapodsDemo
//
//  Created by zyf on 15/3/3.
//  Copyright (c) 2015年 baidu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BDAlertViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *pickerLabel;

- (IBAction)normalClick:(id)sender;
- (IBAction)pickerClick:(id)sender;
- (IBAction)tipClick:(id)sender;
- (IBAction)httpClick:(id)sender;


@end
