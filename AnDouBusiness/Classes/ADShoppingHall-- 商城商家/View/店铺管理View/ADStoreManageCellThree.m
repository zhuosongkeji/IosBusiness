//
//  ADStoreManageCellThree.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/19.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADStoreManageCellThree.h"

@implementation ADStoreManageCellThree

+ (instancetype)registerTableViewCellWith:(UITableView *)tableView
{
    static NSString * const ADStoreManageCellThreeID = @"storeThreeCellID";
    ADStoreManageCellThree *cell = [tableView dequeueReusableCellWithIdentifier:ADStoreManageCellThreeID];
    if (cell == nil) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"ADStoreManageCellThree" owner:nil options:nil].lastObject;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}

@end
