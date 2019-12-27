//
//  ADHBMyWalletVC.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/23.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADHBMyWalletVC.h"
#import "ZBNSegmenBarVC.h"
#import "ADSHMyWalletHeadView.h"
#import "ADHBCarryMoneyDetailVC.h"
#import "ADHBBalanceDetailVC.h"
#import "ADSHMoneyCarryVC.h"

@interface ADHBMyWalletVC ()
/*! 选择卡 */
@property (nonatomic, strong) ZBNSegmenBarVC *segmentBarVC;
/*! 头部视图 */
@property (nonatomic, weak) ADSHMyWalletHeadView *headView;

@end

@implementation ADHBMyWalletVC

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    
    self.segmentBarVC.segmentBar.layer.cornerRadius = 15;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"我的钱包";
    self.view.backgroundColor = [UIColor whiteColor];
    [self setupHeaderView];
    
    // 设置选项卡
    [self setupSegmen];
    
}

- (void)setupHeaderView
{
    ADSHMyWalletHeadView *headV = [ADSHMyWalletHeadView ad_viewFromXib];
    headV.frame =CGRectMake(0, getRectNavAndStatusHight, self.view.ad_width, 150);
    [self.view addSubview:headV];
    self.headView = headV;
    ADWeakSelf;
    headV.moneyCarryBtnClickTask = ^{
        ADSHMoneyCarryVC *vc = [[ADSHMoneyCarryVC alloc] init];
        [weakSelf.navigationController pushViewController:vc animated:YES];
    };
    
    
}

- (void)setupSegmen
{
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.segmentBarVC.segmentBar.frame = CGRectMake(0,0 , self.view.ad_width, 50);
    self.segmentBarVC.view.frame = CGRectMake(0, 140 + getRectNavAndStatusHight, self.view.ad_width, self.view.ad_height-64);
    [self.view addSubview:self.segmentBarVC.view];
    //添加控制器
    NSArray *items = @[@"余额明细", @"提现明细"];

    ADHBCarryMoneyDetailVC *vc1 = [[ADHBCarryMoneyDetailVC alloc] init];
    
    ADHBBalanceDetailVC *vc2 = [[ADHBBalanceDetailVC alloc] init];

    [self.segmentBarVC setUpWithItems:items childVCs:@[vc1, vc2]];
    //设置样式
    [self.segmentBarVC.segmentBar updateWithConfig:^(ZBNSegmenBarConfig *config) {
        config.itemNColor([UIColor blackColor]).itemSColor([UIColor colorWithRed:50/255.0 green:193/255.0 blue:164/255.0 alpha:1]).itemF([UIFont systemFontOfSize:13]).itemBColor([UIColor whiteColor]).indicatorH(0);
        config.indicatorExtraW = 0;
    }];

    //少量标签需要均分的情形
    self.segmentBarVC.segmentBar.isDivideEqually = YES;
}


- (ZBNSegmenBarVC *)segmentBarVC {
    if (!_segmentBarVC) {
        ZBNSegmenBarVC *vc = [[ZBNSegmenBarVC alloc] init];
        [self addChildViewController:vc];
        _segmentBarVC = vc;
    }
    return _segmentBarVC;
}


@end
