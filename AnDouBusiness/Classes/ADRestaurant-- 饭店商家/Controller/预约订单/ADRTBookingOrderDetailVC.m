//
//  ADRTBookingOrderDetailVC.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/24.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADRTBookingOrderDetailVC.h"

#import "ADRTBookingOrderDetailCell.h"
#import "ADRTBookingOrderDetailHeader.h"
#import "ADRTBookingOrderDetailFooter.h"
#import "ADRTBookingOrderCellSectionFooter.h"

#import "ADModel.h"


@interface ADRTBookingOrderDetailVC ()

@property (nonatomic, weak) ADRTBookingOrderDetailHeader *headerV;
@property (nonatomic, weak) ADRTBookingOrderDetailFooter *footerV;
@property (nonatomic, strong) ADRTBookingOrderCellSectionFooter *secFooterV;

@property (nonatomic, strong) NSMutableArray *array;
@property (nonatomic, strong) ADModel *model;

@end

@implementation ADRTBookingOrderDetailVC

- (NSMutableArray *)array
{
    if (!_array) {
        _array = [NSMutableArray array];
    }
    return _array;
}


- (void)initModel
{
    for (int i = 0; i < 4; i++) {
        ADModel *model = [[ADModel alloc] init];
        [self.array addObject:model];
    }
}


- (instancetype)init
{
    return [super initWithStyle:UITableViewStyleGrouped];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = ADCommonBgColor;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.navigationItem.title = @"订单详情";
    

    [self initModel];
    
    [self setupUI];
   
}


- (void)setupUI
{
    // 头部视图
    ADRTBookingOrderDetailHeader *headV = [ADRTBookingOrderDetailHeader ad_viewFromXib];
    headV.ad_height = 300;
    self.tableView.tableHeaderView = headV;
    self.headerV = headV;
    // 尾部视图
    ADRTBookingOrderDetailFooter *footV = [ADRTBookingOrderDetailFooter ad_viewFromXib];
    footV.ad_height = 193;
    self.tableView.tableFooterView = footV;
    self.footerV = footV;
    // 组尾视图
    // -- > 尾部加载更多按钮的点击
    ADRTBookingOrderCellSectionFooter *secFooterV = [ADRTBookingOrderCellSectionFooter ad_viewFromXib];
    secFooterV.moreBtnClickTask = ^(UIButton * _Nonnull moreBtn) {
        ADModel *model1 = [[ADModel alloc] init];
        ADModel *model2 = [[ADModel alloc] init];
        ADModel *model3 = [[ADModel alloc] init];
        ADModel *model4 = [[ADModel alloc] init];
        [self.array addObjectsFromArray:@[model1,model2,model3,model4]];
        [moreBtn setTitle:@"没有了喔" forState:UIControlStateNormal];
        moreBtn.enabled = NO;
        [self.tableView reloadData];
//        moreBtn.hidden = YES;
        
    
    };
    self.secFooterV = secFooterV;
}

#pragma mark - Table view data source



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.array.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ADRTBookingOrderDetailCell *cell = [ADRTBookingOrderDetailCell registerTableViewCellWith:tableView];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 90;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    if (self.array.count < 3) {
        UIView *view = [[UIView alloc] init];
        view.backgroundColor = [UIColor whiteColor];
        return view;
    } else {
        return self.secFooterV;
    }
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    if (self.array.count < 3) {
        return 0;
    } else {
        return 50;
    }
}


@end
