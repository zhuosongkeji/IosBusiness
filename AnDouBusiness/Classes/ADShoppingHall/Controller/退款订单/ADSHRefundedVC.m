//
//  ADSHRefundedVC.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/23.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADSHRefundedVC.h"
#import "ADSHReturnMoneyOrderCellOne.h"
#import "ADWaitExamineVC.h"
@interface ADSHRefundedVC ()

@end

@implementation ADSHRefundedVC

- (void)viewDidLoad {
    [super viewDidLoad];
    

}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ADSHReturnMoneyOrderCellOne *cell = [ADSHReturnMoneyOrderCellOne registerCellForTableView:tableView];
    ADWeakSelf;
    cell.returnMoneyDetailBtnClickTask = ^{
        ADWaitExamineVC *vc = [[ADWaitExamineVC alloc] init];
        [weakSelf.navigationController pushViewController:vc animated:YES];
    };
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 250;
}
@end
