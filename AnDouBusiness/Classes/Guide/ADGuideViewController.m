//
//  ADGuideViewController.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/4.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADGuideViewController.h"
#import "ADRestaurantHomeVC.h"
#import "ADShoppingMallBusinessViewController.h"
#import <POP.h>
#import "ADHotelBusinessViewController.h"



@interface ADGuideViewController ()

/**  标语 */
@property (weak, nonatomic) UIImageView *sloganView;
/** 动画时间 */
@property (nonatomic, strong) NSArray *times;
/** 按钮个数 */
@property (strong, nonatomic) NSMutableArray *buttons;


@end

@implementation ADGuideViewController

- (NSMutableArray *)buttons
{
    if (!_buttons) {
        _buttons = [NSMutableArray array];
    }
    return _buttons;
}

- (NSArray *)times
{
    if (!_times) {
        CGFloat interval = 0.1; //时间间隔
        _times = @[@(5 * interval),
                   @(4 * interval),
                   @(3 * interval),
                   @(2 * interval)];
                   }
    return _times;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 禁止交互
    self.view.userInteractionEnabled = NO;
    
    // 标语
    [self setupSloganView];
    
    // 按钮
    [self setupButtons];
   
}
- (void)setupSloganView
{
    CGFloat sloganY = ADScreenH * 0.2;
    // 标语
    UIImageView *sloganView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"app_slogan"]];
    sloganView.ad_y = sloganY - ADScreenH;
    sloganView.ad_centerX = ADScreenW * 0.5;
    [self.view addSubview:sloganView];
    self.sloganView = sloganView;
    
    ADWeakSelf;
    // 动画
    POPSpringAnimation *anim = [POPSpringAnimation animationWithPropertyNamed:kPOPLayerPositionY];
    anim.toValue = @(sloganY);
    anim.springSpeed = 10;
    anim.springBounciness = 10;
    anim.beginTime = CACurrentMediaTime() + [self.times.lastObject doubleValue];
    [anim setCompletionBlock:^(POPAnimation *anim, BOOL finished) {
        weakSelf.view.userInteractionEnabled= YES;
    }];
    [sloganView.layer pop_addAnimation:anim forKey:nil];
}

- (void)setupButtons
{
    // 按钮
    // 数据
    NSArray *titles = @[@"商城商家中心", @"酒店商家中心", @"饭店商家中心",];
    // 一些参数
    NSInteger count = titles.count;
    NSInteger maxColsCount = 3; // 一行的列数
    NSInteger rowsCount = (count + maxColsCount - 1) / maxColsCount;
    // 按钮的尺寸
    CGFloat buttonW = ADScreenW / maxColsCount;
    CGFloat buttonH = buttonW * 0.85;
    CGFloat buttonStartY = (ADScreenH - rowsCount * buttonH) * 0.5;
    
    for (int i = 0; i < count; i++) {
        // 创建
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.ad_width = -1;
        [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.buttons addObject:button];
        [self.view addSubview:button];
        // frame
        CGFloat buttonX = (i % maxColsCount) * buttonW;
        CGFloat buttonY = buttonStartY + (i / maxColsCount) * buttonH;
        button.frame = CGRectMake(buttonX, buttonY, buttonW, buttonH);
        // 内容
        [button setTitle:titles[i] forState:UIControlStateNormal];
        [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        // 动画
        POPSpringAnimation *anim = [POPSpringAnimation animationWithPropertyNamed:kPOPViewFrame];
        anim.fromValue = [NSValue valueWithCGRect:CGRectMake(buttonX, buttonY - ADScreenH, buttonW, buttonH)];
        anim.toValue = [NSValue valueWithCGRect:CGRectMake(buttonX, buttonY, buttonW, buttonH)];
        anim.springSpeed = 10;
        anim.springBounciness = 10;
        // CACurrentMediaTime()获得的是当前时间
        anim.beginTime = CACurrentMediaTime() + [self.times[i] doubleValue];
        [button pop_addAnimation:anim forKey:nil];
    }
}

- (void)buttonClick:(UIButton *)button
{
    
        // 按钮索引
        NSInteger index = [self.buttons indexOfObject:button];
        switch (index) {
            case 2: {
                // 饭店中心
                ADRestaurantHomeVC *reVC = [[ADRestaurantHomeVC alloc] init];
                [self.navigationController pushViewController:reVC animated:YES];
                break;
            }
            case 0: {
                // 商城中新
                ADShoppingMallBusinessViewController *shopVc = [[ADShoppingMallBusinessViewController alloc] init];
                [self.navigationController pushViewController:shopVc animated:YES];
                break;
            }
                
            case 1: {
                ADHotelBusinessViewController *htBv = [[ADHotelBusinessViewController alloc] init];
                [self.navigationController pushViewController:htBv animated:YES];
            }
                break;
        }
    
    
}

#pragma mark - 退出动画
- (void)exit:(void(^)(void))tast
{
    // 禁止按钮的交互
    self.view.userInteractionEnabled = NO;
    // 让按钮执行动画
    for (int i = 0; i < self.buttons.count; i++) {
//        UIButton *button = self.buttons[i];
//        POPBasicAnimation *anim = [POPBasicAnimation animationWithPropertyNamed:kPOPLayerPositionY];
//        anim.toValue = @(button.layer.position.y + 0);
//        anim.beginTime = CACurrentMediaTime() + [self.times[i] doubleValue];
//        [button.layer pop_addAnimation:anim forKey:nil];
    }
    ADWeakSelf;
    // 让标题执行动画
    POPBasicAnimation *anim = [POPBasicAnimation animationWithPropertyNamed:kPOPLayerPositionY];
    anim.toValue = @(self.sloganView.layer.position.y + ADScreenH);
    anim.beginTime = CACurrentMediaTime() + [self.times.lastObject doubleValue];
    [anim setCompletionBlock:^(POPAnimation *anim, BOOL finished) {
//        [weakSelf dismissViewControllerAnimated:NO completion:nil];
        !tast ? : tast();
    }];
    [self.sloganView.layer pop_addAnimation:anim forKey:nil];
}



- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self exit:nil];
}




@end
