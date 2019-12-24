//
//  ADStoreManageCellFour.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/19.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADStoreManageCellFour.h"

@implementation ADStoreManageCellFour

+ (instancetype)registerTableViewCellWith:(UITableView *)tableView
{
    static NSString * const ADStoreManageCellFourID = @"storeFourCellID";
    ADStoreManageCellFour *cell = [tableView dequeueReusableCellWithIdentifier:ADStoreManageCellFourID];
    if (cell == nil) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"ADStoreManageCellFour" owner:nil options:nil].lastObject;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}

@end
