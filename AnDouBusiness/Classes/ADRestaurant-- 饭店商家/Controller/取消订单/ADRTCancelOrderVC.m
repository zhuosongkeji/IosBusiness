//
//  ADRTCancelOrderVC.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/24.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADRTCancelOrderVC.h"
#import "ADRTCancelOrderCell.h"

@interface ADRTCancelOrderVC ()

@end

@implementation ADRTCancelOrderVC

- (void)viewDidLoad {
    [super viewDidLoad];
    

}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ADRTCancelOrderCell *cell = [ADRTCancelOrderCell registerTableViewCellWith:tableView];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 230;
}

@end
