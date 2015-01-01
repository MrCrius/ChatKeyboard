//
//  ExpressionView.m
//  ChatKeyboard
//
//  Created by 周彬 on 14-9-7.
//  Copyright (c) 2014年 zhoubin. All rights reserved.
//

#import "ExpressionView.h"

//表示点击删除按钮~~~~~~~
static const int deleTag = 0;

@interface ExpressionView()

@property (nonatomic,strong)NSMutableArray *expressions;

@end

@implementation ExpressionView

- (id)initWithFrame:(CGRect)frame withCurrentPage:(NSInteger )page
{
    self = [super initWithFrame:frame];
    if (self) {
        _currentPage = page;
        [self setup];
    }
    return self;
}

- (void)dealloc{
    _expressions = nil;
}

- (void)layoutSubviews{

    //右边间隔
    CGFloat edgeRight = 20.0f;
    //左边间隔
    CGFloat edgeLeft  = 20.0f;
    // 上边间隔
    CGFloat edgeTop = 5.0f;
    // 下边间隔
    CGFloat edgeBottom = 5.0f;
    // 表情size
    CGSize  expressionSize = CGSizeMake(24.0f, 24.0f);
    // 每行含有表情个数
    NSInteger verticalQuantity = 7;
    // 行数
    NSInteger horizontalQuantity = 3;
    // 水平间距
    CGFloat horizontalInterval = (CGRectGetWidth(self.bounds)-verticalQuantity*expressionSize.width -edgeLeft -edgeRight)/(verticalQuantity-1);
    // 上下间距
    CGFloat verticalInterval = (CGRectGetHeight(self.bounds)-edgeTop-edgeBottom -horizontalQuantity *expressionSize.height)/(horizontalQuantity-1);
    
    for (int i = 0; i<_expressions.count ; i++) {
        NSMutableArray *perLine = _expressions[i];
        
        for (int j = 0 ;j<perLine.count; j++) {
            UIButton *expressionBtn = perLine[j];
            [expressionBtn setFrame:CGRectMake(j*expressionSize.width+edgeRight+j*horizontalInterval,i*expressionSize.height +i*verticalInterval+edgeTop,expressionSize.width,expressionSize.height)];
        }
    }
}

- (void)setup{
    
    _expressions = [[NSMutableArray alloc]init];

    for (int horizontal= 0; horizontal<3;horizontal++) {
        
        NSMutableArray *verticalBtns = [[NSMutableArray alloc]init];
        
        for (int vertical = 0; vertical<7; vertical++){
            UIButton *expressionBtn =[UIButton buttonWithType:UIButtonTypeCustom];
            [self addSubview:expressionBtn];
            
            if (horizontal*7+vertical+1 ==21) {
                [expressionBtn setBackgroundImage:[UIImage imageNamed:@"DeleteEmoticonBtn_ios7@2x.png"]
                                            forState:UIControlStateNormal];
                expressionBtn.tag = deleTag;
                
            }else{
                
                NSString *imageStr = [NSString stringWithFormat:@"Expression_%ld@2x.png",_currentPage*20+horizontal*7+vertical+1];
                [expressionBtn setBackgroundImage:[UIImage imageNamed:imageStr]
                                            forState:UIControlStateNormal];
                expressionBtn.tag = _currentPage*20+horizontal*7+vertical+1;
            }
            
            [expressionBtn addTarget:self action:@selector(clickExpression:) forControlEvents:UIControlEventTouchUpInside];
            
            [verticalBtns addObject:expressionBtn];
        }
        [_expressions addObject:verticalBtns];
    }
}

- (void)clickExpression:(UIButton *)button{

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
