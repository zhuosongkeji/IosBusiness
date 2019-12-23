//
//  ADSHGoDeliverGoodsCell.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/21.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADSHGoDeliverGoodsCell.h"

@implementation ADSHGoDeliverGoodsCell

+ (instancetype)registerCellForTableView:(UITableView *)tableView
{
    static NSString * const ADSHGoDeliverGoodsCellID
    = @"ADSHGoDeliverGoodsCellID";
    ADSHGoDeliverGoodsCell *cell = [tableView dequeueReusableCellWithIdentifier:ADSHGoDeliverGoodsCellID];
    if (!cell) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"ADSHGoDeliverGoodsCell" owner:nil options:nil].lastObject;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}


@end
