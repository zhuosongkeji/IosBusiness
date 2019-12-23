//
//  UIView+ADExtension.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/4.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "UIView+ADExtension.h"

@implementation UIView (ADExtension)

+ (instancetype)ad_viewFromXib
{
    return [[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil].lastObject;
}

- (void)setAd_x:(CGFloat)ad_x
{
    CGRect frame = self.frame;
    frame.origin.x = ad_x;
    self.frame = frame;
}

- (CGFloat)ad_x
{
    return self.frame.origin.x;
}


- (void)setAd_y:(CGFloat)ad_y
{
    CGRect frame = self.frame;
    frame.origin.y = ad_y;
    self.frame = frame;
}

- (CGFloat)ad_y
{
    return self.frame.origin.y;
}


- (void)setAd_width:(CGFloat)ad_width
{
    CGRect frame = self.frame;
    frame.size.width = ad_width;
    self.frame = frame;
}

- (CGFloat)ad_width
{
    return self.frame.size.width;
}

- (void)setAd_height:(CGFloat)ad_height
{
    CGRect frame = self.frame;
    frame.size.height = ad_height;
    self.frame = frame;
}

- (CGFloat)ad_height
{
    return self.frame.size.height;
}

- (void)setAd_centerX:(CGFloat)ad_centerX
{
    CGPoint center = self.center;
    center.x = ad_centerX;
    self.center = center;
}

- (CGFloat)ad_centerX
{
    return self.center.x;
}

- (void)setAd_centerY:(CGFloat)ad_centerY
{
    CGPoint center = self.center;
    center.y = ad_centerY;
    self.center = center;
}

- (CGFloat)ad_centerY
{
    return self.center.y;
}


@end
