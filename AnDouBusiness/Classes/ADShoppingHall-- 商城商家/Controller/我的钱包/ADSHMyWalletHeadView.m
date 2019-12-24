//
//  ADSHMyWalletHeadView.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/21.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADSHMyWalletHeadView.h"


@interface ADSHMyWalletHeadView ()

/*! 余额提现按钮的背景view */
@property (weak, nonatomic) IBOutlet UIView *moneyCarryBackView;



@end

@implementation ADSHMyWalletHeadView

/*! 余额提现按钮的点击 */
- (IBAction)moneyCarryBtnClick:(UIButton *)sender {
    if (self.moneyCarryBtnClickTask) {
        self.moneyCarryBtnClickTask();
    }
}


- (void)awakeFromNib
{
    [super awakeFromNib];
    
    self.moneyCarryBackView.layer.cornerRadius = 15;
    self.moneyCarryBackView.layer.borderColor = [UIColor whiteColor].CGColor;
    self.moneyCarryBackView.layer.borderWidth = 0.5;
}

@end
