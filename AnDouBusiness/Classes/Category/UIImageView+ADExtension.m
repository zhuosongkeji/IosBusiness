//
//  UIImageView+ADExtension.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/4.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "UIImageView+ADExtension.h"

@implementation UIImageView (ADExtension)

/**
 返回圆形图片
 */
- (UIImageView * _Nonnull (^)(NSString * _Nonnull))setCirclrHeader
{
    return ^(NSString *imageName) {
        self.image = [[UIImage imageNamed:imageName] ad_circleImage];
        return self;
    };
}

/**
 根据imageName设置图片
 */
- (UIImageView * _Nonnull (^)(NSString * _Nonnull))setNormalImage
{
    return ^(NSString *imageName) {
        self.image = [UIImage imageNamed:imageName];
        return self;
    };
}




@end
