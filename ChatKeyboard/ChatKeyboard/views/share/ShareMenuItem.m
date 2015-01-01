//
//  ShareMenuItem.m
//  ChatKeyboard
//
//  Created by 周彬 on 14-9-8.
//  Copyright (c) 2014年 zhoubin. All rights reserved.
//

#import "ShareMenuItem.h"

@implementation ShareMenuItem

- (instancetype)initWithNormalIconImage:(UIImage *)normalIconImage
                                  title:(NSString *)title{
    if (self){
        self.normalIconImage = normalIconImage;
        self.title = title;
    }
    return self;
}

- (void)dealloc{
    self.normalIconImage = nil;
    self.title = nil;
}


@end
