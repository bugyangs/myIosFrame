//
//  ArrayDataSource.h
//  cocoapodsDemo
//
//  Created by zyf on 15/3/10.
//  Copyright (c) 2015年 baidu. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^ConfigCellBlock)(id, id);

@interface ArrayDataSource : NSObject<UITableViewDataSource>

- (instancetype)initWithArray:(NSArray *)array
               cellIdentifier:(NSString *)identifier
              configCellBlock:(ConfigCellBlock)block;

@end
