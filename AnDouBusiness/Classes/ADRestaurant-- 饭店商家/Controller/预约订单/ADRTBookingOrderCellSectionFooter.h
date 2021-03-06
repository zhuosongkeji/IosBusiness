//
//  ADRTBookingOrderCellSectionFooter.h
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/24.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ADRTBookingOrderCellSectionFooter : UIView
/*! 更多按钮的点击 */
@property (nonatomic, copy) void(^moreBtnClickTask)(UIButton *moreBtn);

@end

NS_ASSUME_NONNULL_END
