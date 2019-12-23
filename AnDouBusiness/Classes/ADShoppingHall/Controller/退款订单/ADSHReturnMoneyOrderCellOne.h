//
//  ADSHReturnMoneyOrderCellOne.h
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/21.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ADSHReturnMoneyOrderCellOne : UITableViewCell
/*! 注册CEll */
+ (instancetype)registerCellForTableView:(UITableView *)tableView;
@property (nonatomic, copy) void(^returnMoneyDetailBtnClickTask)(void);

@end

NS_ASSUME_NONNULL_END
