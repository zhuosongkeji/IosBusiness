//
//  ADCommonFooterView.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/21.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADCommonFooterView.h"

@interface ADCommonFooterView ()

/*! 中间按钮 */
@property (weak, nonatomic) IBOutlet UIButton *footerViewBtn;

@end


@implementation ADCommonFooterView

/*! 按钮的点击事件 */
- (IBAction)footerViewBtnClick:(UIButton *)sender {
    if (self.footerViewBtnClickTask) {
        self.footerViewBtnClickTask();
    }
}
/*! 设置按钮的图片 */
- (ADCommonFooterView * _Nonnull (^)(NSString * _Nonnull))setButtonText
{
    return ^(NSString *buttonText) {
        [self.footerViewBtn setTitle:buttonText forState:UIControlStateNormal];
        return self;
    };
}


@end
