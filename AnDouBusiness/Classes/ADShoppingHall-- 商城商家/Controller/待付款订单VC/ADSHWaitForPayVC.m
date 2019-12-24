//
//  ADSHWaitForPayVC.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/19.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADSHWaitForPayVC.h"
#import "ADSHWaitForPayCell.h"

#import "ADSHWaitForPayOrderDetailVC.h"

@interface ADSHWaitForPayVC ()

@end

@implementation ADSHWaitForPayVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"待付款订单";
    
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 9;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ADSHWaitForPayCell *cell = [ADSHWaitForPayCell registerTableViewCellWith:tableView];
    ADWeakSelf;
    cell.orderDetailBtnClickTask = ^{
        ADSHWaitForPayOrderDetailVC *detailVc = [[ADSHWaitForPayOrderDetailVC alloc] init];
        [weakSelf.navigationController pushViewController:detailVc animated:YES];
    };
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 250;
}




@end
