//
//  AppDelegate.m
//  Ispy
//
//  Created by zihad on 11/18/16.
//  Copyright © 2016 zihad. All rights reserved.
//

#import "AppDelegate.h"
#import "IYHomeViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    
//    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
//    
//    // NSLog(@"%@", [defaults dictionaryRepresentation]);
//    UINavigationController *navigationController = (UINavigationController *) self.window.rootViewController;
//    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//    
//    if([defaults objectForKey:@"password"]!=nil  && ![[defaults objectForKey:@"email"] isEqualToString:@""])
//    {
//        
//        NSLog(@"%@",[defaults objectForKey:@"email"]);
//        NSLog(@"%@",[defaults objectForKey:@"password"]);
//        
//
//
//
////        // NSLog(@"%@", [defaults dictionaryRepresentation]);
//       [navigationController pushViewController:[storyboard instantiateViewControllerWithIdentifier:@"ViewController"] animated:NO];
//        
//        
//    }
//    else
//    {
//                NSLog(@"%@",[defaults objectForKey:@"email"]);
//              NSLog(@"%@",[defaults objectForKey:@"password"]);
//       
//        [navigationController pushViewController:[storyboard instantiateViewControllerWithIdentifier:@"IYHomeViewController"] animated:NO];
//    }
//    
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
