//
//  JLTabBarController.m
//  百思不得姐
//
//  Created by shijialong on 2016/10/27.
//  Copyright © 2016年 shijialong. All rights reserved.
//

#import "JLTabBarController.h"

@interface JLTabBarController ()

@end

@implementation JLTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    //****设置所有UITabBarItem的属性*****//
    UITabBarItem *item = [UITabBarItem appearance];
    
    //设置正常情况下字体属性
    NSMutableDictionary *normalAttrs = [NSMutableDictionary dictionary];
    normalAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    normalAttrs[NSForegroundColorAttributeName] = [UIColor grayColor];
    [item setTitleTextAttributes:normalAttrs forState:UIControlStateNormal];
    //设置选中状态下字体属性
    NSMutableDictionary *selectedAttrs = [NSMutableDictionary dictionary];
    selectedAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    selectedAttrs[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    [item setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];

    //设置子控制器
    [self setupChildVC:[[UIViewController alloc] init] withTabBarTitle:@"精华" image:@"tabBar_essence_icon" selectedImage:@"tabBar_essence_click_icon"];
    [self setupChildVC:[[UIViewController alloc] init] withTabBarTitle:@"新帖" image:@"tabBar_new_icon" selectedImage:@"tabBar_new_click_icon"];
    [self setupChildVC:[[UIViewController alloc] init] withTabBarTitle:@"关注" image:@"tabBar_friendTrends_icon" selectedImage:@"tabBar_friendTrends_click_icon"];
    [self setupChildVC:[[UIViewController alloc] init] withTabBarTitle:@"精华" image:@"tabBar_me_icon" selectedImage:@"tabBar_me_click_icon"];
}


/**
 设置子控制器

 @param vc            控制器
 @param title         标题
 @param image         图片
 @param selectedImage 选中状态下的图片
 */
- (void)setupChildVC:(UIViewController *)vc withTabBarTitle:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage {
    vc.view.backgroundColor = JLRandomColor;
    vc.tabBarItem.title = title;
    vc.tabBarItem.image = [UIImage imageNamed:image];
    vc.tabBarItem.selectedImage = [UIImage imageNamed:selectedImage];
    [self addChildViewController:vc];
}
@end
