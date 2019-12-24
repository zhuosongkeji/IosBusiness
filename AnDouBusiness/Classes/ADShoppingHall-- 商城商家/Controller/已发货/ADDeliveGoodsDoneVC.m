//
//  ADDeliveGoodsDoneVC.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/21.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADDeliveGoodsDoneVC.h"
#import "ADDeliveGoodsDoneCell.h"
#import "ADDeliveGoodsDoneDetailVC.h"

@interface ADDeliveGoodsDoneVC ()

@end

@implementation ADDeliveGoodsDoneVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = ADCommonBgColor;
}

#pragma mark - Table view data source



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 9;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ADDeliveGoodsDoneCell *cell = [ADDeliveGoodsDoneCell registerCellForTableView:tableView];
    ADWeakSelf;
    // 跳到订单详情界面
    cell.orderDetailBtnClickTask = ^{
        ADDeliveGoodsDoneDetailVC *vc = [[ADDeliveGoodsDoneDetailVC alloc] init];
        [weakSelf.navigationController pushViewController:vc animated:YES];
    };
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 250;
}

@end
