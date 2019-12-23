//
//  ADDeliveGoodsDoneDetailVC.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/21.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADDeliveGoodsDoneDetailVC.h"
#import "ADDeliveGoodsDoneDetailCell.h"

@interface ADDeliveGoodsDoneDetailVC ()

@end

@implementation ADDeliveGoodsDoneDetailVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ADDeliveGoodsDoneDetailCell *cell = [ADDeliveGoodsDoneDetailCell registerCellForTableView:tableView];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 430;
}

@end
