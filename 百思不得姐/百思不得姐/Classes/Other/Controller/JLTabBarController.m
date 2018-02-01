//
//  JLTabBarController.m
//  百思不得姐
//
//  Created by shijialong on 2016/10/27.
//  Copyright © 2016年 shijialong. All rights reserved.
//

#import "JLTabBarController.h"
#import "JLTabBar.h"
#import "JLEssenceVC.h"
#import "JLFollowVC.h"
#import "JLMineVC.h"
#import "JLNewVC.h"

@interface JLTabBarController ()

@property (nonatomic, strong) UIButton *publishBtn;

@end

@implementation JLTabBarController

#pragma mark - life cycle

- (void)viewDidLoad {
    [super viewDidLoad];
    /**** 设置所有UITabBarItem的属性 ****/
    [self setupTabBarItemAttributes];
    /**** 添加子控制器 ****/
    [self addChildViewController];
    /**** 设置tabBar ****/
    [self setValue:[[JLTabBar alloc] init] forKeyPath:@"tabBar"];
}

/**
 设置所有UITabBarItem的文字属性
 */
- (void)setupTabBarItemAttributes {
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
}

/**
 添加子控制器
 */
- (void)addChildViewController {
    [self setupChildVC:[[UINavigationController alloc] initWithRootViewController:[[JLEssenceVC alloc] init]] title:@"精华" image:@"tabBar_essence_icon" selectedImage:@"tabBar_essence_click_icon"];
    [self setupChildVC:[[UINavigationController alloc] initWithRootViewController:[[JLNewVC alloc] init]] title:@"新帖" image:@"tabBar_new_icon" selectedImage:@"tabBar_new_click_icon"];
    [self setupChildVC:[[UINavigationController alloc] initWithRootViewController:[[JLFollowVC alloc] init]] title:@"关注" image:@"tabBar_friendTrends_icon" selectedImage:@"tabBar_friendTrends_click_icon"];
    [self setupChildVC:[[UINavigationController alloc] initWithRootViewController:[[JLMineVC alloc] init]] title:@"我的" image:@"tabBar_me_icon" selectedImage:@"tabBar_me_click_icon"];
}
/**
 设置子控制器

 @param vc            控制器
 @param title         标题
 @param image         图片
 @param selectedImage 选中状态下的图片
 */
- (void)setupChildVC:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage {
    vc.tabBarItem.title = title;
    if (image.length) {
        vc.tabBarItem.image = [UIImage imageNamed:image];
        vc.tabBarItem.selectedImage = [UIImage imageNamed:selectedImage];
    }
    [self addChildViewController:vc];
}


@end
