//
//  JLEssenceVC.m
//  百思不得姐
//
//  Created by shijialong on 2016/11/25.
//  Copyright © 2016年 shijialong. All rights reserved.
//

#import "JLEssenceVC.h"

@interface JLEssenceVC ()

@end

@implementation JLEssenceVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"MainTagSubIcon" highImage:@"MainTagSubIconClick" target:self action:@selector(leftBarButtonItemClicked)];
}

- (void)leftBarButtonItemClicked {
    JLLogFunc;
}


@end
