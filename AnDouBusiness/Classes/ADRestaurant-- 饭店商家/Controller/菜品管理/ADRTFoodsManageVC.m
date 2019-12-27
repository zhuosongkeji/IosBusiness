//
//  ADRTFoodsManageVC.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/24.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADRTFoodsManageVC.h"
#import "ADRTFoodsManageCell.h"
#import "ADRTFoodsManageTitlesView.h"
#import "ADRTUploadNewFoodVC.h"

@interface ADRTFoodsManageVC () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, weak) ADRTFoodsManageTitlesView *titlesView;

@property (nonatomic, weak) UITableView *tableView;

@end

@implementation ADRTFoodsManageVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
}


- (void)setupUI
{
    // titlesView
    ADRTFoodsManageTitlesView *titlesView = [ADRTFoodsManageTitlesView ad_viewFromXib];
    CGFloat titleH = 50;
    CGFloat titleW = ADScreenW;
    CGFloat titleX = 0;
    CGFloat titleY = getRectNavAndStatusHight;
    titlesView.frame = CGRectMake(titleX, titleY, titleW, titleH);
    [self.view addSubview:titlesView];
    self.titlesView = titlesView;
    ADWeakSelf;
    
    // 上传新菜品的点击 -- >
    self.titlesView.uploadNewFoodsBtnClickTask = ^{
        ADRTUploadNewFoodVC *vc = [[ADRTUploadNewFoodVC alloc] init];
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

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ADRTFoodsManageCell *cell = [ADRTFoodsManageCell registerTableViewCellWith:tableView];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 130;
}


@end
