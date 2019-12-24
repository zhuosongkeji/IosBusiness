//
//  ADRTShopManageVC.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/24.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADRTShopManageVC.h"
#import "ADRTShopManageCell.h"
#import "ADCommonFooterView.h"

@interface ADRTShopManageVC ()

@property (nonatomic, weak) ADCommonFooterView *footerView;

@end

@implementation ADRTShopManageVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupFooterView];
}


- (void)setupFooterView
{
    ADCommonFooterView *footerV = [ADCommonFooterView ad_viewFromXib];
    footerV.ad_height = 180;
    footerV.setButtonText(@"保存店铺信息");
    ADWeakSelf;
    // 保存店铺信息按钮的点击 -- >
    footerV.footerViewBtnClickTask = ^{
        NSLog(@"点击了保存店铺信息");
    };
    self.tableView.tableFooterView = footerV;
    self.footerView = footerV;
}


#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ADRTShopManageCell *cell = [ADRTShopManageCell registerTableViewCellWith:tableView];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 555;
}

@end
