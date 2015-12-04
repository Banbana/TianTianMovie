//
//  AppDelegate.m
//  天天影视
//
//  Created by 卢恒 on 15/12/4.
//  Copyright © 2015年 卢恒. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    TuiJianViewController *tjvc = [[TuiJianViewController alloc]initWithNibName:@"TuiJianViewController" bundle:nil];
    FenLeiViewController *flvc = [[FenLeiViewController alloc]initWithNibName:@"FenLeiViewController" bundle:nil];
    SouSuoViewController *ssvc = [[SouSuoViewController alloc]initWithNibName:@"SouSuoViewController" bundle:nil];
    SheZhiViewController *szvc = [[SheZhiViewController alloc]initWithNibName:@"SheZhiViewController" bundle:nil];
    UITabBarController *tbc = [[UITabBarController alloc]init];
    UINavigationController *n1vc = [[UINavigationController alloc]initWithRootViewController:tjvc];
    UINavigationController *n2vc = [[UINavigationController alloc]initWithRootViewController:flvc];
    UINavigationController *n3vc = [[UINavigationController alloc]initWithRootViewController:ssvc];
    UINavigationController *n4vc = [[UINavigationController alloc]initWithRootViewController:szvc];
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    [tbc setViewControllers:@[n1vc,n2vc,n3vc,n4vc] animated:YES];
    
    UITabBarItem *tagBarItem1 = tbc.tabBar.items[0];
    UITabBarItem *tagBarItem2 = tbc.tabBar.items[1];
    UITabBarItem *tagBarItem3 = tbc.tabBar.items[2];
    UITabBarItem *tagBarItem4 = tbc.tabBar.items[3];
    
    tagBarItem1.title = @"推荐";
    tagBarItem2.title = @"分类";
    tagBarItem3.title = @"搜索";
    tagBarItem4.title = @"设置";
    
    self.window.rootViewController = tbc;
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
