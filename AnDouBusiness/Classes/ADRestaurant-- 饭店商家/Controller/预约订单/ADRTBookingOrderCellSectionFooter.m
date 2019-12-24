//
//  ADRTBookingOrderCellSectionFooter.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/24.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADRTBookingOrderCellSectionFooter.h"


@interface ADRTBookingOrderCellSectionFooter ()


@property (weak, nonatomic) IBOutlet UIButton *moreBtn;

@end

@implementation ADRTBookingOrderCellSectionFooter

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    [self.moreBtn layoutButtonWithEdgeInsetsStyle:TYButtonEdgeInsetsStyleBottom imageTitleSpace:5];
}

// 更多按钮的点击
- (IBAction)moreBtnClick:(UIButton *)sender {
    if (self.moreBtnClickTask) {
        self.moreBtnClickTask(sender);
    }
}

@end
