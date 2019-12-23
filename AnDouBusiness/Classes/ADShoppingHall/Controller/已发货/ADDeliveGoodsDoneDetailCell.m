//
//  ADDeliveGoodsDoneDetailCell.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/21.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADDeliveGoodsDoneDetailCell.h"

@implementation ADDeliveGoodsDoneDetailCell

+ (instancetype)registerCellForTableView:(UITableView *)tableView
{
    static NSString * const ADDeliveGoodsDoneDetailCellID = @"ADDeliveGoodsDoneDetailCellID";
    ADDeliveGoodsDoneDetailCell *cell = [tableView dequeueReusableCellWithIdentifier:ADDeliveGoodsDoneDetailCellID];
    if (!cell) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"ADDeliveGoodsDoneDetailCell" owner:nil options:nil].lastObject;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}
@end
