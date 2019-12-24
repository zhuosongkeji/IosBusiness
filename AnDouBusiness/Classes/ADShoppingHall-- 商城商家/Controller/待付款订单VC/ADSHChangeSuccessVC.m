//
//  ADSHChangeSuccessVC.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/19.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADSHChangeSuccessVC.h"
#import "ADSHWaitForPayOrderDetailVC.h"

@interface ADSHChangeSuccessVC ()

@end

@implementation ADSHChangeSuccessVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"修改成功";
    
}

// 查看订单按钮的点击
- (IBAction)lookOrderBtnClick:(UIButton *)sender {
    
    ADWeakSelf;
    for (UIViewController *vc in self.navigationController.viewControllers) {
        if ([vc isKindOfClass:[ADSHWaitForPayOrderDetailVC class]]) {
            ADSHWaitForPayOrderDetailVC *detailVc = (ADSHWaitForPayOrderDetailVC *)vc;
            [weakSelf.navigationController popToViewController:detailVc animated:YES];
        }
    }
    
}


@end
