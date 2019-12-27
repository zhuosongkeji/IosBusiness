//
//  ADSHBaseOrderVC.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/25.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADSHBaseOrderVC.h"
#import "ADSHOrderDoneCell.h"

@interface ADSHBaseOrderVC ()

@end

@implementation ADSHBaseOrderVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = ADCommonBgColor;
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ADSHOrderDoneCell *cell = [ADSHOrderDoneCell registerCellForTableView:tableView];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 250;
}

@end
