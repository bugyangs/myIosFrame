//
//  Test1.h
//  cocoapodsDemo
//
//  Created by zyf on 15/3/4.
//  Copyright (c) 2015年 baidu. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol TestDelegate

@required
- (void)T1Method;

@optional
- (void)T2Method;


@end


@interface Test1 : NSObject

@property (nonatomic) id<TestDelegate> delegate;

@end
