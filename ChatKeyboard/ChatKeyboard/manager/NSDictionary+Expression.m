//
//  NSDictionary+Expression.m
//  ChatKeyboard
//
//  Created by 周彬 on 14-9-7.
//  Copyright (c) 2014年 zhoubin. All rights reserved.
//

#import "NSDictionary+Expression.h"

@implementation NSDictionary (Expression)

+ (NSDictionary *)expressionDic{
    NSString *plistStr = [[NSBundle mainBundle]pathForResource:@"expression" ofType:@"plist"];
    NSDictionary *plistDic = [[NSDictionary  alloc]initWithContentsOfFile:plistStr];
    
    return plistDic;
}

@end
