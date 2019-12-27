//
//  ADChooseVC.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/25.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADChooseVC.h"
#import "ADShoppingMallBusinessViewController.h"
#import "ADHotelBusinessViewController.h"
#import "ADRestaurantHomeVC.h"
#import "ADLoginViewController.h"
#import "ADNavigationController.h"

@interface ADChooseVC () <UIApplicationDelegate>




@end

@implementation ADChooseVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"欢迎使用安抖商家端";
}



- (IBAction)gotelBtnClick:(UIButton *)sender {
    
    ADLoginViewController *vc = [[ADLoginViewController alloc] init];
    vc.modalPresentationStyle = UIModalPresentationOverFullScreen;
    [self presentViewController:vc animated:YES completion:nil];
    
    ADWeakSelf;
    vc.loginBtnClickTask = ^{
        [weakSelf dismissViewControllerAnimated:YES completion:^{
           
        [UIView transitionWithView:[UIApplication sharedApplication].keyWindow duration:0.5f options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
            BOOL oldState = [UIView areAnimationsEnabled];
            ADHotelBusinessViewController *vc = [[ADHotelBusinessViewController alloc] init];
            ADNavigationController *nav = [[ADNavigationController alloc] initWithRootViewController:vc];
            [UIApplication sharedApplication].keyWindow.rootViewController = nav;
            [UIView setAnimationsEnabled:oldState];
            
        } completion:nil];
            
        }];
        
    };
    
}


- (IBAction)restrantBtnClick:(UIButton *)sender {
    ADRestaurantHomeVC *vc = [[ADRestaurantHomeVC alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}


- (IBAction)shoppingHallBtnClick:(UIButton *)sender {
    ADShoppingMallBusinessViewController *vc = [[ADShoppingMallBusinessViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}





@end
