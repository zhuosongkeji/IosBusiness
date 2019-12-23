//
//  UIImage+ADExtension.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/4.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "UIImage+ADExtension.h"


@implementation UIImage (ADExtension)

- (instancetype)ad_circleImage
{
    // 开启图形上下文
    UIGraphicsBeginImageContext(self.size);
    
    // 获得上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    // 矩形框
    CGRect rect = CGRectMake(0, 0, self.size.width, self.size.height);
    
    // 添加一个圆
    CGContextAddEllipseInRect(ctx, rect);
    
    // 裁剪(裁剪成刚才添加的图形形状)
    CGContextClip(ctx);
    
    // 往圆上面画一张图片
    [self drawInRect:rect];
    
    // 获得上下文中的图片
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    // 关闭图形上下文
    UIGraphicsEndImageContext();
    
    return image;
}

- (instancetype)ad_setImageName:(NSString *)imageName
{
    UIImage *image = [UIImage imageNamed:imageName];
    return image;
}

- (UIImage * _Nonnull (^)(NSString * _Nonnull))setImage
{
    return ^(NSString *imageName) {
        [self ad_setImageName:imageName];
        return self;
    };
}

+ (instancetype)ad_circleImageNamed:(NSString *)name
{
    return [[self imageNamed:name] ad_circleImage];
}


+ (instancetype)ad_originImageWithName:(NSString *)name
{
    return [[UIImage imageNamed:name] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}

@end
