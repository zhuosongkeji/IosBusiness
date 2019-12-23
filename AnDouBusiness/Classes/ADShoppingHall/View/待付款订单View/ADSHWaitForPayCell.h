//
//  ADSHWaitForPayCell.h
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/19.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ADSHWaitForPayCell : UITableViewCell

+ (instancetype)registerTableViewCellWith:(UITableView *)tableView;

@property (copy, nonatomic) void(^orderDetailBtnClickTask)(void);


@end

NS_ASSUME_NONNULL_END
