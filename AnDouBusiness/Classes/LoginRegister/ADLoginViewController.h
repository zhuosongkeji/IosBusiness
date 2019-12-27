//
//  ADLoginViewController.h
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/4.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//  登录

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ADLoginViewController : UIViewController

@property (nonatomic, copy) void(^loginBtnClickTask)(void);

@end

NS_ASSUME_NONNULL_END
