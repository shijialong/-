//
//  JLTabBar.m
//  百思不得姐
//
//  Created by shijialong on 2016/11/2.
//  Copyright © 2016年 shijialong. All rights reserved.
//

#import "JLTabBar.h"


@interface JLTabBar ()

@property (nonatomic, weak) UIButton *publishBtn;

@end


@implementation JLTabBar

#pragma mark - 初始化
//重新布局子控件
- (void)layoutSubviews {
    [super layoutSubviews];
    //按钮位置
    CGFloat buttonW = self.frame.size.width / 5.0;
    CGFloat buttonH = self.frame.size.height;
    //按钮索引
    NSInteger buttonIndex = 0;
    for (UIView *subview in self.subviews) {
        //过滤掉非 UITabBarButton
        if (subview.class != NSClassFromString(@"UITabBarButton") ) {
            continue;
        }
        CGFloat buttonX = buttonIndex * buttonW;
        if (buttonIndex >= 2) {
            buttonX += buttonW;
        }
        subview.frame = CGRectMake(buttonX, 0, buttonW, buttonH);
        //增加索引
        buttonIndex++;
    }
    //设置中间的发布按钮
    self.publishBtn.frame = CGRectMake(0, 0, buttonW, buttonH);
    self.publishBtn.center = CGPointMake(self.frame.size.width * 0.5, self.frame.size.height * 0.5);
}


#pragma mark - events

- (void)publishBtnClicked:(UIButton *)publishBtn {
    JLLogFunc;
}

#pragma mark - 懒加载
- (UIButton *)publishBtn {
    if (!_publishBtn) {
        UIButton *publishBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [publishBtn setImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [publishBtn setImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateHighlighted];
        [publishBtn addTarget:self action:@selector(publishBtnClicked:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:publishBtn];
        _publishBtn = publishBtn;
    }
    return _publishBtn;
}

@end
