//
//  ADHBWaitCheckInDetailVC.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/23.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//


#import "ADHBWaitCheckInDetailVC.h"
#import "ADHBWaitCheckInDetailCell.h"
#import "ADCommonFooterView.h"

@interface ADHBWaitCheckInDetailVC ()
@property (nonatomic, weak) ADCommonFooterView *footerView;
@end

@implementation ADHBWaitCheckInDetailVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"订单详情";
    self.view.backgroundColor = ADCommonBgColor;
    [self setupFooterView];
}

- (void)setupFooterView
{
    ADCommonFooterView *footerV = [ADCommonFooterView ad_viewFromXib];
    footerV.ad_height = 180;
    footerV.setButtonText(@"订单已使用");
    self.footerView = footerV;
    self.tableView.tableFooterView = footerV;
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ADHBWaitCheckInDetailCell *cell = [ADHBWaitCheckInDetailCell registerCellForTableView:tableView];
    return cell;
    
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 500;
}

@end
