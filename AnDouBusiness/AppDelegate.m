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

@interface AppDelegate ()

@end

@implementation AppDelegate



- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [ADNavigationBar ad_setGlobalTextColor:[UIColor whiteColor] fontSize:14];
//    [ADNavigationBar ad_setGlobalBackGroundImage:[UIImage imageNamed:@"头部背景1"]];
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:[ADGuideViewController new]];
    [self.window makeKeyAndVisible];
    return YES;
}




@end
