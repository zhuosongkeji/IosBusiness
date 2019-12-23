//
//  ADSHWaitDeliverGoodsDetailCell.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/21.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADSHWaitDeliverGoodsDetailCell.h"

@implementation ADSHWaitDeliverGoodsDetailCell

/*! 去发货按钮的点击 */
- (IBAction)deliveGoodsBtnClick:(UIButton *)sender {
    
    if (self.deliveGoodsBtnClickTask) {
        self.deliveGoodsBtnClickTask();
    }
}







+ (instancetype)registerCellForTableView:(UITableView *)tableView
{
    static NSString * const ADSHWaitDeliverGoodsDetailCellID
    = @"ADSHWaitDeliverGoodsDetailCellID";
    ADSHWaitDeliverGoodsDetailCell *cell = [tableView dequeueReusableCellWithIdentifier:ADSHWaitDeliverGoodsDetailCellID];
    if (!cell) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"ADSHWaitDeliverGoodsDetailCell" owner:nil options:nil].lastObject;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}

@end
