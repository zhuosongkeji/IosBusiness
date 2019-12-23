//
//  ADSHGoodsManageVC.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/21.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADSHGoodsManageVC.h"
#import "ADGoodsManageTitlesView.h"
#import "ADSHGoodsManageCell.h"
#import "ADSHUploadNewGoodsVC.h"

@interface ADSHGoodsManageVC () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, weak) ADGoodsManageTitlesView *titlesView;

@property (nonatomic, weak) UITableView *tableView;


@end

@implementation ADSHGoodsManageVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = ADCommonBgColor;
    
    // 设置UI
    [self setupUI];
}


- (void)setupUI
{
    // titlesView
    ADGoodsManageTitlesView *titlesView = [ADGoodsManageTitlesView ad_viewFromXib];
    CGFloat titleH = 50;
    CGFloat titleW = ADScreenW;
    CGFloat titleX = 0;
    CGFloat titleY = 88;
    titlesView.frame = CGRectMake(titleX, titleY, titleW, titleH);
    [self.view addSubview:titlesView];
    self.titlesView = titlesView;
    ADWeakSelf;
    self.titlesView.uploadNewGoodsClickTask = ^{
        ADSHUploadNewGoodsVC *vc = [[ADSHUploadNewGoodsVC alloc] init];
        [weakSelf.navigationController pushViewController:vc animated:YES];
    };
    // tableView
    UITableView *tableV = [[UITableView alloc] init];
    CGFloat tableX = 0;
    CGFloat tableY = titleH + 88;
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
    return 5;
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
