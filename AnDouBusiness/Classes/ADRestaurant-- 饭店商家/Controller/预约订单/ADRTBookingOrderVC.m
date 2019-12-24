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

- (void)viewDidLoad {
    [super viewDidLoad];
    
  
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ADRTBookingOrderCell *cell = [ADRTBookingOrderCell registerTableViewCellWith:tableView];
    ADWeakSelf;
    cell.orderDetailBtnClickTask = ^{
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
