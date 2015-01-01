//
//  ShareView.m
//  ChatKeyboard
//
//  Created by 周彬 on 14-9-7.
//  Copyright (c) 2014年 zhoubin. All rights reserved.
//

#import "ShareView.h"

@interface ShareView ()

@property (nonatomic,assign)NSInteger numberOfItems;

@end

@implementation ShareView

- (id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        if ([self.dataSource respondsToSelector:@selector(numberOfItem)]) {
            _numberOfItems = [self.dataSource numberOfItem];
        }
    }
    return self;
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
