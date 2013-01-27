//
//  ViewController.m
//  CountUp
//
//  Created by Ayakix on 1/25/13.
//  Copyright (c) 2013 Ayakix. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@implementation ViewController

// 作成時に呼ばれる
- (id)init
{
    self   = [super init];
    return self;
}

- (void)dealloc
{
    [secondViewController release];
    [super dealloc];
}

- (void)loadView {
    [super loadView];
}

- (void)changeView:(id)inSender {
    // anim
    [UIView beginAnimations:@"flipping view" context:nil];
    [UIView setAnimationDuration:1];
    [UIView setAnimationCurve:UIViewAnimationCurveEaseInOut];
    [UIView setAnimationTransition:UIViewAnimationTransitionCurlDown
                           forView:self.view cache:YES];
    ////
    secondViewController = [[SecondViewController alloc] init];
    [self.view addSubview:secondViewController.view];
    ////
    [UIView commitAnimations];  // anim
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeInfoLight];
    button.frame = CGRectMake(100,100,100,100);
    [button addTarget:self action:@selector(changeView:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
