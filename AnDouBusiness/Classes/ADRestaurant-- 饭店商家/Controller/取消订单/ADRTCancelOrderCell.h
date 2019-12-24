//
//  ADRTCancelOrderCell.h
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/24.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ADRTCancelOrderCell : UITableViewCell

+ (instancetype)registerTableViewCellWith:(UITableView *)tableView;

@property (nonatomic, copy) void(^bookingBtnClickTask)(void);

@end

NS_ASSUME_NONNULL_END
