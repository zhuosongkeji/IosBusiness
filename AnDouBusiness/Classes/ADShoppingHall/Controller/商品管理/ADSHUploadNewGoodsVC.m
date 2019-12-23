//
//  ADSHUploadNewGoodsVC.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/21.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADSHUploadNewGoodsVC.h"
#import "ADSHUploadNewGoodsCell.h"
#import "ADCommonFooterView.h"

@interface ADSHUploadNewGoodsVC ()

@property (nonatomic, weak) ADCommonFooterView *footerView;

@end

@implementation ADSHUploadNewGoodsVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = ADCommonBgColor;
    
    [self setupFooterView];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
}

- (void)setupFooterView
{
    ADCommonFooterView *footerView = [ADCommonFooterView ad_viewFromXib];
    footerView.ad_height = 180;
    footerView.setButtonText(@"上传商品");
    self.tableView.tableFooterView = footerView;
    self.footerView = footerView;
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ADSHUploadNewGoodsCell *cell = [ADSHUploadNewGoodsCell registerTableViewCellWith:tableView];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 1050;
}


@end
