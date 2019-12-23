//
//  ADSHGoodsManageCell.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/21.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADSHGoodsManageCell.h"

@implementation ADSHGoodsManageCell

+ (instancetype)registerTableViewCellWith:(UITableView *)tableView
{
    static NSString * const ADSHGoodsManageCellID = @"ADSHGoodsManageCellID";
    
    ADSHGoodsManageCell *cell = [tableView dequeueReusableCellWithIdentifier:ADSHGoodsManageCellID];
    if (!cell) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"ADSHGoodsManageCell" owner:nil options:nil].lastObject;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}


@end
