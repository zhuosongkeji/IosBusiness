//
//  ADHBWaitCheckInCell.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/23.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADHBWaitCheckInCell.h"

@implementation ADHBWaitCheckInCell


- (IBAction)orderDetailBtnClick:(UIButton *)sender {
    if (self.orderDetailBtnClickTask) {
        self.orderDetailBtnClickTask();
    }
}




+ (instancetype)registerCellForTableView:(UITableView *)tableView
{
    static NSString * const ADHBWaitCheckInCellID = @"ADHBWaitCheckInCellID";
    ADHBWaitCheckInCell *cell = [tableView dequeueReusableCellWithIdentifier:ADHBWaitCheckInCellID];
    if (!cell) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"ADHBWaitCheckInCell" owner:nil options:nil].lastObject;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}

@end
