//
//  ADGoodsManageVC.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/23.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADGoodsManageVC.h"

#import "ADGoodsManageTitlesView.h"
#import "ADSHGoodsManageCell.h"
#import "ADSHUploadNewGoodsVC.h"
#import "ADHBUploadNewGoodsVC.h"

@interface ADGoodsManageVC () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, weak) ADGoodsManageTitlesView *titlesView;

@property (nonatomic, weak) UITableView *tableView;


@end

@implementation ADGoodsManageVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"商品管理";
    self.view.backgroundColor = [UIColor whiteColor];
    [self setupUI];
}

- (void)setupUI
{
    // titlesView
    ADGoodsManageTitlesView *titlesView = [ADGoodsManageTitlesView ad_viewFromXib];
    CGFloat titleH = 50;
    CGFloat titleW = ADScreenW;
    CGFloat titleX = 0;
    CGFloat titleY = getRectNavAndStatusHight;
    titlesView.frame = CGRectMake(titleX, titleY, titleW, titleH);
    [self.view addSubview:titlesView];
    self.titlesView = titlesView;
    ADWeakSelf;
    self.titlesView.uploadNewGoodsClickTask = ^{
        ADHBUploadNewGoodsVC *vc = [[ADHBUploadNewGoodsVC alloc] init];
        [weakSelf.navigationController pushViewController:vc animated:YES];
    };
    // tableView
    UITableView *tableV = [[UITableView alloc] init];
    CGFloat tableX = 0;
    CGFloat tableY = titleH + getRectNavAndStatusHight;
    CGFloat tableW = ADScreenW;
    CGFloat tableH = ADScreenH - titleH;
    tableV.frame = CGRectMake(tableX, tableY, tableW, tableH);
    tableV.backgroundColor = ADCommonBgColor;
    [self.view addSubview:tableV];
    tableV.delegate = self;
    tableV.dataSource = self;
    self.tableView = tableV;
}



#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 6;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ADSHGoodsManageCell *cell = [ADSHGoodsManageCell registerTableViewCellWith:tableView];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 130;
}



@end
