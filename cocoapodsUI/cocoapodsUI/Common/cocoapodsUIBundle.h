//
//  cocoapodsUIBundle.h
//  cocoapodsUI
//
//  Created by zyf on 15/2/5.
//  Copyright (c) 2015年 baidu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface cocoapodsUIBundle : NSObject
+ (NSBundle*)resourcesBundle;
+ (UIImage*)imageNamed:(NSString*)name;
+ (UINib *)nibWithName:(NSString *)name;
+ (UIView *)uiviewWithName:(NSString *)name;




@end
