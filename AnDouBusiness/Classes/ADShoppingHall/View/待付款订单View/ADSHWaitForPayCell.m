//
//  ADSHWaitForPayCell.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/19.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADSHWaitForPayCell.h"

@implementation ADSHWaitForPayCell



- (IBAction)orderDetailBtnClick:(UIButton *)sender {
    
    if (self.orderDetailBtnClickTask) {
        self.orderDetailBtnClickTask();
    }
    
}






+ (instancetype)registerTableViewCellWith:(UITableView *)tableView
{
    static NSString * const ADSHWaitForPayCellID = @"SHWaitPayCell";
    
    ADSHWaitForPayCell *cell = [tableView dequeueReusableCellWithIdentifier:ADSHWaitForPayCellID];
    if (!cell) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"ADSHWaitForPayCell" owner:nil options:nil].lastObject;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;    
    }
    return cell;
}

@end
