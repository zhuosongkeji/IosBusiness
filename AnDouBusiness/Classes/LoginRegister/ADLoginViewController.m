//
//  ADLoginViewController.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/4.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADLoginViewController.h"

@interface ADLoginViewController ()

@end

@implementation ADLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)loginBtnClick:(UIButton *)sender {
    if (self.loginBtnClickTask) {
        self.loginBtnClickTask();
    }
}


@end
