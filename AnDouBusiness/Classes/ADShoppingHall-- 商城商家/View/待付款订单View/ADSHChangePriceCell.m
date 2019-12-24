//
//  ADSHChangePriceCell.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/19.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//  ChangePriceCellID

#import "ADSHChangePriceCell.h"

@implementation ADSHChangePriceCell

+ (instancetype)registerTableViewCellWith:(UITableView *)tableView
{
    static NSString * const ADSHChangePriceCellID = @"ChangePriceCellID";
    ADSHChangePriceCell *cell = [tableView dequeueReusableCellWithIdentifier:ADSHChangePriceCellID];
    if (cell == nil) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"ADSHChangePriceCell" owner:nil options:nil].lastObject;
    }
    return cell;
}

@end
