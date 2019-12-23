//
//  UIImage+ADExtension.h
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/4.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//




#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (ADExtension)

/*!
 * 返回一张圆形图片
 */
- (instancetype)ad_circleImage;

- (instancetype)ad_setImageName:(NSString *)imageName;

- (UIImage *(^)(NSString *))setImage;

/*!
 * 返回一张圆形图片
 */
+ (instancetype)ad_circleImageNamed:(NSString *)name;

/*!
 * 返回一张原始的图片
 */
+ (instancetype)ad_originImageWithName:(NSString *)name;


@end

NS_ASSUME_NONNULL_END
