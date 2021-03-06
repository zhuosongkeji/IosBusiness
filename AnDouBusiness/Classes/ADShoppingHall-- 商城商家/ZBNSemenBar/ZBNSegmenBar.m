//
//  ZBNSegmenBar.m
//  OgrinterProduct
//
//  Created by 周芳圆 on 2019/12/10.
//  Copyright © 2019 RXF. All rights reserved.
//

#import "ZBNSegmenBar.h"
#import "UIView+ZBNExtension.h"


#define kMinMargin 30

@interface ZBNSegmenBar ()
{
    // 记录最后一次点击的按钮
    UIButton *_lastBtn;
}
/** 内容承载视图 */
@property (nonatomic, weak) UIScrollView *contentView;

/** 添加的按钮数据 */
@property (nonatomic, strong) NSMutableArray <UIButton *>*itemBtns;

/** 指示器 */
@property (nonatomic, weak) UIView *indicatorView;

@property (nonatomic, strong) ZBNSegmenBarConfig *config;

@end

@implementation ZBNSegmenBar


/**
 标签是否平分
 */
-(void)setIsDivideEqually:(BOOL)isDivideEqually{
    
    _isDivideEqually = isDivideEqually;
    
    [self layoutIfNeeded];
    [self layoutSubviews];
}

#pragma mark - 接口
+ (instancetype)segmentBarWithFrame: (CGRect)frame {
    ZBNSegmenBar *segmentBar = [[ZBNSegmenBar alloc] initWithFrame:frame];
    // 添加内容承载视图
    return segmentBar;
}

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = self.config.segmentBarBackColor;
    }
    return self;
}


- (void)updateWithConfig: (void(^)(ZBNSegmenBarConfig *config))configBlock {
    
    if (configBlock) {
        configBlock(self.config);
    }
    
    // 按照当前的 self.config 进行刷新
    self.backgroundColor = self.config.segmentBarBackColor;
    
    for (UIButton *btn in self.itemBtns) {
        [btn setTitleColor:self.config.itemNormalColor forState:UIControlStateNormal];
         [btn setTitleColor:self.config.itemSelectColor forState:UIControlStateSelected];
        btn.titleLabel.font = self.config.itemFont;
    }
    
    // 指示器
    self.indicatorView.backgroundColor = self.config.indicatorColor;
    self.indicatorView.ad_height = self.config.indicatorHeight;
   
    if (self.config.indicatorIsHidden) {
        self.indicatorView.alpha = 0;
    } else{
         self.indicatorView.alpha = 1;
    }
    
    [self setNeedsLayout];
    [self layoutIfNeeded];
    
    
}


- (void)setSelectIndex:(NSInteger)selectIndex {
    // 数据过滤
    if (self.itemBtns.count == 0 || selectIndex < 0 || selectIndex > self.itemBtns.count - 1) {
        return;
    }
    _selectIndex = selectIndex;
    UIButton *btn = self.itemBtns[selectIndex];
    [self btnClick:btn];
}
- (void)setItems:(NSArray<NSString *> *)items {
    _items = items;
    
    // 删除之前添加过多额组件
    [self.itemBtns makeObjectsPerformSelector:@selector(removeFromSuperview)];
    self.itemBtns = nil;
    
    
    // 根据所有的选项数据源， 创建Button, 添加到内容视图
    for (NSString *item in items) {
        UIButton *btn = [[UIButton alloc] init];
        btn.tag = self.itemBtns.count;
        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchDown];
        [btn setTitleColor:self.config.itemNormalColor forState:UIControlStateNormal];
        [btn setTitleColor:self.config.itemSelectColor forState:UIControlStateSelected];
        btn.titleLabel.font = self.config.itemFont;
        [btn setTitle:item forState:UIControlStateNormal];
        [self.contentView addSubview:btn];
        [self.itemBtns addObject:btn];
    }
    
    // 手动刷新布局
    [self setNeedsLayout];
    [self layoutIfNeeded];
    
}


#pragma mark - 私有方法
- (void)btnClick: (UIButton *)btn {
    
    if ([self.delegate respondsToSelector:@selector(segmentBar:didSelectIndex:fromIndex:)]) {
        [self.delegate segmentBar:self didSelectIndex:btn.tag fromIndex:_lastBtn.tag];
    }

    _selectIndex = btn.tag;
    
    _lastBtn.selected = NO;
    btn.selected = YES;
    _lastBtn = btn;
    
    [UIView animateWithDuration:0.1 animations:^{
        
        
//    self.indicatorView.width = self.config.indicatorExtraW * 2;
        

        self.indicatorView.ad_centerX = btn.ad_centerX;
    }];
    
    
    // 1. 县滚动到btn的位置

    CGFloat scrollX = btn.ad_centerX - self.contentView.ad_width * 0.5;
    
    if (scrollX < 0) {
        scrollX = 0;
    }
    if (scrollX > self.contentView.contentSize.width - self.contentView.ad_width) {
        scrollX = self.contentView.contentSize.width - self.contentView.ad_width;
    }
    
    [self.contentView setContentOffset:CGPointMake(scrollX, 0) animated:YES];
    
}

#pragma mark - 布局
- (void)layoutSubviews {
    [super layoutSubviews];
    self.contentView.frame = self.bounds;
//    self.layer.cornerRadius = 15;
    //如果title是均分的
    if (self.isDivideEqually) {
        
        CGFloat lastx = 0;
        
        NSInteger titleCount = self.itemBtns.count;
        for (UIButton *btn in self.itemBtns) {
            btn.ad_width = self.ad_width/titleCount;
            
            
            btn.ad_y = 0;
            btn.ad_x = lastx;
            btn.ad_height = self.ad_height;
            lastx += btn.ad_width;
        }
        
        self.contentView.contentSize = CGSizeMake(lastx, 0);
        if (self.itemBtns.count == 0) {
            return;
        }
        UIButton *btn = self.itemBtns[self.selectIndex];
        
        self.indicatorView.ad_width = self.config.indicatorExtraW;
        self.indicatorView.ad_centerX = btn.ad_centerX;
        self.indicatorView.ad_height = self.config.indicatorHeight;
        self.indicatorView.ad_y = self.ad_height - self.indicatorView.ad_height;
        
        return;
    }
    
    
    
    
    
    
    
    
    // 计算margin
    CGFloat totalBtnWidth = 0;
    for (UIButton *btn in self.itemBtns) {
        [btn sizeToFit];
        totalBtnWidth += btn.ad_width;
    }
    
    CGFloat caculateMargin = (self.ad_width - totalBtnWidth) / (self.items.count + 1);
    if (caculateMargin < kMinMargin) {
        caculateMargin = kMinMargin;
    }
    
    CGFloat lastX = caculateMargin;
    
    for (UIButton *btn in self.itemBtns) {
        // w, h
        [btn sizeToFit];
        // y 0
        // x, y,
        btn.ad_y = 0;
        btn.ad_x = lastX;
        btn.ad_height = self.ad_height;
        
        lastX += btn.ad_width + caculateMargin;
        
    }
    
    self.contentView.contentSize = CGSizeMake(lastX, 0);
    
    if (self.itemBtns.count == 0) {
        return;
    }
    UIButton *btn = self.itemBtns[self.selectIndex];
    
    self.indicatorView.ad_width = btn.ad_width + self.config.indicatorExtraW * 2;
    
    
    self.indicatorView.ad_centerX = btn.ad_centerX;
    self.indicatorView.ad_height = self.config.indicatorHeight;
    self.indicatorView.ad_y = self.ad_height - self.indicatorView.ad_height;
    
    
    
    
    
}

#pragma mark - 懒加载

- (NSMutableArray<UIButton *> *)itemBtns {
    if (!_itemBtns) {
        _itemBtns = [NSMutableArray array];
    }
    return _itemBtns;
}
- (UIView *)indicatorView {
    if (!_indicatorView) {
        CGFloat indicatorH = self.config.indicatorHeight;
        UIView *indicatorView = [[UIView alloc] initWithFrame:CGRectMake(0, self.ad_height - indicatorH, 0, indicatorH)];
        indicatorView.backgroundColor = self.config.indicatorColor;
        [self.contentView addSubview:indicatorView];
        _indicatorView = indicatorView;
        _indicatorView.alpha = 1;
    }
    return _indicatorView;
}

- (UIScrollView *)contentView {
    if (!_contentView) {
        UIScrollView *scrollView = [[UIScrollView alloc] init];
        scrollView.showsHorizontalScrollIndicator = NO;
        [self addSubview:scrollView];
        _contentView = scrollView;
    }
    return _contentView;
}

- (ZBNSegmenBarConfig *)config {
    if (!_config) {
        _config = [ZBNSegmenBarConfig defaultConfig];
    }
    return _config;
}

@end
