//
//  ChatExpressionView.m
//  ChatKeyboard
//
//  Created by 周彬 on 14-9-8.
//  Copyright (c) 2014年 zhoubin. All rights reserved.
//

#import "ChatExpressionView.h"
#import "Constant.h"
#import "ExpressionView.h"
#import "ExpressionMoreBar.h"

#define kExpressionBarHeight  36   // 表情下面控件

@interface ChatExpressionView ()<UIScrollViewDelegate>

@property (nonatomic,strong) UIScrollView *scrollView;
@property (nonatomic,strong) UIPageControl *pageControl;

@end

@implementation ChatExpressionView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)setup{
    self.backgroundColor = RGBCOLOR(248, 248, 255);
    
    _scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0.0f,0.0f,CGRectGetWidth(self.bounds),CGRectGetHeight(self.bounds)-30.0f-kExpressionBarHeight)];
    _scrollView.delegate = self;
    _scrollView.pagingEnabled = YES;
    _scrollView.showsHorizontalScrollIndicator = NO;
    [self addSubview:_scrollView];
    
    for (int i = 0; i<3 ; i++) {
        ExpressionView *expressionView = [[ExpressionView alloc]initWithFrame:CGRectMake(i*CGRectGetWidth(self.bounds),0.0f,CGRectGetWidth(self.bounds),CGRectGetHeight(_scrollView.bounds)) withCurrentPage:i];
        [_scrollView addSubview:expressionView];
    }
    
    _pageControl = [[UIPageControl alloc]initWithFrame:CGRectMake(0,CGRectGetMaxY(_scrollView.frame),CGRectGetWidth(self.bounds),30.0f)];
    [self addSubview:_pageControl];
    [_pageControl setPageIndicatorTintColor:[UIColor lightGrayColor]];
    [_pageControl setCurrentPageIndicatorTintColor:[UIColor grayColor]];
    _pageControl.numberOfPages = 3;
    _pageControl.currentPage   = 0;
    
    ExpressionMoreBar *moreBar = [[ExpressionMoreBar alloc]initWithFrame:CGRectMake(0.0f,CGRectGetMaxY(_pageControl.frame),CGRectGetWidth(self.bounds), kExpressionBarHeight)];
    [self addSubview:moreBar];
    
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    int page = scrollView.contentOffset.x/320;
    _pageControl.currentPage = page;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
