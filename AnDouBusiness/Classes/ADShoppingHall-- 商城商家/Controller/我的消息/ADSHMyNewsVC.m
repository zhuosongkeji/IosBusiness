//
//  ADSHMyNewsVC.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/21.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADSHMyNewsVC.h"
#import "ADSHMyNewsCell.h"

@interface ADSHMyNewsVC ()

@end

@implementation ADSHMyNewsVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ADSHMyNewsCell *cell = [ADSHMyNewsCell registerCellForTable:tableView];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}


@end
