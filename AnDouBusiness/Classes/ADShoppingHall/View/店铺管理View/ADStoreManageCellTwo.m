//
//  ADStoreManageCellTwo.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/19.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADStoreManageCellTwo.h"

@implementation ADStoreManageCellTwo

+ (instancetype)registerTableViewCellWith:(UITableView *)tableView
{
    static NSString * const ADStoreManageCellTwoID = @"storeTwoCellID";
    ADStoreManageCellTwo *cell = [tableView dequeueReusableCellWithIdentifier:ADStoreManageCellTwoID];
    if (cell == nil) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"ADStoreManageCellTwo" owner:nil options:nil].lastObject;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}



@end
