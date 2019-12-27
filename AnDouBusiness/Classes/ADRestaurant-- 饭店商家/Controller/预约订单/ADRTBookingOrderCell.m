//
//  ADRTBookingOrderCell.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/24.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADRTBookingOrderCell.h"


@interface ADRTBookingOrderCell ()

/*! 红色的背景view */
@property (weak, nonatomic) IBOutlet UIView *redView;


@end

@implementation ADRTBookingOrderCell


- (void)awakeFromNib
{
    [super awakeFromNib];
    
    self.redView.layer.cornerRadius = 15;
    
}

// 订单详情的点击
- (IBAction)orderDetailBtnClick:(UIButton *)sender {
    
    if (self.orderDetailBtnClickTask) {
        self.orderDetailBtnClickTask();
    }
}

// 注册cell
+ (instancetype)registerTableViewCellWith:(UITableView *)tableView
{
    static NSString * const ADRTBookingOrderCellID = @"ADRTBookingOrderCellID";
    
    ADRTBookingOrderCell *cell = [tableView dequeueReusableCellWithIdentifier:ADRTBookingOrderCellID];
    if (!cell) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"ADRTBookingOrderCell" owner:nil options:nil].lastObject;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}

@end
