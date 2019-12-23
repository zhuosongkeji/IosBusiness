//
//  ADStoreManageCellFive.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/19.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADStoreManageCellFive.h"

@implementation ADStoreManageCellFive

+ (instancetype)registerTableViewCellWith:(UITableView *)tableView
{
    static NSString * const ADStoreManageCellFiveID = @"storeFiveCellID";
    ADStoreManageCellFive *cell = [tableView dequeueReusableCellWithIdentifier:ADStoreManageCellFiveID];
    if (cell == nil) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"ADStoreManageCellFive" owner:nil options:nil].lastObject;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}


@end
