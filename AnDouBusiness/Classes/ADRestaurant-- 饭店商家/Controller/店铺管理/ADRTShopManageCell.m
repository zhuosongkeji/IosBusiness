//
//  ADRTShopManageCell.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/24.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADRTShopManageCell.h"

@implementation ADRTShopManageCell




+ (instancetype)registerTableViewCellWith:(UITableView *)tableView
{
    static NSString * const ADRTShopManageCellID = @"ADRTShopManageCellID";
    ADRTShopManageCell *cell = [tableView dequeueReusableCellWithIdentifier:ADRTShopManageCellID];
    if (cell == nil) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"ADRTShopManageCell" owner:nil options:nil].lastObject;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}



@end
