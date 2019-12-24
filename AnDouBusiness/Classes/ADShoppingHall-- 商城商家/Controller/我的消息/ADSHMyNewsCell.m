//
//  ADSHMyNewsCell.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/21.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADSHMyNewsCell.h"

@implementation ADSHMyNewsCell

/*! 注册cell */
+ (instancetype)registerCellForTable:(UITableView *)tableView
{
    static NSString  * const ADSHMyNewsCellID = @"ADSHMyNewsCellID";
    ADSHMyNewsCell *cell = [tableView dequeueReusableCellWithIdentifier:ADSHMyNewsCellID];
    if (cell == nil) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"ADSHMyNewsCell" owner:nil options:nil].lastObject;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}
@end
