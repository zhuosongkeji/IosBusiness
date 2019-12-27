//
//  ADRTBookingOrderVC.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/24.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADRTBookingOrderVC.h"
#import "ADRTBookingOrderCell.h"
#import "ADRTBookingOrderDetailVC.h"

@interface ADRTBookingOrderVC ()

@end

@implementation ADRTBookingOrderVC

#pragma mark -- 生命周期方法

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // 1. 创建预约订单cell
    ADRTBookingOrderCell *cell = [ADRTBookingOrderCell registerTableViewCellWith:tableView];
    ADWeakSelf;
    // 2. 点击订单详情按钮执行
    cell.orderDetailBtnClickTask = ^{
        // 3. 创建订单详情控制器
        ADRTBookingOrderDetailVC *vc = [[ADRTBookingOrderDetailVC alloc] init];
        [weakSelf.navigationController pushViewController:vc animated:YES];
    };
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 230;
}

@end
