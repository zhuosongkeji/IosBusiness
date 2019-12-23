//
//  ADReturnMoneyDetailCell.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/21.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADReturnMoneyDetailCell.h"

@implementation ADReturnMoneyDetailCell

+ (instancetype)registerCellForTableView:(UITableView *)tableView
{
    static NSString * const ADReturnMoneyDetailCellID = @"ADReturnMoneyDetailCellID";
    ADReturnMoneyDetailCell *cell = [tableView dequeueReusableCellWithIdentifier:ADReturnMoneyDetailCellID];
    if (!cell) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"ADReturnMoneyDetailCell" owner:nil options:nil].lastObject;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}

@end
