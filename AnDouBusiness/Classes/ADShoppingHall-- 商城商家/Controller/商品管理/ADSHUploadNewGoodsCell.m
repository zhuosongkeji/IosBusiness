//
//  ADSHUploadNewGoodsCell.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/21.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADSHUploadNewGoodsCell.h"

@implementation ADSHUploadNewGoodsCell

+ (instancetype)registerTableViewCellWith:(UITableView *)tableView
{
    static NSString * const ADSHUploadNewGoodsCellID = @"ADSHUploadNewGoodsCellID";
    
    ADSHUploadNewGoodsCell *cell = [tableView dequeueReusableCellWithIdentifier:ADSHUploadNewGoodsCellID];
    if (!cell) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"ADSHUploadNewGoodsCell" owner:nil options:nil].lastObject;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}
@end
