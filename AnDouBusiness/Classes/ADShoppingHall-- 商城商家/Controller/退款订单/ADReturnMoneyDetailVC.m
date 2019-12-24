//
//  ADReturnMoneyDetailVC.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/21.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADReturnMoneyDetailVC.h"
#import "ADReturnMoneyDetailCell.h"
@interface ADReturnMoneyDetailVC ()

@end

@implementation ADReturnMoneyDetailVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

#pragma mark - Table view data source



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ADReturnMoneyDetailCell *cell = [ADReturnMoneyDetailCell registerCellForTableView:tableView];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 588;
}

@end
