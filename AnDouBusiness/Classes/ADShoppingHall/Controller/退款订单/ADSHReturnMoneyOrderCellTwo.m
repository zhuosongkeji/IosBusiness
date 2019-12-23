//
//  ADSHReturnMoneyOrderCellTwo.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/21.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADSHReturnMoneyOrderCellTwo.h"

@interface ADSHReturnMoneyOrderCellTwo ()

@end

@implementation ADSHReturnMoneyOrderCellTwo

- (IBAction)orderDetailBtnClick:(UIButton *)sender {
    if (self.orderDetailBtnClickTask) {
        self.orderDetailBtnClickTask();
    }
}

+ (instancetype)registerCellForTableView:(UITableView *)tableView
{
    static NSString * const ADSHReturnMoneyOrderCellTwoID = @"ADSHReturnMoneyOrderCellTwoID";
    ADSHReturnMoneyOrderCellTwo *cell = [tableView dequeueReusableCellWithIdentifier:ADSHReturnMoneyOrderCellTwoID];
    if (!cell) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"ADSHReturnMoneyOrderCellTwo" owner:nil options:nil].lastObject;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}

@end
