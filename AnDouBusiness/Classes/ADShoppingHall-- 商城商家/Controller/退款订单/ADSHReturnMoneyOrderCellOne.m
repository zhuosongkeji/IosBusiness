//
//  ADSHReturnMoneyOrderCellOne.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/21.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADSHReturnMoneyOrderCellOne.h"

@interface ADSHReturnMoneyOrderCellOne ()

@end

@implementation ADSHReturnMoneyOrderCellOne



- (IBAction)returnMoneyDetailBtnClick:(UIButton *)sender {
    if (self.returnMoneyDetailBtnClickTask) {
        self.returnMoneyDetailBtnClickTask();
    }
}




+ (instancetype)registerCellForTableView:(UITableView *)tableView
{
    static NSString * const ADSHReturnMoneyOrderCellOneID = @"ADSHReturnMoneyOrderCellOneID";
    ADSHReturnMoneyOrderCellOne *cell = [tableView dequeueReusableCellWithIdentifier:ADSHReturnMoneyOrderCellOneID];
    if (!cell) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"ADSHReturnMoneyOrderCellOne" owner:nil options:nil].lastObject;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}
@end
