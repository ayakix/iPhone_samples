//
//  SecondViewController.m
//  MoveView
//
//  Created by Ayakix on 1/27/13.
//  Copyright (c) 2013 Ayakix. All rights reserved.
//

#import "SecondViewController.h"

@implementation SecondViewController

- (id)init
{
    self   = [super init];
    [self.view removeFromSuperview];
    return self;
}

- (void)dealloc
{
    [super dealloc];
}

- (void)loadView {
    [super loadView];
}


- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor redColor];
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
