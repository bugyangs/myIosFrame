//
//  BDTimeViewCell.m
//  cocoapodsDemo
//
//  Created by zyf on 15/3/2.
//  Copyright (c) 2015年 baidu. All rights reserved.
//

#import "BDTimeViewCell.h"

@implementation BDTimeViewCell

- (void)awakeFromNib {
    self.selectionStyle = UITableViewCellSelectionStyleNone;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];


}

- (IBAction)saveClick:(id)sender {
    NSDate *date = [self.datePicker date];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSString *strDate = [dateFormat stringFromDate:date];
    UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"时间提示" message:[NSString stringWithFormat:@"%@",strDate] delegate:self cancelButtonTitle:@"确定" otherButtonTitles: nil];
    [alertView show];
    
}
@end
