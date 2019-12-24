//
//  ADRTBookingOrderCell.h
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/24.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ADRTBookingOrderCell : UITableViewCell
+ (instancetype)registerTableViewCellWith:(UITableView *)tableView;

@property (nonatomic, copy) void(^orderDetailBtnClickTask)(void);

@end

NS_ASSUME_NONNULL_END
