//
//  AppDelegate.m
//  ChieryConfigure
//
//  Created by chiery on 2018/1/8.
//  Copyright © 2018年 com.chiery.com. All rights reserved.
//

#import "AppDelegate.h"
#import "ChieryVCController.h"
#import "ChieryHomePage.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    
    ChieryHomePage *homePage = [[ChieryHomePage alloc] init];
    
    ChieryVCController *controller = [ChieryVCController getInstance];
    controller.navigationController = [[UINavigationController alloc] initWithRootViewController:homePage];
    [self.window setRootViewController:controller.navigationController];
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
