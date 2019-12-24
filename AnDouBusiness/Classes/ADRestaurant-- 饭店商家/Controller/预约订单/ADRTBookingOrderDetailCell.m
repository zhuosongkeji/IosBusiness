//
//  ADRTBookingOrderDetailCell.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/24.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADRTBookingOrderDetailCell.h"

@implementation ADRTBookingOrderDetailCell

+ (instancetype)registerTableViewCellWith:(UITableView *)tableView
{
    static NSString * const ADRTBookingOrderDetailCellID = @"ADRTBookingOrderDetailCellID";
    
    ADRTBookingOrderDetailCell *cell = [tableView dequeueReusableCellWithIdentifier:ADRTBookingOrderDetailCellID];
    if (!cell) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"ADRTBookingOrderDetailCell" owner:nil options:nil].lastObject;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}



- (void)setFrame:(CGRect)frame
{
    frame.size.height -= 1;
    [super setFrame:frame];
}

@end
