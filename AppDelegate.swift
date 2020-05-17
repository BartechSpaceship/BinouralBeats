//
//  AppDelegate.swift
//  BinouralBeats
//
//  Created by Bartek on 5/16/20.
//  Copyright © 2020 Bartek. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

   // var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
//        window = UIWindow(frame: UIScreen.main.bounds)
//
//        // Set up the first View Controller
//        let vc1 = HomeViewController()
//        vc1.view.backgroundColor = UIColor.orange
//        vc1.tabBarItem.title = "Home"
//        vc1.tabBarItem.image = UIImage(named: "house.fill")
//
//        // Set up the second View Controller
//        let vc2 = LibraryViewController()
//       // vc2.view.backgroundColor = UIColor.purple
//        vc2.tabBarItem.title = "Purple"
//        vc2.tabBarItem.image = UIImage(named: "star")
//
//        // Set up the Tab Bar Controller to have two tabs
//        let tabBarController = UITabBarController()
//        tabBarController.viewControllers = [vc1, vc2]
//
//        // Make the Tab Bar Controller the root view controller
//        window?.rootViewController = tabBarController
//        window?.makeKeyAndVisible()
//
       
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

