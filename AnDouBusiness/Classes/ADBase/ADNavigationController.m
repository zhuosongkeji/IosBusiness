//
//  ADNavigationController.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/23.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADNavigationController.h"
#import "ADNavigationBar.h"

@interface ADNavigationController () <UIGestureRecognizerDelegate>

@property (nonatomic, weak) UIImageView *imgView;

@end

@implementation ADNavigationController


#pragma mark - 初始化方法

// 在这里用自己的navBar替换系统的
- (instancetype)initWithRootViewController:(UIViewController *)rootViewController
{
    if (self = [super initWithRootViewController:rootViewController]) {
        [self setValue:[[ADNavigationBar alloc] init] forKeyPath:@"navigationBar"];
    }
    return self;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.interactivePopGestureRecognizer.delegate = self;
    
}


/**
 * 拦截所有push进来的子控制器
 * @param viewController 每一次push进来的子控制器
 */
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.childViewControllers.count >= 1) {
        UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
//        [backButton setTitle:@"返回" forState:UIControlStateNormal];
//        [backButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//        [backButton setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
        [backButton setImage:[UIImage imageNamed:@"icon_back"] forState:UIControlStateNormal];
        [backButton setImage:[UIImage imageNamed:@"icon_back"] forState:UIControlStateHighlighted];
        [backButton sizeToFit];
        [backButton addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
        backButton.contentEdgeInsets = UIEdgeInsetsMake(0, -20, 0, 0);
        viewController.navigationItem.leftBarButtonItem  = [[UIBarButtonItem alloc] initWithCustomView:backButton];
        viewController.hidesBottomBarWhenPushed = YES;
    }
    
    [super pushViewController:viewController animated:animated];
}


- (void)back
{
    [self popViewControllerAnimated:YES];
}

#pragma mark - <UIGestureRecognizerDelegate>
- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
    return self.childViewControllers.count > 1;
}


@end
