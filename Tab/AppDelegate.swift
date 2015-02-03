//
//  AppDelegate.swift
//  Tab
//
//  Created by Edwin Vazquez on 2/1/15.
//  Copyright (c) 2015 com.aperfectempire. All rights reserved.
//
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        if window == nil {
            println("window is nil");
            return true;
        }
        let tabBarController: UITabBarController = UITabBarController(nibName: nil, bundle: nil);
        
        tabBarController.viewControllers = [	//an array containing 5 view controller objects
            ViewController(
                title: "Home",                                   //dispalyed in vc's tab
                unselected: "Bronx_unselected",                   //displayed in vc's tab
                selected: "Bronx_selected",                       //displayed in vc's tab
                badge: nil,                                       //displayed in vc's tab
                text: "Here is the Main Screen!"), //displayed in view created by vc
            
            ViewController(
                title: "Comics",
                unselected: "Brooklyn_unselected",
                selected: nil,
                badge: nil,
                text: "Here are your comics library!"),
            
            ViewController(
                title: "Shop",
                unselected: "Manhattan_unselected",
                selected: nil,
                badge: "4,5,6",
                text: "Here are comics you can purchase"),	//Walt Whitman
            
            ViewController(
                title: "Artists",
                unselected: "Queens_unselected",
                selected: nil,
                badge: "E",
                text: "Artists involved!"),
            
            ViewController(
                title: "About",
                unselected: "Staten_unselected",
                selected: nil,
                badge: nil,
                text: "What this is about!")
        ];
        
        tabBarController.selectedIndex = 0;	//unnecessary: 0 (the leftmost tab) is the default
        window!.rootViewController = tabBarController;
        return true;
    }
    
    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }
    
    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }
    
    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }
    
    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }
    
    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    
}