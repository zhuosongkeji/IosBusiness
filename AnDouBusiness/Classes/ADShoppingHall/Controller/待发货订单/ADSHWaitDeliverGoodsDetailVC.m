//
//  ADSHWaitDeliverGoodsDetailVC.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/21.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADSHWaitDeliverGoodsDetailVC.h"
#import "ADSHWaitDeliverGoodsDetailCell.h"
#import "ADSHGoDeliverGoodsVC.h"

@interface ADSHWaitDeliverGoodsDetailVC ()

@end

@implementation ADSHWaitDeliverGoodsDetailVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
}

#pragma mark - Table view data source



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ADSHWaitDeliverGoodsDetailCell *cell = [ADSHWaitDeliverGoodsDetailCell registerCellForTableView:tableView];
    ADWeakSelf;
    // 跳转到去付款页面
    cell.deliveGoodsBtnClickTask = ^{
        ADSHGoDeliverGoodsVC *goVc = [[ADSHGoDeliverGoodsVC alloc] init];
        [weakSelf.navigationController pushViewController:goVc animated:YES];
    };
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 617;
}
@end
