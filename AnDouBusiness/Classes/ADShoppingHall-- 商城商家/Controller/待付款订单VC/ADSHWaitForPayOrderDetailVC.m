//
//  ADSHWaitForPayOrderDetailVC.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/19.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADSHWaitForPayOrderDetailVC.h"


#import "ADSHWaitForPayOrderDetailCell.h"
#import "ADSHChangePriceVc.h"

@interface ADSHWaitForPayOrderDetailVC ()



@end

@implementation ADSHWaitForPayOrderDetailVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = ADCommonBgColor;
    self.navigationItem.title = @"订单详情";
}




#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ADSHWaitForPayOrderDetailCell *cell = [ADSHWaitForPayOrderDetailCell registerTableViewCellWith:tableView];
    cell.changePriceBtnClickTask = ^{
        ADSHChangePriceVc *changePriceVc = [[ADSHChangePriceVc alloc] init];
        [self.navigationController pushViewController:changePriceVc animated:YES];
    };
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 455;
}


@end
