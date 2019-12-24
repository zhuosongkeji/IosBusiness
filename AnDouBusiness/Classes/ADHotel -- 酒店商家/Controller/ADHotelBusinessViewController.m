//
//  ADHotelBusinessViewController.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/4.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADHotelBusinessViewController.h"
#import "ADHBCell.h"

#import "ADHBMyWalletVC.h"
#import "ADSBMyNewsVC.h"
#import "ADHBShopManageVC.h"
#import "ADGoodsManageVC.h"
#import "ADCancelOrderVC.h"
#import "ADHBWaitCheckInOrderVC.h"
#import "ADHBDoneOrderVC.h"

@interface ADHotelBusinessViewController ()

@property (weak, nonatomic) IBOutlet UIView *middleView;

@end

@implementation ADHotelBusinessViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = ADCommonBgColor;
    
    [self setupMiddleView];
}


- (void)setupMiddleView
{
    self.middleView.layer.cornerRadius = 15;
    self.middleView.layer.borderWidth = 1;
    self.middleView.layer.borderColor = ADCommonBgColor.CGColor;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ADHBCell *cell =[ADHBCell registerTableViewCellWith:tableView];
    // 我的钱包点击
    ADWeakSelf;
    cell.myWalletClickTask = ^{
        ADHBMyWalletVC *vc = [[ADHBMyWalletVC alloc] init];
        [weakSelf.navigationController pushViewController:vc animated:YES];
    };
    // 我的通知
    cell.newsClickTask = ^{
        ADSBMyNewsVC *vc = [[ADSBMyNewsVC alloc] init];
        [weakSelf.navigationController pushViewController:vc animated:YES];
    };
    // 店铺管理
    cell.shopManageClickTask = ^{
        ADHBShopManageVC *vc = [[ADHBShopManageVC alloc] init];
        [weakSelf.navigationController pushViewController:vc animated:YES];
    };
    // 商品管理
    cell.goodsManageClickTask = ^{
        ADGoodsManageVC *vc = [[ADGoodsManageVC alloc] init];
        [weakSelf.navigationController pushViewController:vc animated:YES];
    };
    // 已取消订单
    cell.cancelGesTask = ^{
        ADCancelOrderVC *vc = [[ADCancelOrderVC alloc] init];
        [weakSelf.navigationController pushViewController:vc animated:YES];
    };
    // 待入住订单
    cell.waitCheckInCellClickTask = ^{
        ADHBWaitCheckInOrderVC *vc = [[ADHBWaitCheckInOrderVC alloc] init];
        [weakSelf.navigationController pushViewController:vc animated:YES];
    };
    // 已完成订单
    cell.doneCellClickTask = ^{
        ADHBDoneOrderVC *vc = [[ADHBDoneOrderVC alloc] init];
        [weakSelf.navigationController pushViewController:vc animated:YES];
    };
    // 扫一扫
//    cell.scanCellClickTask = ^{
//
//    };
    // 店铺统计
//    cell.shopStatisticsClickTask = ^{
//        
//    };
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 452;
}

@end
