//
//  ADSHCarryMoneyDetailVC.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/21.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADSHCarryMoneyDetailVC.h"
#import "ADSHMyWalletCommonCell.h"

@interface ADSHCarryMoneyDetailVC ()



@end

@implementation ADSHCarryMoneyDetailVC




- (void)viewDidLoad {
    [super viewDidLoad];
    
}




- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
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
