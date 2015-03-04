//
//  BDPickerView.h
//  cocoapodsDemo
//
//  Created by zyf on 15/3/3.
//  Copyright (c) 2015年 baidu. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void (^PickerSelectBlock)(NSString *title);
@interface BDPickerView : UIView<UIPickerViewDelegate, UIPickerViewDataSource>

//@property (weak, nonatomic) IBOutlet UIButton *cancelButton;
//@property (weak, nonatomic) IBOutlet UIButton *saveButton;
@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;

@property (nonatomic, strong)UIView *maskUIView;
@property (nonatomic, strong)NSArray *pickerArray;
@property (nonatomic, copy)PickerSelectBlock pickerSelectBlock;
-(void)show;
-(void)hidden;

@end
