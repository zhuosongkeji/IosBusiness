//
//  ADDeliveGoodsDoneCell.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/21.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADDeliveGoodsDoneCell.h"

@implementation ADDeliveGoodsDoneCell

/*! 详情按钮的点击 */
- (IBAction)orderDetailBtnClick:(UIButton *)sender {
    if (self.orderDetailBtnClickTask) {
        self.orderDetailBtnClickTask();
    }
}

+ (instancetype)registerCellForTableView:(UITableView *)tableView
{
    static NSString * const ADDeliveGoodsDoneCellID = @"ADDeliveGoodsDoneCellID";
    ADDeliveGoodsDoneCell *cell = [tableView dequeueReusableCellWithIdentifier:ADDeliveGoodsDoneCellID];
    if (!cell) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"ADDeliveGoodsDoneCell" owner:nil options:nil].lastObject;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}

@end
