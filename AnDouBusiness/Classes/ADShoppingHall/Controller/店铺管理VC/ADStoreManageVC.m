//
//  ADStoreManageVC.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/19.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADStoreManageVC.h"

#import "ADStoreManageCellOne.h"
#import "ADStoreManageCellTwo.h"
#import "ADStoreManageCellThree.h"
#import "ADStoreManageCellFour.h"
#import "ADStoreManageCellFive.h"

#import "ADCommonFooterView.h"

@interface ADStoreManageVC ()

@property (nonatomic, weak) ADCommonFooterView *footerView;

@end

@implementation ADStoreManageVC


- (instancetype)init
{
    return [super initWithStyle:UITableViewStyleGrouped];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = ADCommonBgColor;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    [self setupFooterView];
}

- (void)setupFooterView
{
    ADCommonFooterView *footerV = [ADCommonFooterView ad_viewFromXib];
    footerV.ad_height = 180;
    footerV.setButtonText(@"保存店铺信息");
    self.tableView.tableFooterView = footerV;
    self.footerView = footerV;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 5;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        ADStoreManageCellOne *oneCell = [ADStoreManageCellOne registerTableViewCellWith:tableView];
        return oneCell;
    } else if (indexPath.section == 1) {
        ADStoreManageCellTwo *twoCell = [ADStoreManageCellTwo registerTableViewCellWith:tableView];
        return twoCell;
    } else if (indexPath.section == 2) {
        ADStoreManageCellThree *threeCell = [ADStoreManageCellThree registerTableViewCellWith:tableView];
        return threeCell;
    } else if (indexPath.section == 3) {
        ADStoreManageCellFour *fourCell = [ADStoreManageCellFour registerTableViewCellWith:tableView];
        return fourCell;
    } else {
        ADStoreManageCellFive *fiveCell = [ADStoreManageCellFive registerTableViewCellWith:tableView];
        return fiveCell;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        return 145;
    } else if (indexPath.section == 1) {
        return 135;
    } else if (indexPath.section == 2) {
        return 110;
    } else if (indexPath.section == 3) {
        return 170;
    } else {
        return 197;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        return 0;
    } else {
        return 5;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 5;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    return [[UIView alloc] init];
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    return [[UIView alloc] init];
}

@end
