//
//  ExpressionView.m
//  ChatKeyboard
//
//  Created by 周彬 on 14-9-7.
//  Copyright (c) 2014年 zhoubin. All rights reserved.
//

#import "ExpressionView.h"

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

- (void)layoutSubviews{
    

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
                expressionBtn.tag = 0;
                
            }else{
                
                NSString *imageStr = [NSString stringWithFormat:@"Expression_%d@2x.png",_currentPage*20+horizontal*7+vertical+1];
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
