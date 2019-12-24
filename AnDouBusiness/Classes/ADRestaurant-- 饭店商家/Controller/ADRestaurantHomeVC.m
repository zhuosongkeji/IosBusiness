//
//  ADRestaurantHomeVC.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/6.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADRestaurantHomeVC.h"
#import "ADRTCell.h"

#import "ADRTMywalletVC.h"
#import "ADRTMyNewsVC.h"
#import "ADRTShopManageVC.h"
#import "ADRTFoodsManageVC.h"
#import "ADRTCancelOrderVC.h"
#import "ADRTDoneOrderVC.h"
#import "ADRTBookingOrderVC.h"



@interface ADRestaurantHomeVC ()

@property (weak, nonatomic) IBOutlet UIView *middleView;

@end

@implementation ADRestaurantHomeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupMiddleView];
    
}


- (void)setupMiddleView
{
    self.middleView.layer.cornerRadius = 10;
    self.middleView.layer.borderColor = ADCommonBgColor.CGColor;
    self.middleView.layer.borderWidth = 1;
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ADRTCell *cell = [ADRTCell registerTableViewCellWith:tableView];
    ADWeakSelf;
    // 我的钱包点击
    cell.myWalletClickTask = ^{
        ADRTMywalletVC *vc = [[ADRTMywalletVC alloc] init];
        [weakSelf.navigationController pushViewController:vc animated:YES];
    };
    // 我的信息
    cell.newsClickTask = ^{
        ADRTMyNewsVC *vc = [[ADRTMyNewsVC alloc] init];
        [weakSelf.navigationController pushViewController:vc animated:YES];
    };
    // 店铺管理
    cell.shopManageClickTask = ^{
        ADRTShopManageVC *vc = [[ADRTShopManageVC alloc] init];
        [weakSelf.navigationController pushViewController:vc animated:YES];
    };
    // 菜品管理
    cell.goodsManageClickTask = ^{
        ADRTFoodsManageVC *vc = [[ADRTFoodsManageVC alloc] init];
        [weakSelf.navigationController pushViewController:vc animated:YES];
    };
    // 取消订单
    cell.cancelOrderClcikTask = ^{
        ADRTCancelOrderVC *vc = [[ADRTCancelOrderVC alloc] init];
        [weakSelf.navigationController pushViewController:vc animated:YES];
    };
    // 完成订单
    cell.doneOrderClickTask = ^{
        ADRTDoneOrderVC *vc = [[ADRTDoneOrderVC alloc] init];
        [weakSelf.navigationController pushViewController:vc animated:YES];
    };
    // 预约订单
    cell.bookingOrderClickTask = ^{
        ADRTBookingOrderVC *vc = [[ADRTBookingOrderVC alloc] init];
        [weakSelf.navigationController pushViewController:vc animated:YES];
    };
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 401;
}

@end
