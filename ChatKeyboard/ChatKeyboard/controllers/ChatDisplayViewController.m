//
//  ChatDisplayViewController.m
//  ChatKeyboard
//
//  Created by 周彬 on 14-9-7.
//  Copyright (c) 2014年 zhoubin. All rights reserved.
//

#import "ChatDisplayViewController.h"
#import "InputToolView.h"

@interface ChatDisplayViewController ()

@end

@implementation ChatDisplayViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    InputToolView *view = [[InputToolView alloc]initWithFrame:CGRectMake(0, CGRectGetHeight(self.view.frame)-50.0f, 320, 50)];
    [self.view addSubview:view];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
