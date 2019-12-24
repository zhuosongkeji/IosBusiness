//
//  ADRTUploadNewFoodVC.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/24.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADRTUploadNewFoodVC.h"
#import "ADRTUploadNewFoodCell.h"
#import "ADCommonFooterView.h"

@interface ADRTUploadNewFoodVC ()

@property (nonatomic, weak) ADCommonFooterView *footerView;

@end

@implementation ADRTUploadNewFoodVC

- (void)viewDidLoad {
    [super viewDidLoad];
 
    // 设置顶部的按钮view
    [self setupFooterView];
}


- (void)setupFooterView
{
    ADCommonFooterView *footerV = [ADCommonFooterView ad_viewFromXib];
    footerV.ad_height = 180;
    footerV.setButtonText(@"保存菜品");
    ADWeakSelf;
    // 保存菜品按钮点击 -- >
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
    ADRTUploadNewFoodCell *cell = [ADRTUploadNewFoodCell registerTableViewCellWith:tableView];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 635;
}

@end
