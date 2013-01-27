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

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSLog(@"viewDidload");
    NSString* url = @"https://api.twitter.com/1/statuses/user_timeline/ayakix.json";
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:url]];
    NSData *json_data = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
    NSError *error=nil;
    NSArray *jsonArray = [NSJSONSerialization JSONObjectWithData:json_data options:NSJSONReadingAllowFragments error:&error];
    
    UILabel *label = [[UILabel alloc] init];
    label.numberOfLines = 0;
    label.frame = CGRectMake(0, 0, 320, 480);
    label.text = [jsonArray description];
    
    [self.view addSubview:label];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
