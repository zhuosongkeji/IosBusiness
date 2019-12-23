//
//  ADSHMyWalletHeadView.h
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/21.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ADSHMyWalletHeadView : UIView
/*! 余额提现按钮的点击 */
@property (nonatomic, copy) void(^moneyCarryBtnClickTask)(void);

@end

NS_ASSUME_NONNULL_END
