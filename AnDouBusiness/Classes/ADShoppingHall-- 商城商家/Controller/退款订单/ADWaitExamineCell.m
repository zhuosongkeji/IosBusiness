//
//  ADWaitExamineCell.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/21.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADWaitExamineCell.h"

@implementation ADWaitExamineCell

+ (instancetype)registerCellForTableView:(UITableView *)tableView
{
    static NSString * const ADWaitExamineCellID = @"ADWaitExamineCellID";
    ADWaitExamineCell *cell = [tableView dequeueReusableCellWithIdentifier:ADWaitExamineCellID];
    if (!cell) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"ADWaitExamineCell" owner:nil options:nil].lastObject;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}

@end
