//
//  AppDelegate.swift
//  iOS-Assignment3
//
//  Created by user239796 on 3/27/24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var allQuestions = [Question]();
    
    var a1 = Question(q: "What is 1+1?", c: "2", i1: "3", i2: "4", i3: "4")
    var a2 = Question(q: "What is the powerhouse of the cell?", c: "mitochondria", i1: "protozoa", i2: "ribosome", i3: "all of the above")


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        //allQuestions.append(a1)
        //allQuestions.append(a2)
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

