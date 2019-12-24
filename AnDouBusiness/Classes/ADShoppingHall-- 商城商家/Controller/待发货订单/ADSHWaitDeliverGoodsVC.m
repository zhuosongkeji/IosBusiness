//
//  ADSHWaitDeliverGoodsVC.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/21.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADSHWaitDeliverGoodsVC.h"
#import "ADSHWaitDeliverGoodsCell.h"
#import "ADSHGoDeliverGoodsVC.h"
#import "ADSHWaitDeliverGoodsDetailVC.h"

@interface ADSHWaitDeliverGoodsVC ()

@end

@implementation ADSHWaitDeliverGoodsVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ADSHWaitDeliverGoodsCell *cell = [ADSHWaitDeliverGoodsCell registerCellForTableView:tableView];
    ADWeakSelf;
    // 去发货按钮的点击
    cell.deliverGoodsBtnClickTask = ^{
        ADSHGoDeliverGoodsVC *goVc = [[ADSHGoDeliverGoodsVC alloc] init];
        [weakSelf.navigationController pushViewController:goVc animated:YES];
    };
    // 订单详情按钮的点击
    cell.orderDetailBtnClickTask = ^{
        ADSHWaitDeliverGoodsDetailVC *detailVc = [[ADSHWaitDeliverGoodsDetailVC alloc] init];
        [weakSelf.navigationController pushViewController:detailVc animated:YES];
    };
    return cell;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 250;
}

@end
