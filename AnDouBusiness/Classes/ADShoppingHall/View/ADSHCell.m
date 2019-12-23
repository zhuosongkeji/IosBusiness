//
//  ADSHCell.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/19.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADSHCell.h"



@interface ADSHCell ()
/*! 待付款订单 */
@property (weak, nonatomic) IBOutlet UIView *viewCellOne;
/*! 待发货订单 */
@property (weak, nonatomic) IBOutlet UIView *viewCellTwo;
/*! 已发货 */
@property (weak, nonatomic) IBOutlet UIView *viewCellThree;
/*! 已完成 */
@property (weak, nonatomic) IBOutlet UIView *viewCellFour;
/*! 退款订单 */
@property (weak, nonatomic) IBOutlet UIView *viewCellFive;
/*! 商品管理 */
@property (weak, nonatomic) IBOutlet UIView *viewCellSix;
/*! 店铺管理 */
@property (weak, nonatomic) IBOutlet UIView *viewCellSeven;
/*! 店铺统计 */
@property (weak, nonatomic) IBOutlet UIView *viewCellEight;
/*! 通知信息 */
@property (weak, nonatomic) IBOutlet UIView *viewCellNine;
/*! 我的钱包 */
@property (weak, nonatomic) IBOutlet UIView *viewCellTen;
/*! 我的消息 */
@property (weak, nonatomic) IBOutlet UIView *myNewsView;


@end

@implementation ADSHCell


+ (instancetype)registerTableViewCellWith:(UITableView *)tableView
{
    static NSString * const ADSHCellID = @"CellSH";
    
    ADSHCell *cell = [tableView dequeueReusableCellWithIdentifier:ADSHCellID];
    if (!cell) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"ADSHCell" owner:nil options:nil].lastObject;
    }
    return cell;
}


- (void)awakeFromNib
{
    [super awakeFromNib];
    
    [self setupGes];
}
    







#pragma mark -- 手势设置

- (void)setupGes
{
    // 待付款订单
    UITapGestureRecognizer *tapGes1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(oneViewClick)];
    [self.viewCellOne addGestureRecognizer:tapGes1];
    // 店铺管理
    UITapGestureRecognizer *tapGes2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(sevenViewClick)];
    [self.viewCellSeven addGestureRecognizer:tapGes2];
    // 我的消息
    UITapGestureRecognizer *newsGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(newsCellClick)];
    [self.myNewsView addGestureRecognizer:newsGes];
    // 我的钱包
    UITapGestureRecognizer *walletGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(walletCellClick)];
    [self.viewCellTen addGestureRecognizer:walletGes];
    // 待发货订单
    UITapGestureRecognizer *waitGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(waitDeliverGoodsCellClick)];
    [self.viewCellTwo addGestureRecognizer:waitGes];
    // 已发货的点击
    UITapGestureRecognizer *doneGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(deliveGoodsDoneCellClick)];
    [self.viewCellThree addGestureRecognizer:doneGes];
    // 已完成
    UITapGestureRecognizer *orderDoneGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(orderDoneCellClick)];
    [self.viewCellFour addGestureRecognizer:orderDoneGes];
    // 退货退款
    UITapGestureRecognizer *returnGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(returnMoneyCellClick)];
    [self.viewCellFive addGestureRecognizer:returnGes];
    // 商品管理
    UITapGestureRecognizer *goodsManageGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(goodsManageCellClick)];
    [self.viewCellSix addGestureRecognizer:goodsManageGes];
    // 通知信息
    UITapGestureRecognizer *notificationGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(notificationCellClick)];
    [self.viewCellNine addGestureRecognizer:notificationGes];
}



#pragma mark -- 事件监听
// 待付款的点击
- (void)oneViewClick
{
    if (self.oneCellClickTask) {
        self.oneCellClickTask();
    }
}
// 店铺管理
- (void)sevenViewClick
{
    if (self.sevenCellClickTask) {
        self.sevenCellClickTask();
    }
}

// 我的消息
- (void)newsCellClick
{
    if (self.newsCellClickTask) {
        self.newsCellClickTask();
    }
}

// 我的钱包点击
- (void)walletCellClick
{
    if (self.MyWalletCellClickTask) {
        self.MyWalletCellClickTask();
    }
}

// 待发货订单的点击
- (void)waitDeliverGoodsCellClick
{
    if (self.waitDeliverGoodsCellClickTask) {
        self.waitDeliverGoodsCellClickTask();
    }
}

// 已发货的点击
- (void)deliveGoodsDoneCellClick
{
    if (self.deliveGoodsDoneCellClickTask) {
        self.deliveGoodsDoneCellClickTask();
    }
}

// 已完成
- (void)orderDoneCellClick
{
    if (self.orderDoneCellClickTask) {
        self.orderDoneCellClickTask();
    }
}

// 退货退款
- (void)returnMoneyCellClick
{
    if (self.returnMoneyCellClickTask) {
        self.returnMoneyCellClickTask();
    }
}

// 商品管理
- (void)goodsManageCellClick
{
    if (self.goodsManageCellClickTask) {
        self.goodsManageCellClickTask();
    }
}

// 通知信息
- (void)notificationCellClick
{
    if (self.notificationCellClickTask) {
        self.notificationCellClickTask();
    }
}

@end
