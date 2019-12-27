//
//  ADSHCell.h
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/19.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ADSHCell : UITableViewCell

+ (instancetype)registerTableViewCellWith:(UITableView *)tableView;

/*! 待付款订单的点击 */
@property (nonatomic, copy) void(^oneCellClickTask)(void);
/*! 店铺管理的点击 */
@property (nonatomic, copy) void(^sevenCellClickTask)(void);
/*! 我的消息点击 */
@property (nonatomic, copy) void(^newsCellClickTask)(void);
/*! 我的钱包点击 */
@property (nonatomic, copy) void(^MyWalletCellClickTask)(void);
/*! 待发货订单的点击 */
@property (nonatomic, copy) void(^waitDeliverGoodsCellClickTask)(void);
/*! 已发货点击 */
@property (nonatomic, copy) void(^deliveGoodsDoneCellClickTask)(void);
/*! 已完成 */
@property (nonatomic, copy) void(^orderDoneCellClickTask)(void);
/*! 退货退款 */
@property (nonatomic, copy) void(^returnMoneyCellClickTask)(void);
/*! 商品管理 */
@property (nonatomic, copy) void(^goodsManageCellClickTask)(void);
/*! 通知信息 */
@property (nonatomic, copy) void(^notificationCellClickTask)(void);
/*! 店铺统计 */
@property (nonatomic, copy) void(^statisticsCellClickTask)(void);

@end

NS_ASSUME_NONNULL_END
