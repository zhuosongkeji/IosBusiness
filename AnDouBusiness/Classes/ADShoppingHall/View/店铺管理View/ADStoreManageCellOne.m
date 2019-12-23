//
//  ADStoreManageCellOne.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/19.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADStoreManageCellOne.h"

@implementation ADStoreManageCellOne

+ (instancetype)registerTableViewCellWith:(UITableView *)tableView
{
    static NSString * const ADStoreManageCellOneID = @"storeOneCellID";
    ADStoreManageCellOne *cell = [tableView dequeueReusableCellWithIdentifier:ADStoreManageCellOneID];
    if (cell == nil) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"ADStoreManageCellOne" owner:nil options:nil].lastObject;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}


@end
