//
//  ADSHShopStatisticsVC.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/26.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADSHShopStatisticsVC.h"
#import "ADStatisticsViewOne.h"
#import "ADStatisticsViewTwo.h"

@interface ADSHShopStatisticsVC ()
/*! 年按钮 */
@property (weak, nonatomic) IBOutlet UIButton *yearBtn;
/*! 月按钮 */
@property (weak, nonatomic) IBOutlet UIButton *monthBtn;
/*! 周按钮 */
@property (weak, nonatomic) IBOutlet UIButton *weekBtn;
/*! 上面的统计视图 */
@property (weak, nonatomic) IBOutlet UIView *StatisticsViewTop;
/*! 底部的统计视图 */
@property (weak, nonatomic) IBOutlet UIView *StatisticsViewBottom;
/*! 总订单 */
@property (weak, nonatomic) IBOutlet UILabel *totalOrderLabel;
/*! 总金额 */
@property (weak, nonatomic) IBOutlet UILabel *totalMoney;
/*! 总订单的背景视图 */
@property (weak, nonatomic) IBOutlet UIView *totalOrderView;
/*! 总金额的背景视图 */
@property (weak, nonatomic) IBOutlet UIView *totalMoneyView;

@end

@implementation ADSHShopStatisticsVC

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    // 设置视图的圆角
    self.totalOrderView.layer.cornerRadius = 10;
    self.totalMoneyView.layer.cornerRadius = 10;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // 设置按钮的布局
    [self setupButtons];
    // 绘制统计视图
    [self setupBarChart];
    
}

- (void)setupButtons
{
    [self.yearBtn layoutButtonWithEdgeInsetsStyle:TYButtonEdgeInsetsStyleRight imageTitleSpace:5];
    [self.monthBtn layoutButtonWithEdgeInsetsStyle:TYButtonEdgeInsetsStyleRight imageTitleSpace:5];
    [self.weekBtn layoutButtonWithEdgeInsetsStyle:TYButtonEdgeInsetsStyleRight imageTitleSpace:5];
}

- (void)setupBarChart
{
    ADStatisticsViewOne *oneView = [[ADStatisticsViewOne alloc] init];
    [self.StatisticsViewTop addSubview:oneView];
    
    ADStatisticsViewTwo *twoView = [[ADStatisticsViewTwo alloc] init];
    [self.StatisticsViewBottom addSubview:twoView];
}


@end
