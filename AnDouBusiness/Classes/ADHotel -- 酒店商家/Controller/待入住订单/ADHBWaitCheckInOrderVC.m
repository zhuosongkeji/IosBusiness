//
//  ADHBWaitCheckInOrderVC.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/23.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADHBWaitCheckInOrderVC.h"
#import "ADHBWaitCheckInCell.h"
#import "ADHBWaitCheckInDetailVC.h"

@interface ADHBWaitCheckInOrderVC ()

@end

@implementation ADHBWaitCheckInOrderVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ADHBWaitCheckInCell *cell = [ADHBWaitCheckInCell registerCellForTableView:tableView];
    ADWeakSelf;
    cell.orderDetailBtnClickTask = ^{
        ADHBWaitCheckInDetailVC *vc = [[ADHBWaitCheckInDetailVC alloc] init];
        [weakSelf.navigationController pushViewController:vc animated:YES];
    };
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 250;
}

@end
