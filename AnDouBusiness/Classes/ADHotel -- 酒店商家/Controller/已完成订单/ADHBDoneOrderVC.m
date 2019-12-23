//
//  ADHBDoneOrderVC.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/23.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADHBDoneOrderVC.h"
#import "ADSHOrderDoneCell.h"

@interface ADHBDoneOrderVC ()

@end

@implementation ADHBDoneOrderVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
  
}

#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ADSHOrderDoneCell *cell = [ADSHOrderDoneCell registerCellForTableView:tableView];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 250;
}

@end
