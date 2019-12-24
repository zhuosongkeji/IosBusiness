//
//  ADRTFoodsManageTitlesView.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/24.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADRTFoodsManageTitlesView.h"


@interface ADRTFoodsManageTitlesView ()




@end

@implementation ADRTFoodsManageTitlesView



- (IBAction)uploadNewFoodsBtnClick:(UIButton *)sender {
    if (self.uploadNewFoodsBtnClickTask) {
        self.uploadNewFoodsBtnClickTask();
    }
}


@end
