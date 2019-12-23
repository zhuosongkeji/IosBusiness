//
//  ADHBWaitCheckInDetailCell.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/23.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADHBWaitCheckInDetailCell.h"

@implementation ADHBWaitCheckInDetailCell






+ (instancetype)registerCellForTableView:(UITableView *)tableView
{
    static NSString * const ADHBWaitCheckInDetailCellID = @"ADHBWaitCheckInDetailCellID";
    ADHBWaitCheckInDetailCell *cell = [tableView dequeueReusableCellWithIdentifier:ADHBWaitCheckInDetailCellID];
    if (!cell) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"ADHBWaitCheckInDetailCell" owner:nil options:nil].lastObject;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}


@end
