//
//  ADRTBookingOrderDetailVC.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/24.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADRTBookingOrderDetailVC.h"

#import "ADRTBookingOrderDetailCell.h"
#import "ADRTBookingOrderDetailHeader.h"
#import "ADRTBookingOrderDetailFooter.h"
#import "ADRTBookingOrderCellSectionFooter.h"


@interface ADRTBookingOrderDetailVC ()

@property (nonatomic, weak) ADRTBookingOrderDetailHeader *headerV;
@property (nonatomic, weak) ADRTBookingOrderDetailFooter *footerV;
@property (nonatomic, strong) ADRTBookingOrderCellSectionFooter *secFooterV;

@end

@implementation ADRTBookingOrderDetailVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = ADCommonBgColor;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.navigationItem.title = @"订单详情";
    
    [self setupUI];
   
}


- (void)setupUI
{
    // 头部视图
    ADRTBookingOrderDetailHeader *headV = [ADRTBookingOrderDetailHeader ad_viewFromXib];
    headV.ad_height = 390;
    self.tableView.tableHeaderView = headV;
    self.headerV = headV;
    // 尾部视图
    ADRTBookingOrderDetailFooter *footV = [ADRTBookingOrderDetailFooter ad_viewFromXib];
    footV.ad_height = 250;
    self.tableView.tableFooterView = footV;
    self.footerV = footV;
    // 组尾视图
    // -- > 尾部加载更多按钮的点击
    ADRTBookingOrderCellSectionFooter *secFooterV = [ADRTBookingOrderCellSectionFooter ad_viewFromXib];
    secFooterV.moreBtnClickTask = ^(UIButton * _Nonnull moreBtn) {
        NSLog(@"你点击了更多按钮");
    };
    self.secFooterV = secFooterV;
}

#pragma mark - Table view data source



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ADRTBookingOrderDetailCell *cell = [ADRTBookingOrderDetailCell registerTableViewCellWith:tableView];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 90;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    return self.secFooterV;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 50;
}

@end
