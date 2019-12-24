//
//  ADNavigationBar.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/24.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADNavigationBar.h"

@implementation ADNavigationBar

+ (void)ad_setGlobalBackGroundImage:(UIImage *)globalImg
{
    // 作为ADNavigationController的navBar的时候
    UINavigationBar *navBar = [UINavigationBar appearanceWhenContainedInInstancesOfClasses:@[NSClassFromString(@"ADNavigationController")]];
    [navBar setBackgroundImage:globalImg forBarMetrics:UIBarMetricsDefault];
}

+ (void)ad_setGlobalTextColor:(UIColor *)globalTextColor fontSize:(CGFloat)fontSize
{
    if (globalTextColor == nil) {
        return;
    }
    if (fontSize < 6 || fontSize > 40) {
        fontSize = 16;
    }
    UINavigationBar *navBar = [UINavigationBar appearanceWhenContainedInInstancesOfClasses:@[NSClassFromString(@"ADNavigationController")]];
    // 设置导航栏字体和颜色
    NSDictionary *attrs = @{
                            NSForegroundColorAttributeName: globalTextColor,
                            NSFontAttributeName: [UIFont systemFontOfSize:fontSize]
                            };
    [navBar setTitleTextAttributes:attrs];
}

@end
