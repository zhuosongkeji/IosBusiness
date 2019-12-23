//
//  ADNotificationCell.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/23.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADNotificationCell.h"


@interface ADNotificationCell ()

@property (weak, nonatomic) IBOutlet UIView *tipsView;


@end

@implementation ADNotificationCell





- (void)awakeFromNib
{
    [super awakeFromNib];
    
    self.tipsView.layer.cornerRadius = 10;
    
    
}



+ (instancetype)registerTableViewCellWith:(UITableView *)tableView
{
    static NSString * const ADNotificationCellID = @"ADNotificationCellID";
    
    ADNotificationCell *cell = [tableView dequeueReusableCellWithIdentifier:ADNotificationCellID];
    if (!cell) {
        cell = [[NSBundle mainBundle] loadNibNamed:@"ADNotificationCell" owner:nil options:nil].lastObject;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    return cell;
}
@end
