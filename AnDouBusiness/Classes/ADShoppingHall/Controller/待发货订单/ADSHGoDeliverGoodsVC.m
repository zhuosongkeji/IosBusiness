//
//  ADSHGoDeliverGoodsVC.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/21.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADSHGoDeliverGoodsVC.h"

#import "ADSHGoDeliverGoodsCell.h"
#import "ADCommonFooterView.h"

@interface ADSHGoDeliverGoodsVC ()

@property (nonatomic, weak) ADCommonFooterView *footerView;

@end

@implementation ADSHGoDeliverGoodsVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 设置底部的按钮view
    [self setupFooterView];
    self.view.backgroundColor = ADCommonBgColor;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
}


- (void)setupFooterView
{
    ADCommonFooterView *footerV = [ADCommonFooterView ad_viewFromXib];
    footerV.setButtonText(@"确认发货");
    footerV.footerViewBtnClickTask = ^{
        
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
    ADSHGoDeliverGoodsCell *cell = [ADSHGoDeliverGoodsCell registerCellForTableView:tableView];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 580;
}

@end
