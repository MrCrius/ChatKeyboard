//
//  ExpressionView.h
//  ChatKeyboard
//
//  Created by 周彬 on 14-9-7.
//  Copyright (c) 2014年 zhoubin. All rights reserved.
//  表情页----

#import <UIKit/UIKit.h>

@interface ExpressionView : UIView

- (id)initWithFrame:(CGRect)frame withCurrentPage:(NSInteger )page;

/**
 * 页位置
 */
@property (nonatomic,assign)NSInteger currentPage;

@end
