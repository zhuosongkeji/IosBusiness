//
//  UIView+ADExtension.h
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/4.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (ADExtension)

@property (nonatomic, assign) CGFloat ad_x;
@property (nonatomic, assign) CGFloat ad_y;
@property (nonatomic, assign) CGFloat ad_width;
@property (nonatomic, assign) CGFloat ad_height;
@property (nonatomic, assign) CGFloat ad_centerX;
@property (nonatomic, assign) CGFloat ad_centerY;

+ (instancetype)ad_viewFromXib;

@end

NS_ASSUME_NONNULL_END
