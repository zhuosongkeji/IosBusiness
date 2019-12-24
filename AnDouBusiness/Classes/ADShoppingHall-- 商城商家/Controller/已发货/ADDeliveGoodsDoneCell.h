//
//  ADDeliveGoodsDoneCell.h
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/21.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ADDeliveGoodsDoneCell : UITableViewCell
/*! 注册CEll */
+ (instancetype)registerCellForTableView:(UITableView *)tableView;
/*! 订单详情按钮的点击 */
@property (nonatomic, copy) void(^orderDetailBtnClickTask)();

@end

NS_ASSUME_NONNULL_END
