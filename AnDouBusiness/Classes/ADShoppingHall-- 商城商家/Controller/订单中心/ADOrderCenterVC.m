//
//  ADOrderCenterVC.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/25.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADOrderCenterVC.h"
#import "ADSHAllOrderVC.h"
#import "ADSHWaitPayVC.h"
#import "ADSHDeliverGoodsVC.h"
#import "ADSHDeliverGoodsDoneVC.h"
#import "ADSHEvaluateDoneVC.h"
#import "ZBNSegmenBarVC.h"

@interface ADOrderCenterVC ()
/*! 选择卡 */
@property (nonatomic, strong) ZBNSegmenBarVC *segmentBarVC;
@end

@implementation ADOrderCenterVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupSegmen];
}


- (void)setupSegmen
{
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.segmentBarVC.segmentBar.frame = CGRectMake(0,0, self.view.ad_width, 50);
    self.segmentBarVC.view.frame = CGRectMake(0, 88, self.view.ad_width, self.view.ad_height);
    [self.view addSubview:self.segmentBarVC.view];
    //添加控制器
    NSArray *items = @[@"全部订单", @"待付款",@"待发货",@"已发货", @"已评价"];

    ADSHAllOrderVC *vc1 = [[ADSHAllOrderVC alloc] init];
    
    ADSHWaitPayVC *vc2 = [[ADSHWaitPayVC alloc] init];
    
    ADSHDeliverGoodsVC *vc3 = [[ADSHDeliverGoodsVC alloc] init];
    
    ADSHDeliverGoodsDoneVC *vc4 = [[ADSHDeliverGoodsDoneVC alloc] init];
    
    ADSHEvaluateDoneVC *vc5 = [[ADSHEvaluateDoneVC alloc] init];
    [self.segmentBarVC setUpWithItems:items childVCs:@[vc1, vc2, vc3, vc4, vc5]];
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
