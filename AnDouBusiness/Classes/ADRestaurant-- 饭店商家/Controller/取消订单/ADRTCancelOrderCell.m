//
//  ADRTCancelOrderCell.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/24.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADRTCancelOrderCell.h"



@interface ADRTCancelOrderCell ()


@property (weak, nonatomic) IBOutlet UIView *redView;



@end

@implementation ADRTCancelOrderCell


- (void)awakeFromNib
{
    [super awakeFromNib];
    
    self.redView.layer.cornerRadius = 15;
    
}


// 预约详情按钮的点击
- (IBAction)bookingBtnClick:(UIButton *)sender {
    
    if (self.bookingBtnClickTask) {
        self.bookingBtnClickTask();
    }
}

+ (instancetype)registerTableViewCellWith:(UITableView *)tableView
{
    static NSString * const ADRTCancelOrderCellID = @"ADRTCancelOrderCellID";
    
    ADRTCancelOrderCell *cell = [tableView dequeueReusableCellWithIdentifier:ADRTCancelOrderCellID];
    if (!cell) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"ADRTCancelOrderCell" owner:nil options:nil].lastObject;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}

@end
