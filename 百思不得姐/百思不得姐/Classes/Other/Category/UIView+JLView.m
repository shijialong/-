//
//  UIView+JLView.m
//  百思不得姐
//
//  Created by shijialong on 2016/11/4.
//  Copyright © 2016年 shijialong. All rights reserved.
//

#import "UIView+JLView.h"

@implementation UIView (JLView)

- (CGFloat)jl_width {
    return self.frame.size.width;
}

- (CGFloat)jl_height {
    return self.frame.size.height;
}

- (CGFloat)jl_x {
    return self.frame.origin.x;
}

- (CGFloat)jl_y {
    return self.frame.origin.y;
}

- (CGFloat)jl_centerX {
    return self.center.x;
}

- (CGFloat)jl_centerY {
    return self.center.y;
}

- (CGFloat)jl_top {
    return CGRectGetMinY(self.frame);
}

- (CGFloat)jl_bottom {
    return CGRectGetMaxY(self.frame);
}

- (CGFloat)jl_left {
    return CGRectGetMinX(self.frame);
}
- (CGFloat)jl_right {
    return CGRectGetMaxX(self.frame);
}


- (void)setJl_width:(CGFloat)jl_width {
    CGRect frame = self.frame;
    frame.size.width = jl_width;
    self.frame = frame;
}

- (void)setJl_height:(CGFloat)jl_height {
    CGRect frame = self.frame;
    frame.size.height = jl_height;
    self.frame = frame;
}

- (void)setJl_x:(CGFloat)jl_x {
    CGRect frame = self.frame;
    frame.origin.x = jl_x;
    self.frame = frame;
}

- (void)setJl_y:(CGFloat)jl_y {
    CGRect frame = self.frame;
    frame.origin.x = jl_y;
    self.frame = frame;
}

- (void)setJl_centerX:(CGFloat)jl_centerX {
    CGPoint center = self.center;
    center.x = jl_centerX;
    self.center = center;
}

- (void)setJl_centerY:(CGFloat)jl_centerY {
    CGPoint center = self.center;
    center.y = jl_centerY;
    self.center = center;
}

- (void)setJl_right:(CGFloat)jl_right {
    self.jl_x = jl_right - self.jl_width;
}

- (void)setJl_bottom:(CGFloat)jl_bottom {
    self.jl_y = jl_bottom - self.jl_height;
}

@end


