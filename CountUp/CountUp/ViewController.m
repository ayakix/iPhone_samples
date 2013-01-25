//
//  ViewController.m
//  CountUp
//
//  Created by Ayakix on 1/25/13.
//  Copyright (c) 2013 Ayakix. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

// 作成時に呼ばれる
- (id)init
{
    self   = [super init];
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)loadView {
    [super loadView];
}

- (void)countup:(id)inSender {
    count++;
    
    [label setText:[NSString stringWithFormat:@"count:%d", count]];
    [inSender setTitle:[NSString stringWithFormat:@"count:%d", count] forState:UIControlStateNormal];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 50)];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeInfoLight];
    button.frame = CGRectMake(100,100,100,100);
    [button addTarget:self action:@selector(countup:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:label];
    [self.view addSubview:button];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
