//
//  ADRTUploadNewFoodCell.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/24.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADRTUploadNewFoodCell.h"

@implementation ADRTUploadNewFoodCell

+ (instancetype)registerTableViewCellWith:(UITableView *)tableView
{
    static NSString * const ADRTUploadNewFoodCellID = @"ADRTUploadNewFoodCellID";
    
    ADRTUploadNewFoodCell *cell = [tableView dequeueReusableCellWithIdentifier:ADRTUploadNewFoodCellID];
    if (!cell) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"ADRTUploadNewFoodCell" owner:nil options:nil].lastObject;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}
@end
