//
//  ADCancelOrderVC.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/23.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADCancelOrderVC.h"
#import "ADSHWaitAuditedVC.h"
#import "ADSHRefundedVC.h"
#import "ZBNSegmenBarVC.h"

@interface ADCancelOrderVC ()
/*! 选择卡 */
@property (nonatomic, strong) ZBNSegmenBarVC *segmentBarVC;

@end

@implementation ADCancelOrderVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // 设置选项卡
    [self setupSegmen];
    self.navigationItem.title = @"已取消订单";
}

- (void)setupSegmen
{
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.segmentBarVC.segmentBar.frame = CGRectMake(0,0 , self.view.ad_width, 50);
    self.segmentBarVC.view.frame = CGRectMake(0, getRectNavAndStatusHight, self.view.ad_width, self.view.ad_height-64);
    [self.view addSubview:self.segmentBarVC.view];
    //添加控制器
    NSArray *items = @[@"待审核", @"已退款"];

    ADSHWaitAuditedVC *vc1 = [[ADSHWaitAuditedVC alloc] init];
    
    ADSHRefundedVC *vc2 = [[ADSHRefundedVC alloc] init];

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
