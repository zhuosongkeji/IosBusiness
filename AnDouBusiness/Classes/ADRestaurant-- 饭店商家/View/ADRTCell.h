//
//  ADRTCell.h
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/24.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ADRTCell : UITableViewCell
+ (instancetype)registerTableViewCellWith:(UITableView *)tableView;

@property (nonatomic, copy) void(^bookingOrderClickTask)(void);
@property (nonatomic, copy) void(^doneOrderClickTask)(void);
@property (nonatomic, copy) void(^cancelOrderClcikTask)(void);
@property (nonatomic, copy) void(^goodsManageClickTask)(void);
@property (nonatomic, copy) void(^shopManageClickTask)(void);
@property (nonatomic, copy) void(^shopStatisticsClickTask)(void);
@property (nonatomic, copy) void(^newsClickTask)(void);
@property (nonatomic, copy) void(^myWalletClickTask)(void);

@end

NS_ASSUME_NONNULL_END
