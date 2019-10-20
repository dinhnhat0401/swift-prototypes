//
//  AppDelegate.swift
//  swiftcsv
//
//  Created by Đinh Văn Nhật on 2019/10/20.
//  Copyright © 2019 Đinh Văn Nhật. All rights reserved.
//

import UIKit
import SwiftCSV

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        loadCSV()
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

    func loadCSV() {
        do {
            let filename = "Book-Authors"
            let type = "csv"
            guard let path = Bundle.main.path(forResource: filename, ofType: type) else {
                print("CANNOT LOAD FILE: " + filename)
                return
            }

            let csv = try CSV(url: URL(fileURLWithPath: path))
            try csv.enumerateAsDict { dict in
                print(dict["authorID"]!)
                print(dict["name"]!)
                print(dict["intro"]!)
            }
        } catch let error as NSError {
            print(error)
        }
    }
}
