//
//  ADStatisticsViewOne.m
//  AnDouBusiness
//
//  Created by 周芳圆 on 2019/12/26.
//  Copyright © 2019 ZhouBunian. All rights reserved.
//

#import "ADStatisticsViewOne.h"
#import "ZFChart.h"


@interface ADStatisticsViewOne () <ZFGenericChartDataSource, ZFBarChartDelegate>

@property (nonatomic, strong) ZFBarChart * barChart;

@property (nonatomic, assign) CGFloat height;

@end

@implementation ADStatisticsViewOne

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self setBarChart];
    }
    return self;
}

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    [self setBarChart];
}


- (void)setBarChart{

    self.barChart = [[ZFBarChart alloc] initWithFrame:CGRectMake(0, 20, SCREEN_WIDTH , 200)];
    self.barChart.dataSource = self;
    self.barChart.delegate = self;
    self.barChart.topicLabel.text = @"单量统计";
//    self.barChart.unit = @"人";
//    self.barChart.isAnimated = NO;
//    self.barChart.isResetAxisLineMinValue = YES;
    self.barChart.isResetAxisLineMaxValue = YES;
//    self.barChart.isShowAxisLineValue = NO;
//    self.barChart.valueLabelPattern = kPopoverLabelPatternBlank;
    self.barChart.isShowXLineSeparate = YES;
    self.barChart.isShowYLineSeparate = YES;
//    self.barChart.topicLabel.textColor = ZFWhite;
//    self.barChart.unitColor = ZFWhite;
//    self.barChart.xAxisColor = ZFWhite;
//    self.barChart.yAxisColor = ZFWhite;
//    self.barChart.xAxisColor = ZFClear;
//    self.barChart.yAxisColor = ZFClear;
//    self.barChart.axisLineNameColor = ZFWhite;
//    self.barChart.axisLineValueColor = ZFWhite;
//    self.barChart.backgroundColor = ZFPurple;
//    self.barChart.isShowAxisArrows = NO;
    self.barChart.separateLineStyle = kLineStyleDashLine;
//    self.barChart.isMultipleColorInSingleBarChart = YES;
//    self.barChart.separateLineDashPhase = 0.f;
//    self.barChart.separateLineDashPattern = @[@(5), @(5)];
    
    [self addSubview:self.barChart];
    [self.barChart strokePath];
}

#pragma mark - ZFGenericChartDataSource

- (NSArray *)valueArrayInGenericChart:(ZFGenericChart *)chart{
    return @[@"123", @"256", @"300", @"283", @"490", @"236",@"234"];
}

- (NSArray *)nameArrayInGenericChart:(ZFGenericChart *)chart{
    return @[@"9-1", @"9-2", @"9-3", @"9-4", @"9-5", @"9-6",@"9-7"];
}

//- (NSArray *)colorArrayInGenericChart:(ZFGenericChart *)chart{
//    return @[ZFMagenta];
//
////    return @[ZFRandom, ZFRandom, ZFRandom, ZFRandom, ZFRandom, ZFRandom];
//}

- (CGFloat)axisLineMaxValueInGenericChart:(ZFGenericChart *)chart{
    return 250;
}

- (CGFloat)axisLineMinValueInGenericChart:(ZFGenericChart *)chart{
    return 20;
}

- (NSUInteger)axisLineSectionCountInGenericChart:(ZFGenericChart *)chart{
    return 10;
}

//- (NSInteger)axisLineStartToDisplayValueAtIndex:(ZFGenericChart *)chart{
//    return 30;
//}

- (void)genericChartDidScroll:(UIScrollView *)scrollView{
    NSLog(@"当前偏移量 ------ %f", scrollView.contentOffset.x);
}

#pragma mark - ZFBarChartDelegate

- (CGFloat)barWidthInBarChart:(ZFBarChart *)barChart{
    return 20.f;
}

- (CGFloat)paddingForGroupsInBarChart:(ZFBarChart *)barChart{
    return 20.f;
}

//- (id)valueTextColorArrayInBarChart:(ZFGenericChart *)barChart{
//    return ZFBlue;
//}

- (NSArray *)gradientColorArrayInBarChart:(ZFBarChart *)barChart{
    ZFGradientAttribute * gradientAttribute = [[ZFGradientAttribute alloc] init];
    gradientAttribute.colors = @[(id)ZFRed.CGColor, (id)ZFWhite.CGColor];
    gradientAttribute.locations = @[@(0.5), @(0.8)];

    return [NSArray arrayWithObjects:gradientAttribute, nil];
}

- (void)barChart:(ZFBarChart *)barChart didSelectBarAtGroupIndex:(NSInteger)groupIndex barIndex:(NSInteger)barIndex bar:(ZFBar *)bar popoverLabel:(ZFPopoverLabel *)popoverLabel{
    NSLog(@"第%ld组========第%ld个",(long)groupIndex,(long)barIndex);
    
    //可在此处进行bar被点击后的自身部分属性设置,可修改的属性查看ZFBar.h
    bar.barColor = ZFGold;
    bar.isAnimated = YES;
//    bar.opacity = 0.5;
    [bar strokePath];
    
    //可将isShowAxisLineValue设置为NO，然后执行下句代码进行点击才显示数值
//    popoverLabel.hidden = NO;
}

- (void)barChart:(ZFBarChart *)barChart didSelectPopoverLabelAtGroupIndex:(NSInteger)groupIndex labelIndex:(NSInteger)labelIndex popoverLabel:(ZFPopoverLabel *)popoverLabel{
    NSLog(@"第%ld组========第%ld个",(long)groupIndex,(long)labelIndex);
    
    //可在此处进行popoverLabel被点击后的自身部分属性设置
//    popoverLabel.textColor = ZFSkyBlue;
//    [popoverLabel strokePath];
}


@end
