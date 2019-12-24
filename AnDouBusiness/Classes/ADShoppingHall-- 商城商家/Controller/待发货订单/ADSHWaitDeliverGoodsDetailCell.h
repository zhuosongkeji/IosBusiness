//
//  ADSHWaitDeliverGoodsDetailCell.h
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/21.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ADSHWaitDeliverGoodsDetailCell : UITableViewCell
+ (instancetype)registerCellForTableView:(UITableView *)tableView;

/*! 去发货按钮的点击 */
@property (nonatomic, copy) void(^deliveGoodsBtnClickTask)(void);

@end

NS_ASSUME_NONNULL_END
