//
//  UIBarButtonItem+JLExtension.h
//  百思不得姐
//
//  Created by shijialong on 2017/1/22.
//  Base on Tof Templates
//  Copyright © 2017年 shijialong. All rights reserved.
//

#import <UIKit/UIKit.h>

#pragma mark -
#pragma mark Category JLExtension for UIBarButtonItem 
#pragma mark -

@interface UIBarButtonItem (JLExtension)

+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action;


@end
