//
//  ADRTDoneOrderCell.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/24.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADRTDoneOrderCell.h"


@interface ADRTDoneOrderCell ()


@property (weak, nonatomic) IBOutlet UIView *redView;


@end

@implementation ADRTDoneOrderCell

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    self.redView.layer.cornerRadius = 15;
}


- (IBAction)orderDetailBtnClick:(UIButton *)sender {
}


+ (instancetype)registerTableViewCellWith:(UITableView *)tableView
{
    static NSString * const ADRTDoneOrderCellID = @"ADRTDoneOrderCellID";
    
    ADRTDoneOrderCell *cell = [tableView dequeueReusableCellWithIdentifier:ADRTDoneOrderCellID];
    if (!cell) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"ADRTDoneOrderCell" owner:nil options:nil].lastObject;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}

@end
