//
//  ADShoppingMallBusinessViewController.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/4.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADShoppingMallBusinessViewController.h"

#import "TggStarEvaluationView.h"       // 星星评价的view
#import "ADSHCell.h"                    // 本控制器的cell
#import "ADSHWaitForPayVC.h"            // 待付款控制器
#import "ADStoreManageVC.h"             // 店铺管理控制器
#import "ADSHMyNewsVC.h"                // 我的消息
#import "ADSHMywalletVC.h"              // 我的钱包点击
#import "ADSHWaitDeliverGoodsVC.h"      // 待发货控制器
#import "ADDeliveGoodsDoneVC.h"         // 已发货控制器
#import "ADSHOrderDoneVC.h"             // 已完成订单控制器
#import "ADSHReturnMoneyOrderVC.h"      // 退货退款订单
#import "ADSHGoodsManageVC.h"           // 商品管理
#import "ADNoTificationVC.h"            // 通知信息
#import "ADOrderCenterVC.h"
#import "ADSHShopStatisticsVC.h"

@interface ADShoppingMallBusinessViewController ()

/*! 中间的view */
@property (weak, nonatomic) IBOutlet UIView *middleView;
/*! 星星评级的view */
@property (weak, nonatomic) IBOutlet TggStarEvaluationView *starView;
@end

@implementation ADShoppingMallBusinessViewController

/*! 设置按钮的点击 */
- (IBAction)btnClick:(UIButton *)sender {
    
    NSLog(@"你点击了设置按钮");
}


#pragma mark -- 控制器的生命周期方法
/*! 控制器刚刚加载完毕的时候调用 */
- (void)viewDidLoad {
    [super viewDidLoad];
    // 设置中间View的圆角和边框
    [self setupMiddleView];
    
    [self setupGes];
}




/*! 给中间的view添加点击手势 */
- (void)setupGes
{
    UITapGestureRecognizer *middleGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(middleViewClick)];
    self.middleView.userInteractionEnabled = YES;
    [self.middleView addGestureRecognizer:middleGes];
}

- (void)middleViewClick
{
    ADOrderCenterVC *vc = [[ADOrderCenterVC alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

/*! 设置中间订单view的圆角 */
- (void)setupMiddleView
{
    self.middleView.layer.cornerRadius = 10;
    self.middleView.layer.borderWidth = 1;
    self.middleView.layer.borderColor = [UIColor lightGrayColor].CGColor;
}



#pragma mark -- 数据源和代理方法
/*! 每组有多少行 */
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

/*! 返回什么类型的cell */
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ADSHCell *cell = [ADSHCell registerTableViewCellWith:tableView];
    ADWeakSelf;
    // 待付款订单点击
    cell.oneCellClickTask = ^{
        // 待付款控制器
        ADSHWaitForPayVC *waitPayVc = [[ADSHWaitForPayVC alloc] init];
        [weakSelf.navigationController pushViewController:waitPayVc animated:YES];
    };
    
    //  店铺管理cell点击
    cell.sevenCellClickTask = ^{
        ADStoreManageVC *storeVc = [[ADStoreManageVC alloc] init];
        [weakSelf.navigationController pushViewController:storeVc animated:YES];
    };
    
    //  我的消息cell的点击
    cell.newsCellClickTask = ^{
        ADSHMyNewsVC *myNewsVc = [[ADSHMyNewsVC alloc] init];
        [weakSelf.navigationController pushViewController:myNewsVc animated:YES];
    };
    
    // 我的钱包cell的点击
    cell.MyWalletCellClickTask = ^{
        ADSHMywalletVC *walletVc = [[ADSHMywalletVC alloc] init];
        [weakSelf.navigationController pushViewController:walletVc animated:YES];
    };
    
    // 待发货订单cell的点击
    cell.waitDeliverGoodsCellClickTask = ^{
        ADSHWaitDeliverGoodsVC *waitVc = [[ADSHWaitDeliverGoodsVC alloc] init];
        [weakSelf.navigationController pushViewController:waitVc animated:YES];
    };
    // 已发货点击
    cell.deliveGoodsDoneCellClickTask = ^{
        ADDeliveGoodsDoneVC *vc = [[ADDeliveGoodsDoneVC alloc] init];
        [weakSelf.navigationController pushViewController:vc animated:YES];
    };
    // 已完成点击
    cell.orderDoneCellClickTask = ^{
        ADSHOrderDoneVC *vc = [[ADSHOrderDoneVC alloc] init];
        [weakSelf.navigationController pushViewController:vc animated:YES];
    };
    // 退货退款
    cell.returnMoneyCellClickTask = ^{
        ADSHReturnMoneyOrderVC *vc = [[ADSHReturnMoneyOrderVC alloc] init];
        [weakSelf.navigationController pushViewController:vc animated:YES];
    };
    // 商品管理
    cell.goodsManageCellClickTask = ^{
        ADSHGoodsManageVC *manageVc = [[ADSHGoodsManageVC alloc] init];
        [weakSelf.navigationController pushViewController:manageVc animated:YES];
    };
    // 通知信息
    cell.notificationCellClickTask = ^{
        ADNoTificationVC *vc = [[ADNoTificationVC alloc] init];
        [weakSelf.navigationController pushViewController:vc animated:YES];
    };
    //
    cell.statisticsCellClickTask = ^{
        ADSHShopStatisticsVC *vc = [[ADSHShopStatisticsVC alloc] init];
        [weakSelf.navigationController pushViewController:vc animated:YES];
    };
    return cell;
}
/*! 行高 */
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // 暂定高度
    return 550;
}

@end
