//
//  ADHBCarryMoneyDetailVC.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/23.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADHBCarryMoneyDetailVC.h"
#import "ADSHMyWalletCommonCell.h"

@interface ADHBCarryMoneyDetailVC ()

@end

@implementation ADHBCarryMoneyDetailVC

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ADSHMyWalletCommonCell *cell = [ADSHMyWalletCommonCell registerCellForTableView:tableView];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}

@end
