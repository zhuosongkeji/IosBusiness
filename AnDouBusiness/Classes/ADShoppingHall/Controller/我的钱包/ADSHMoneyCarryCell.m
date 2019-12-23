//
//  ADSHMoneyCarryCell.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/23.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADSHMoneyCarryCell.h"


@interface ADSHMoneyCarryCell ()


@property (weak, nonatomic) IBOutlet UIView *redView;


@end

@implementation ADSHMoneyCarryCell


+ (instancetype)registerCellForTableView:(UITableView *)tableView
{
    static NSString * const ADSHMoneyCarryCellID = @"ADSHMoneyCarryCellID";
    ADSHMoneyCarryCell *cell = [tableView dequeueReusableCellWithIdentifier:ADSHMoneyCarryCellID];
    if (!cell) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"ADSHMoneyCarryCell" owner:nil options:nil].lastObject;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}


- (void)awakeFromNib
{
    [super awakeFromNib];
    
    self.redView.layer.cornerRadius = 10;
    
}

@end
