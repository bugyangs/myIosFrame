//
//  BDDb.m
//  BDZyfModel
//
//  Created by zyf on 15/3/17.
//  Copyright (c) 2015年 zyf. All rights reserved.
//

#import "BDDb.h"
@interface BDDb()
@end

@implementation BDDb

+ (BDDb *)instance {
    static dispatch_once_t once;
    static BDDb *db = nil;
    dispatch_once(&once, ^{
        db = [[BDDb alloc]init];

    });
    return db;
}

- (void)setupDatabase {
	
}
@end
