//
//  AppDelegate.m
//  xhcf
//
//  Created by 刘学 on 17/1/3.
//  Copyright © 2017年 Ethan. All rights reserved.
//

#import "AppDelegate.h"
#import "NotifyViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [self setMainController];
    return YES;
}

- (void)setMainController {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:[[NotifyViewController alloc] init]];
    [self.window makeKeyAndVisible];
}

@end
