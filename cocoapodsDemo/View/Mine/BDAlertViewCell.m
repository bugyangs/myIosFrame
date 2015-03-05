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
@interface BDAlertViewCell()

@property (nonatomic, strong)BDAlertView *alertView;
@property (nonatomic, strong)BDPickerView *pickerView;

@end

@implementation BDAlertViewCell

- (void)awakeFromNib {
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    _alertView = (BDAlertView *)[BDUtil nibViewWithName:@"BDAlertView"];
    _pickerView = (BDPickerView *)[BDUtil nibViewWithName:@"BDPickerView"];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

- (IBAction)normalClick:(id)sender {
    [_alertView show];
}

- (IBAction)pickerClick:(id)sender {
    
    _pickerView.pickerArray = @[@"男", @"女"];
    _pickerView.pickerSelectBlock = ^(NSString *title) {
        self.pickerLabel.text = title;
    };
    [_pickerView show];
}
@end
