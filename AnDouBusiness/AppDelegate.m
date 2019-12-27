//
//  AppDelegate.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/4.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "AppDelegate.h"
#import "ADGuideViewController.h"
#import "ADNavigationBar.h"
#import "ADNavigationController.h"
#import "ADChooseVC.h"

@interface AppDelegate ()

@end

@implementation AppDelegate



- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [ADNavigationBar ad_setGlobalTextColor:[UIColor whiteColor] fontSize:14];
    [ADNavigationBar ad_setGlobalBackGroundColor:[UIColor colorWithRed:89/255.0 green:205/255.0 blue:158/255.0 alpha:1]];
//    [ADNavigationBar ad_setGlobalBackGroundImage:[UIImage imageNamed:@"头部背景1"]];
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:[ADChooseVC new]];
    self.window.rootViewController.modalPresentationStyle = 0;
    [self.window makeKeyAndVisible];
    return YES;
}




@end
