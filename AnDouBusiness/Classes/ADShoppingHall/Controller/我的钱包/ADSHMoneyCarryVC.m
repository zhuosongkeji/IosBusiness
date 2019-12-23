//
//  ADSHMoneyCarryVC.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/23.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADSHMoneyCarryVC.h"
#import "ADSHMoneyCarryCell.h"
#import "ADCommonFooterView.h"

@interface ADSHMoneyCarryVC ()

@property (nonatomic, weak) ADCommonFooterView *footerView;

@end

@implementation ADSHMoneyCarryVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = ADCommonBgColor;
    
    [self setupFooterView];
}

- (void)setupFooterView
{
    ADCommonFooterView *footerV = [ADCommonFooterView ad_viewFromXib];
    footerV.ad_height = 180;
    footerV.setButtonText(@"确认提现");
    self.tableView.tableFooterView = footerV;
    self.footerView = footerV;
}


#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ADSHMoneyCarryCell *cell = [ADSHMoneyCarryCell registerCellForTableView:tableView];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 250;
}

@end
