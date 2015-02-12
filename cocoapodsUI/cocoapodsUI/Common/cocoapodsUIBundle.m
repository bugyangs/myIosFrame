//
//  cocoapodsUIBundle.m
//  cocoapodsUI
//
//  Created by zyf on 15/2/5.
//  Copyright (c) 2015年 baidu. All rights reserved.
//

#import "cocoapodsUIBundle.h"

@implementation cocoapodsUIBundle

+ (NSBundle*)resourcesBundle
{
    static dispatch_once_t onceToken;
    static NSBundle *myLibraryResourcesBundle = nil;
    dispatch_once(&onceToken, ^{
        NSString *bundleName = NSStringFromClass([self class]);
        myLibraryResourcesBundle = [NSBundle bundleWithURL:[[NSBundle mainBundle] URLForResource:bundleName withExtension:@"bundle"]];
    });
    return myLibraryResourcesBundle;
}

+ (UIImage*)imageNamed:(NSString*)name
{
    UIImage *imageFromMainBundle = [UIImage imageNamed:name];
    if (imageFromMainBundle) {
        return imageFromMainBundle;
    }
    
    if (![name hasSuffix:@"png"]) {
        name = [name stringByAppendingString:@"@2x.png"];
    }
    
    NSString *fullPath = [[[[self class] resourcesBundle] resourcePath] stringByAppendingPathComponent:name];
    
    UIImage *imageFromMyLibraryBundle = [UIImage imageWithContentsOfFile:fullPath];
    return imageFromMyLibraryBundle;
}

+ (UINib *)nibWithName:(NSString *)name
{
    NSBundle *bundle = [[self class] resourcesBundle];
    UINib *nib = [UINib nibWithNibName:name bundle:bundle];
    //UINib *nib = [UINib nibWithNibName:name bundle:[NSBundle libraryResourcesBundle]];
    return nib;
}

+ (UIView *)uiviewWithName:(NSString *)name
{
    NSBundle *bundle = [[self class] resourcesBundle];
    UINib *nib = [UINib nibWithNibName:name bundle:bundle];
    UIView *uiview = [[nib instantiateWithOwner:nil options:nil] objectAtIndex:0];
    
    return uiview;
}

@end
