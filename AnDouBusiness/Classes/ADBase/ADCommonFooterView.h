//
//  ADCommonFooterView.h
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/21.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class ADCommonFooterView;
@interface ADCommonFooterView : UIView

/*! 按钮的点击 */
@property (nonatomic, copy) void(^footerViewBtnClickTask)(void);
/*! 设置按钮的文字 */
- (ADCommonFooterView *(^)(NSString *buttonText))setButtonText;

@end

NS_ASSUME_NONNULL_END
