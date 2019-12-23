//
//  ADHBShopManageVC.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/23.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADHBShopManageVC.h"
#import "ADHBShopManageCell.h"
#import "ADCommonFooterView.h"

@interface ADHBShopManageVC ()

@property (nonatomic, weak) ADCommonFooterView *footerView;

@end

@implementation ADHBShopManageVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.view.backgroundColor = ADCommonBgColor;
    [self setupFooterView];
}

- (void)setupFooterView
{
    ADCommonFooterView *footerV = [ADCommonFooterView ad_viewFromXib];
    footerV.setButtonText(@"保存店铺信息");
    footerV.ad_height = 180;
    self.footerView = footerV;
    self.tableView.tableFooterView = footerV;
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ADHBShopManageCell *cell = [ADHBShopManageCell registerTableViewCellWith:tableView];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 824;
}
@end
