//
//  ADSHWaitForPayOrderDetailCell.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/19.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADSHWaitForPayOrderDetailCell.h"

@implementation ADSHWaitForPayOrderDetailCell



- (IBAction)changePriceBtnClick:(UIButton *)sender {
    
    if (self.changePriceBtnClickTask) {
        self.changePriceBtnClickTask();
    }
}



+ (instancetype)registerTableViewCellWith:(UITableView *)tableView
{
    static NSString * const ADSHWaitForPayOrderDetailCellID = @"SHWaitPayDetailCell";
    
    ADSHWaitForPayOrderDetailCell *cell = [tableView dequeueReusableCellWithIdentifier:ADSHWaitForPayOrderDetailCellID];
    if (!cell) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"ADSHWaitForPayOrderDetailCell" owner:nil options:nil].lastObject;
    }
    return cell;
}

@end
