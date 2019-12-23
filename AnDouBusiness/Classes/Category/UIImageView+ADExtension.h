//
//  UIImageView+ADExtension.h
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/4.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//




#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImageView (ADExtension)
/*!
 根据imageName返回圆形图片
 */
- (UIImageView *(^)(NSString *))setCirclrHeader;
/*!
 根据imageName设置图片
 */
- (UIImageView *(^)(NSString *))setNormalImage;

- (void)setURLImageWithURL: (NSURL *)url progress:(void(^)(CGFloat progress))progress complete: (void(^)(void))complete;

- (void)setURLImageWithURL: (NSURL *)url placeHoldImage:(UIImage *)placeHoldImage isCircle:(BOOL)isCircle;

@end

NS_ASSUME_NONNULL_END
