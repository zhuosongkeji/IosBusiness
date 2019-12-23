//
//  ADSHWaitDeliverGoodsCell.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/21.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADSHWaitDeliverGoodsCell.h"

@implementation ADSHWaitDeliverGoodsCell


- (IBAction)orderDetailBtnClick:(UIButton *)sender {
    if (self.orderDetailBtnClickTask) {
        self.orderDetailBtnClickTask();
    }
}


- (IBAction)DeliverGoodsBtnClick:(UIButton *)sender {
    if (self.deliverGoodsBtnClickTask) {
        self.deliverGoodsBtnClickTask();
    }
}

+ (instancetype)registerCellForTableView:(UITableView *)tableView
{
    static NSString * const ADSHWaitDeliverGoodsCellID = @"ADSHWaitDeliverGoodsCellID";
    ADSHWaitDeliverGoodsCell *cell = [tableView dequeueReusableCellWithIdentifier:ADSHWaitDeliverGoodsCellID];
    if (!cell) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"ADSHWaitDeliverGoodsCell" owner:nil options:nil].lastObject;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}

@end
