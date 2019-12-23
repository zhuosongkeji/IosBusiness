//
//  ADSHMyWalletCommonCell.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/21.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADSHMyWalletCommonCell.h"

@implementation ADSHMyWalletCommonCell

+ (instancetype)registerCellForTableView:(UITableView *)tableView
{
    static NSString * const ADSHMyWalletCommonCellID = @"ADSHMyWalletCommonCellID";
    ADSHMyWalletCommonCell *cell = [tableView dequeueReusableCellWithIdentifier:ADSHMyWalletCommonCellID];
    if (!cell) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"ADSHMyWalletCommonCell" owner:nil options:nil].lastObject;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}

@end
