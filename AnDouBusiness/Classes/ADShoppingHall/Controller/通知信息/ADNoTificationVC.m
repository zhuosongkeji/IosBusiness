//
//  ADNoTificationVC.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/23.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADNoTificationVC.h"
#import "ADNotificationCell.h"
#import "ADNotificationDetailVC.h"

@interface ADNoTificationVC ()

@end

@implementation ADNoTificationVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
   
}

#pragma mark - Table view data source



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ADNotificationCell *cell = [ADNotificationCell registerTableViewCellWith:tableView];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    ADNotificationDetailVC *vc = [[ADNotificationDetailVC alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 75;
}



@end
