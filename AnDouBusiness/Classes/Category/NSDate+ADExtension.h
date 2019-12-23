//
//  NSDate+ADExtension.h
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/4.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//


#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDate (ADExtension)

- (NSDateComponents *)intervalToDate:(NSDate *)date;
- (NSDateComponents *)intervalToNow;

/*!
 * 是否为今年
 */
- (BOOL)ad_isThisYear;

/*!
 * 是否为今天
 */
- (BOOL)ad_isToday;

/*!
 * 是否为昨天
 */
- (BOOL)ad_isYesterday;

/*!
 * 是否为明天
 */
- (BOOL)ad_isTomorrow;


@end

NS_ASSUME_NONNULL_END
