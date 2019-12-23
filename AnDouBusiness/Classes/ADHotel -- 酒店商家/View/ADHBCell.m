//
//  ADHBCell.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/23.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADHBCell.h"


@interface ADHBCell ()

/*! 扫一扫 */
@property (weak, nonatomic) IBOutlet UIView *scanView;
/*! 待入住 */
@property (weak, nonatomic) IBOutlet UIView *waitCheckInView;
/*! 已完成订单 */
@property (weak, nonatomic) IBOutlet UIView *doneOrderView;
/*! 已取消订单 */
@property (weak, nonatomic) IBOutlet UIView *cancelOrderView;
/*! 商品管理 */
@property (weak, nonatomic) IBOutlet UIView *goodsManageView;
/*! 店铺管理 */
@property (weak, nonatomic) IBOutlet UIView *shopManageView;
/*! 店铺统计 */
@property (weak, nonatomic) IBOutlet UIView *shopStatisticsView;
/*! 通知信息 */
@property (weak, nonatomic) IBOutlet UIView *myNewsView;
/*! 我的钱包 */
@property (weak, nonatomic) IBOutlet UIView *myWalletView;

@end

@implementation ADHBCell



- (void)awakeFromNib
{
    [super awakeFromNib];
    // 设置手势
    [self setupGes];
}




- (void)setupGes
{
    // 扫一扫
    UITapGestureRecognizer *scanGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(scanCellClick)];
    [self.scanView addGestureRecognizer:scanGes];
    // 待入住
    UITapGestureRecognizer *waitCheckInGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(waitCheckInCellClick)];
    [self.waitCheckInView addGestureRecognizer:waitCheckInGes];
    // 已完成
    UITapGestureRecognizer *doneGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(doneCellClick)];
    [self.doneOrderView addGestureRecognizer:doneGes];
    // 已取消
    UITapGestureRecognizer *cancelGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(cancelGes)];
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


- (void)scanCellClick
{
    if (self.scanCellClickTask) {
        self.cancelGesTask();
    }
}

- (void)waitCheckInCellClick
{
    if (self.waitCheckInCellClickTask) {
        self.waitCheckInCellClickTask();
    }
}

- (void)doneCellClick
{
    if (self.doneCellClickTask) {
        self.doneCellClickTask();
    }
}
- (void)cancelGes
{
    if (self.cancelGesTask) {
        self.cancelGesTask();
    }
}
- (void)goodsManageClick
{
    if (self.goodsManageClickTask) {
        self.goodsManageClickTask();
    }
}
- (void)shopManageClick
{
    if (self.shopManageClickTask) {
        self.shopManageClickTask();
    }
}
- (void)shopStatisticsClick
{
    if (self.shopStatisticsClickTask) {
        self.shopStatisticsClickTask();
    }
}
- (void)newsClick
{
    if (self.newsClickTask) {
        self.newsClickTask();
    }
}
- (void)myWalletClick
{
    if (self.myWalletClickTask) {
        self.myWalletClickTask();
    }
}


+ (instancetype)registerTableViewCellWith:(UITableView *)tableView
{
    static NSString * const ADHBCellID = @"ADHBCellID";
    
    ADHBCell *cell = [tableView dequeueReusableCellWithIdentifier:ADHBCellID];
    if (!cell) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"ADHBCell" owner:nil options:nil].lastObject;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}

@end
