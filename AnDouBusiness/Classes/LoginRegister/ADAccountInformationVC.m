//
//  ADAccountInformationVC.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/27.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADAccountInformationVC.h"
#import "ADCommonFooterView.h"
#import "ADChooseVC.h"

@interface ADAccountInformationVC ()

@property (nonatomic, weak) ADCommonFooterView *footerV;

@end

@implementation ADAccountInformationVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // 设置底部视图
    [self setupFooterView];
}



- (void)setupFooterView
{
    ADCommonFooterView *footerV = [ADCommonFooterView ad_viewFromXib];
    footerV.ad_height = 180;
    footerV.ad_width = ADScreenW;
    footerV.ad_centerX = self.view.ad_centerX;
    footerV.ad_y = ADScreenH - 180 - getRectNavAndStatusHight;
    footerV.setButtonText(@"退出登录");
    footerV.footerViewBtnClickTask = ^{
            
        [UIView transitionWithView:[UIApplication sharedApplication].keyWindow duration:0.5f options:UIViewAnimationOptionTransitionCrossDissolve animations:^{

            BOOL oldState = [UIView areAnimationsEnabled];

           UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:[[ADChooseVC alloc] init]];
           [UIApplication sharedApplication].keyWindow.rootViewController = nav;

            [UIView setAnimationsEnabled:oldState];

        } completion:nil];
    };
    [self.view addSubview:footerV];
    self.footerV = footerV;
}

@end
