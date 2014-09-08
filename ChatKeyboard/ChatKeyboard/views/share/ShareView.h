//
//  ShareView.h
//  ChatKeyboard
//
//  Created by 周彬 on 14-9-7.
//  Copyright (c) 2014年 zhoubin. All rights reserved.
//  分享页 

#import <UIKit/UIKit.h>
#import "ShareMenuItem.h"

@protocol ShareViewDataSource <NSObject>

@required
- (NSInteger)numberOfItem;
- (ShareMenuItem *)cellForItemAtIndex:(NSInteger )index;

@end

@protocol ShareViewDelegate <NSObject>

- (void)didSelectItemIndex:(NSInteger)index;

@end

@interface ShareView : UIView

@property (nonatomic,weak)id<ShareViewDataSource>dataSource;
@property (nonatomic,weak)id<ShareViewDelegate>delegate;

@end
