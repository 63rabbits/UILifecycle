//
//  AppDelegate.swift
//  UILifecycle
//
//  Created by rabbit on 2020/05/17.
//  Copyright © 2020 rabbit. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    // launch
    func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        // Tells the delegate that the launch process is almost done and the app is almost ready to run.
        DebugUtility.printEnvironment()
        DebugUtility.printStateAndLocation(application.applicationState, object: self, function: #function, line: #line)
        return true
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        DebugUtility.printStateAndLocation(application.applicationState, object: self, function: #function, line: #line)
        return true
    }

    // terminate
    func applicationWillTerminate(_ application: UIApplication) {
        DebugUtility.printStateAndLocation(application.applicationState, object: self, function: #function, line: #line)
    }



    // MARK: - iOS 13 and later

    // MARK: UISceneSession Lifecycle

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.

        DebugUtility.printStateAndLocation(application.applicationState, object: self, function: #function, line: #line)
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
        DebugUtility.printStateAndLocation(application.applicationState, object: self, function: #function, line: #line)
    }



    // MARK: - iOS 12 and earlier, otherwise see to SceneDelegate.

    // backgound -> foreground
    func applicationWillEnterForeground(_ application: UIApplication) {
        DebugUtility.printStateAndLocation(application.applicationState, object: self, function: #function, line: #line)
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        DebugUtility.printStateAndLocation(application.applicationState, object: self, function: #function, line: #line)
    }



    // foreground -> background
    func applicationWillResignActive(_ application: UIApplication) {
        DebugUtility.printStateAndLocation(application.applicationState, object: self, function: #function, line: #line)
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        DebugUtility.printStateAndLocation(application.applicationState, object: self, function: #function, line: #line)
    }


}



//// MARK: - UniversalLink
//
//extension AppDelegate {
//
//    // UniversalLink
//    func application(_ application: UIApplication, continue userActivity: NSUserActivity, restorationHandler: @escaping ([UIUserActivityRestoring]?) -> Void) -> Bool {
//        DebugUtility.printStateAndLocation(application.applicationState, object: self, function: #function, line: #line)
//        return true
//    }
//
//}
//
//
//
//// MARK: - Notification
//
//extension AppDelegate: UNUserNotificationCenterDelegate {
//
//    func userNotificationCenter(_ center: UNUserNotificationCenter, openSettingsFor notification: UNNotification?) {
//        DebugUtility.printStateAndLocation(UIApplication.shared.applicationState, object: self, function: #function, line: #line)
//    }
//
//    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
//        DebugUtility.printStateAndLocation(UIApplication.shared.applicationState, object: self, function: #function, line: #line)
//    }
//
//    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
//        DebugUtility.printStateAndLocation(UIApplication.shared.applicationState, object: self, function: #function, line: #line)
//    }
//
//}
