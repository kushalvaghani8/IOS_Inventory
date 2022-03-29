//
//  AppDelegate.swift
//  Inventory
//
//  Created by Cambrian on 2022-03-23.
//

import UIKit

@main
//let appDelegate = UIApplication.shared.delegate as? AppDelegate
class AppDelegate: UIResponder, UIApplicationDelegate {
    
   // let appDelegate = UIApplication.shared.delegate as? AppDelegate
    
//    let itemList = ItemList()
//       var item = [Item]()


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
//        print(#function)
//
//        let defaults = UserDefaults.standard
//        if let savedwords = defaults.object(forKey: "Items") as? Data {
//            let jsonDecoder = JSONDecoder()
//            do {
//                item = try jsonDecoder.decode([Item].self, from: savedwords)
//            }
//            catch {
//                print("")
//            }
//        }
        
        
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        
//        let jsonEncoder = JSONEncoder()
//        if let savedData = try? jsonEncoder.encode(item) {
//            let defaults = UserDefaults.standard
//            defaults.set(savedData, forKey: "Items")
//        }
//        else {
//        print( "Failed to save data")
//        }
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

