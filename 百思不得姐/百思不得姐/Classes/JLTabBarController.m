//
//  JLTabBarController.m
//  百思不得姐
//
//  Created by shijialong on 2016/10/27.
//  Copyright © 2016年 shijialong. All rights reserved.
//

#import "JLTabBarController.h"
#import "JLViewController.h"

@interface JLTabBarController ()

@property (nonatomic, strong) UIButton *publishBtn;

@end

@implementation JLTabBarController

#pragma mark - life cycle

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

    /***设置子控制器*****/
    [self setupChildVC:[[UIViewController alloc] init] withTabBarTitle:@"精华" image:@"tabBar_essence_icon" selectedImage:@"tabBar_essence_click_icon"];
    [self setupChildVC:[[UIViewController alloc] init] withTabBarTitle:@"新帖" image:@"tabBar_new_icon" selectedImage:@"tabBar_new_click_icon"];
    //设置中间占位控制器
    [self setupChildVC:[[UIViewController alloc] init] withTabBarTitle:nil image:nil selectedImage:nil];
    [self setupChildVC:[[UIViewController alloc] init] withTabBarTitle:@"关注" image:@"tabBar_friendTrends_icon" selectedImage:@"tabBar_friendTrends_click_icon"];
    [self setupChildVC:[[UIViewController alloc] init] withTabBarTitle:@"精华" image:@"tabBar_me_icon" selectedImage:@"tabBar_me_click_icon"];
}

/**
 *  为什么要在viewWillAppear:方法中添加发布按钮?
 *  当viewWillAppear:方法被调用的时候, tabBar内部已经添加了5个UITabBarButton
 *  就可以实现一个效果 : [发布按钮]盖在其他UITabBarButton上面
 */
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tabBar addSubview:self.publishBtn];
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

#pragma mark - events

- (void)publishBtnClicked:(UIButton *)publishBtn {
    JLViewController *testVC = [[JLViewController alloc] init];
    [self presentViewController:testVC animated:YES completion:nil];
}
#pragma mark - 懒加载

- (UIButton *)publishBtn {
    if (!_publishBtn) {
        _publishBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_publishBtn setImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [_publishBtn setImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateHighlighted];
        _publishBtn.frame = CGRectMake(0, 0, self.tabBar.frame.size.width / 5, self.tabBar.frame.size.height);
        _publishBtn.center = CGPointMake(self.tabBar.frame.size.width * 0.5, self.tabBar.frame.size.height * 0.5);
        [_publishBtn addTarget:self action:@selector(publishBtnClicked:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _publishBtn;
}

@end
