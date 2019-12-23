//
//  ADSHChangePriceVc.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/19.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADSHChangePriceVc.h"
#import "ADSHChangePriceCell.h"
#import "ADCommonFooterView.h"
#import "ADSHChangeSuccessVC.h"

@interface ADSHChangePriceVc ()

@property (nonatomic, weak) ADCommonFooterView *footerView;

@end

@implementation ADSHChangePriceVc

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = ADCommonBgColor;
    self.navigationItem.title = @"修改价格";
    
    [self setupFooterView];
    
}



- (void)setupFooterView
{
    ADCommonFooterView *footerView = [ADCommonFooterView ad_viewFromXib];
    footerView.ad_height = 180;
    footerView.setButtonText(@"修改价格");
    self.tableView.tableFooterView = footerView;
    ADWeakSelf;
    self.footerView = footerView;
    self.footerView.footerViewBtnClickTask = ^{
        ADSHChangeSuccessVC *successVc = [[ADSHChangeSuccessVC alloc] init];
        [weakSelf.navigationController pushViewController:successVc animated:YES];
    };
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ADSHChangePriceCell *cell = [ADSHChangePriceCell registerTableViewCellWith:tableView];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 215;
}


@end
