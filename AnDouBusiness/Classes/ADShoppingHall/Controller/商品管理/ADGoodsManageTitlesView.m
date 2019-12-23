//
//  ADGoodsManageTitlesView.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/21.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADGoodsManageTitlesView.h"






@implementation ADGoodsManageTitlesView

- (IBAction)uploadNewGoodsClick:(UIButton *)sender {
    if (self.uploadNewGoodsClickTask) {
        self.uploadNewGoodsClickTask();
    }
}


@end
