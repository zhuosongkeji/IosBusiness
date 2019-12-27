//
//  ADHBUploadNewGoodsVC.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/23.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADHBUploadNewGoodsVC.h"
#import "ADHBUploadNewGoodsCell.h"
#import "ADCommonFooterView.h"

@interface ADHBUploadNewGoodsVC ()

@property (nonatomic, weak) ADCommonFooterView *footerView;

@end

@implementation ADHBUploadNewGoodsVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"商品上传";
    [self setupFooterView];
    self.view.backgroundColor  = ADCommonBgColor;
}


- (void)setupFooterView
{
    ADCommonFooterView *footerV = [ADCommonFooterView ad_viewFromXib];
    footerV.ad_height = 180;
    footerV.setButtonText(@"上传商品");
    self.tableView.tableFooterView = footerV;
    self.footerView = footerV;
}

#pragma mark - Table view data source



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ADHBUploadNewGoodsCell *cell = [ADHBUploadNewGoodsCell registerTableViewCellWith:tableView];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 895;
}
@end
