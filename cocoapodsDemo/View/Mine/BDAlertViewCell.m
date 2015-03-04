//
//  BDAlertViewCell.m
//  cocoapodsDemo
//
//  Created by zyf on 15/3/3.
//  Copyright (c) 2015年 baidu. All rights reserved.
//

#import "BDAlertViewCell.h"
#import "BDAlertView.h"
#import "BDPickerView.h"
@implementation BDAlertViewCell

- (void)awakeFromNib {
    self.selectionStyle = UITableViewCellSelectionStyleNone;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

- (IBAction)normalClick:(id)sender {
    NSArray *nibArray = [[NSBundle mainBundle] loadNibNamed:@"BDAlertView" owner:self options:nil];
    BDAlertView *alertView = (BDAlertView *)[nibArray lastObject];
    [alertView show];
}

- (IBAction)pickerClick:(id)sender {
    NSArray *nibArray = [[NSBundle mainBundle] loadNibNamed:@"BDPickerView" owner:self options:nil];
    BDPickerView *pickerView = (BDPickerView *)[nibArray lastObject];
    pickerView.pickerArray = @[@"男", @"女"];
    pickerView.pickerSelectBlock = ^(NSString *title) {
        self.pickerLabel.text = title;
    };
    [pickerView show];
}
@end
