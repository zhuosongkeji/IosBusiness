//
//  ADWaitExamineVC.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/21.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADWaitExamineVC.h"
#import "ADCommonFooterView.h"
#import "ADWaitExamineCell.h"

@interface ADWaitExamineVC ()
/*! 底部按钮的视图 */
@property (nonatomic, weak) ADCommonFooterView *footerView;

@end

@implementation ADWaitExamineVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = ADCommonBgColor;
    
    // 设置底部按钮
    [self setupFooterView];
}


- (void)setupFooterView
{
    ADCommonFooterView *footerV = [ADCommonFooterView ad_viewFromXib];
    footerV.ad_height = 150;
    footerV.setButtonText(@"同意退货退款");
    // 按钮的点击
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
    ADWaitExamineCell *cell = [ADWaitExamineCell registerCellForTableView:tableView];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 312;
}

@end
