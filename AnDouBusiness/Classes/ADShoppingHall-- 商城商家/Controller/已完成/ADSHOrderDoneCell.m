//
//  ADSHOrderDoneCell.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/21.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADSHOrderDoneCell.h"

@implementation ADSHOrderDoneCell

+ (instancetype)registerCellForTableView:(UITableView *)tableView
{
    static NSString * const ADSHOrderDoneCellID = @"ADSHOrderDoneCellID";
    ADSHOrderDoneCell *cell = [tableView dequeueReusableCellWithIdentifier:ADSHOrderDoneCellID];
    if (!cell) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"ADSHOrderDoneCell" owner:nil options:nil].lastObject;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}

@end
