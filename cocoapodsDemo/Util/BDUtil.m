//
//  BDUtil.m
//  cocoapodsDemo
//
//  Created by zyf on 15/3/5.
//  Copyright (c) 2015年 baidu. All rights reserved.
//

#import "BDUtil.h"

@implementation BDUtil

+ (UIView *)nibViewWithName:(NSString *)name
{
    UINib *nib = [UINib nibWithNibName:name bundle:nil];
    return (UIView *)[[nib instantiateWithOwner:nil options:nil] objectAtIndex:0];
}

@end
