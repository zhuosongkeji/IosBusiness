//
//  ADRTFoodsManageCell.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/24.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADRTFoodsManageCell.h"

@implementation ADRTFoodsManageCell

+ (instancetype)registerTableViewCellWith:(UITableView *)tableView
{
    static NSString * const ADRTFoodsManageCellID = @"ADRTFoodsManageCellID";
    
    ADRTFoodsManageCell *cell = [tableView dequeueReusableCellWithIdentifier:ADRTFoodsManageCellID];
    if (!cell) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"ADRTFoodsManageCell" owner:nil options:nil].lastObject;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}
@end
