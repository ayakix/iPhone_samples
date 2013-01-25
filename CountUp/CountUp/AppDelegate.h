//
//  AppDelegate.h
//  CountUp
//
//  Created by Ayakix on 1/25/13.
//  Copyright (c) 2013 Ayakix. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate> {
    UIWindow*               window;
    ViewController*         viewController;
}

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;

@end
