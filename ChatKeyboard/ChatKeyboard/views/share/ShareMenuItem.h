//
//  ShareMenuItem.h
//  ChatKeyboard
//
//  Created by 周彬 on 14-9-8.
//  Copyright (c) 2014年 zhoubin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ShareMenuItem : NSObject

@property (nonatomic, strong) UIImage *normalIconImage;
@property (nonatomic, strong) NSString *title;

- (instancetype)initWithNormalIconImage:(UIImage *)normalIconImage
                                  title:(NSString *)title;


@end
