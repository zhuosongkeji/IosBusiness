//
//  ADSHWaitAuditedVC.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/23.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//  待审核


#import "ADSHWaitAuditedVC.h"
#import "ADSHReturnMoneyOrderCellTwo.h"
#import "ADReturnMoneyDetailVC.h"

@interface ADSHWaitAuditedVC ()

@end

@implementation ADSHWaitAuditedVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
  
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ADSHReturnMoneyOrderCellTwo *cell = [ADSHReturnMoneyOrderCellTwo registerCellForTableView:tableView];
    ADWeakSelf;
    cell.orderDetailBtnClickTask = ^{
        ADReturnMoneyDetailVC *vc = [[ADReturnMoneyDetailVC alloc] init];
        [weakSelf.navigationController pushViewController:vc animated:YES];
    };
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 250;
}

@end
