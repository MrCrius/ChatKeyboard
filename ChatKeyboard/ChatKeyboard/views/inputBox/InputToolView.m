//
//  InputToolView.m
//  ChatKeyboard
//
//  Created by 周彬 on 14-9-7.
//  Copyright (c) 2014年 zhoubin. All rights reserved.
//

#import "InputToolView.h"
#import "InputTextView.h"

@interface InputToolView ()<UITextViewDelegate>

@property (nonatomic,strong)UIButton *voiceBtn;
@property (nonatomic,strong)UIButton *shareBtn;
@property (nonatomic,strong)UIButton *faceBtn;
@property (nonatomic,strong)InputTextView *inputView;

@end

@implementation InputToolView

- (id)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        self.autoresizingMask =  (UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleTopMargin);
        self.userInteractionEnabled = YES;
        
        self.image = [UIImage imageNamed:@"input-bar-background"];
        
        [self setup];
    }
    return self;
}

- (void)dealloc{
    _voiceBtn = nil;
    _shareBtn = nil;
    _faceBtn  = nil;
    _inputView = nil;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    
    CGFloat EdgeTop = 8.0f;
    CGFloat EdgeLeft = 5.0f;
    CGFloat EdgeBottom = 8.0f;
    CGFloat EdgeRight = 5.0;
    // 水平间隔
    CGFloat horizontalSpacing = 5.0f;
    
    CGSize btnSize = CGSizeMake(35.0f, 35.0f);
    
    _voiceBtn.frame = CGRectMake(EdgeLeft,(CGRectGetHeight(self.frame)-btnSize.height)/2.0f,btnSize.width, btnSize.height);
    
    _shareBtn.frame = CGRectMake(CGRectGetWidth(self.frame)-btnSize.width - EdgeRight, (CGRectGetHeight(self.frame)-btnSize.height)/2.0f, btnSize.width, btnSize.height);
    
    _faceBtn.frame = CGRectMake(CGRectGetWidth(self.frame)-(EdgeRight+horizontalSpacing+2*btnSize.width),(CGRectGetHeight(self.frame)-btnSize.height)/2.0f,btnSize.width,btnSize.height);
    
    _inputView.frame = CGRectMake(CGRectGetMaxX(_voiceBtn.frame)+horizontalSpacing,EdgeTop,CGRectGetWidth(self.frame)-3*btnSize.width-EdgeRight-EdgeLeft-3*horizontalSpacing,(CGRectGetHeight(self.frame)-EdgeTop-EdgeBottom));

}

- (void)setup{
    
    _voiceBtn = [self customButtonWithBackGroundImage:[UIImage imageNamed:@"ToolViewKeyboard_ios7"]];
    [self addSubview:_voiceBtn];
    
    _inputView = [[InputTextView alloc]init];
    _inputView.placeHolder = @"想说点什么呢";
    _inputView.returnKeyType = UIReturnKeySend;
    _inputView.enablesReturnKeyAutomatically = YES;
    _inputView.delegate = self;
    [self addSubview:_inputView];
    _inputView.layer.cornerRadius = 5.0f;
    _inputView.layer.borderWidth = 1.0f;
    _inputView.layer.borderColor = [UIColor lightGrayColor].CGColor;
    
     _faceBtn = [self customButtonWithBackGroundImage:[UIImage imageNamed:@"ToolViewEmotion_ios7"]];
    [self addSubview:_faceBtn];
    
    _shareBtn = [self customButtonWithBackGroundImage:[UIImage imageNamed:@"TypeSelectorBtn_Black_ios7"]];
    [self addSubview:_shareBtn];
    
}

- (UIButton *)customButtonWithBackGroundImage:(UIImage *)image{
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:image forState:UIControlStateNormal];
    return button;
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
