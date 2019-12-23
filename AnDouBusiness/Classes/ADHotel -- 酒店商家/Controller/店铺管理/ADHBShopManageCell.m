//
//  ADHBShopManageCell.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/23.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADHBShopManageCell.h"

@implementation ADHBShopManageCell

+ (instancetype)registerTableViewCellWith:(UITableView *)tableView
{
    static NSString * const ADHBShopManageCellID = @"ADHBShopManageCellID";
    ADHBShopManageCell *cell = [tableView dequeueReusableCellWithIdentifier:ADHBShopManageCellID];
    if (cell == nil) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"ADHBShopManageCell" owner:nil options:nil].lastObject;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}

@end
