//
//  AppDelegate.m
//  JSPatchDemo
//
//  Created by lucien on 16/7/18.
//  Copyright © 2016年 lucien. All rights reserved.
//

#import "AppDelegate.h"

#import "JPEngine.h"

#import "ViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [JPEngine startEngine];

    /**一:本地获取脚本start*/
//    NSString *sourcePath = [[NSBundle mainBundle] pathForResource:@"demo" ofType:@"js"];
//    NSString *script = [NSString stringWithContentsOfFile:sourcePath encoding:NSUTF8StringEncoding error:nil];
//    [JPEngine evaluateScript:script];

    /**本地获取脚本start*/
    

    /**二:网络异步获取脚本start*/
//异步:需要处理好时间问题
    [NSURLConnection sendAsynchronousRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://raw.githubusercontent.com/smalldew/JSPatchDemoJS/master/demo.js"]] queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse * _Nullable response, NSData * _Nullable data, NSError * _Nullable connectionError) {
     
        NSString *script=[[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
        NSLog(@"response=%@,,,,,,,,,script=%@",response,script);

        [JPEngine evaluateScript:script];
        
    }];
    /**网络异步获取脚本end*/
    

    /**三:网络同步获取脚本start*/
//    NSData *data = [NSURLConnection sendSynchronousRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://raw.githubusercontent.com/smalldew/JSPatchDemoJS/master/demo.js"]] returningResponse:nil error:nil];
//    
//    NSString *script=[[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
//   [JPEngine evaluateScript:script];

    /**网络同步获取脚本end*/
    

    /**四:网络简单获取脚本start*/
//    NSString *script=[[NSString alloc]initWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://raw.githubusercontent.com/smalldew/JSPatchDemoJS/master/demo.js"]] encoding:NSUTF8StringEncoding];
//    [JPEngine evaluateScript:script];
    /**网络简单获取脚本end*/

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
