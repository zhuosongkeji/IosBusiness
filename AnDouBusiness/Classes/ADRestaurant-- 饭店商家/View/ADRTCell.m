//
//  ADRTCell.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/24.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADRTCell.h"



@interface ADRTCell ()
/*! 预约订单 */
@property (weak, nonatomic) IBOutlet UIView *bookingOrderView;
/*! 已完成 */
@property (weak, nonatomic) IBOutlet UIView *doneOrderView;
/*! 取消订单 */
@property (weak, nonatomic) IBOutlet UIView *cancelOrderView;
/*! 商品管理 */
@property (weak, nonatomic) IBOutlet UIView *goodsManageView;
/*! 店铺管理 */
@property (weak, nonatomic) IBOutlet UIView *shopManageView;
/*! 店铺统计 */
@property (weak, nonatomic) IBOutlet UIView *shopStatisticsView;
/*! 通知信息 */
@property (weak, nonatomic) IBOutlet UIView *myNewsView;
/*! 我的信息 */
@property (weak, nonatomic) IBOutlet UIView *myWalletView;

@end

@implementation ADRTCell



- (void)awakeFromNib
{
    [super awakeFromNib];
    
    // 设置手势
    [self setupGes];
}



- (void)setupGes
{
    // 预约订单
    UITapGestureRecognizer *bookingGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(bookingOrderClick)];
    [self.bookingOrderView addGestureRecognizer:bookingGes];
    // 已完成
    UITapGestureRecognizer *doneOrderGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(doneOrderClick)];
    [self.doneOrderView addGestureRecognizer:doneOrderGes];
    // 取消订单
    UITapGestureRecognizer *cancelGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(cancelOrderClcik)];
    [self.cancelOrderView addGestureRecognizer:cancelGes];
    // 商品管理
    UITapGestureRecognizer *goodsManageGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(goodsManageClick)];
    [self.goodsManageView addGestureRecognizer:goodsManageGes];
    // 店铺管理
    UITapGestureRecognizer *shopManageGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(shopManageClick)];
    [self.shopManageView addGestureRecognizer:shopManageGes];
    // 店铺统计
    UITapGestureRecognizer *shopStatisticsGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(shopStatisticsClick)];
    [self.shopStatisticsView addGestureRecognizer:shopStatisticsGes];
    // 通知信息
    UITapGestureRecognizer *newsGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(newsClick)];
    [self.myNewsView addGestureRecognizer:newsGes];
    // 我的钱包
    UITapGestureRecognizer *myWalletGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(myWalletClick)];
    [self.myWalletView addGestureRecognizer:myWalletGes];
}



#pragma mark -- 事件监听
// 预约订单
- (void)bookingOrderClick
{
    if (self.bookingOrderClickTask) {
        self.bookingOrderClickTask();
    }
}
// 完成
- (void)doneOrderClick
{
    if (self.doneOrderClickTask) {
        self.doneOrderClickTask();
    }
}

// 取消
- (void)cancelOrderClcik
{
    if (self.cancelOrderClcikTask) {
        self.cancelOrderClcikTask();
    }
}
// 商品管理
- (void)goodsManageClick
{
    if (self.goodsManageClickTask) {
        self.goodsManageClickTask();
    }
}
// 店铺管理
- (void)shopManageClick
{
    if (self.shopManageClickTask) {
        self.shopManageClickTask();
    }
}
// 店铺统计
- (void)shopStatisticsClick
{
    if (self.shopStatisticsClickTask) {
        self.shopStatisticsClickTask();
    }
}
// 我的消息
- (void)newsClick
{
    if (self.newsClickTask) {
        self.newsClickTask();
    }
}
// 我的钱包
- (void)myWalletClick
{
    if (self.myWalletClickTask) {
        self.myWalletClickTask();
    }
}


+ (instancetype)registerTableViewCellWith:(UITableView *)tableView
{
    static NSString * const ADRTCellID = @"ADRTCellID";
    
    ADRTCell *cell = [tableView dequeueReusableCellWithIdentifier:ADRTCellID];
    if (!cell) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"ADRTCell" owner:nil options:nil].lastObject;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}

@end
