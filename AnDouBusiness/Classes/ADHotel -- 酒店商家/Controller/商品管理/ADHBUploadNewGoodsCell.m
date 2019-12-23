//
//  ADHBUploadNewGoodsCell.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/23.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADHBUploadNewGoodsCell.h"

@implementation ADHBUploadNewGoodsCell

+ (instancetype)registerTableViewCellWith:(UITableView *)tableView
{
    static NSString * const ADHBUploadNewGoodsCellID = @"ADHBUploadNewGoodsCellID";
    
    ADHBUploadNewGoodsCell *cell = [tableView dequeueReusableCellWithIdentifier:ADHBUploadNewGoodsCellID];
    if (!cell) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"ADHBUploadNewGoodsCell" owner:nil options:nil].lastObject;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}

@end
