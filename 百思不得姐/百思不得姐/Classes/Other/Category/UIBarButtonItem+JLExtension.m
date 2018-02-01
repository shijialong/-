//
//  UIBarButtonItem+JLExtension.m
//  百思不得姐
//
//  Created by shijialong on 2017/1/22.
//  Base on Tof Templates
//  Copyright © 2017年 shijialong. All rights reserved.
//

#import "UIBarButtonItem+JLExtension.h"

#pragma mark -
#pragma mark Category JLExtension for UIBarButtonItem 
#pragma mark -

@implementation UIBarButtonItem (JLExtension)

+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [button sizeToFit];
    return [[self alloc] initWithCustomView:button];
}

@end
