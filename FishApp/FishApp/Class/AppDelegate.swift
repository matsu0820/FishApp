//
//  AppDelegate.swift
//  FishApp
//
//  Created by 松田拓也 on 2021/10/10.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        defer {
            // 初期画面表示
            let window = UIWindow(frame: UIScreen.main.bounds)
            self.window = window
            
            RootRouter.showFirstView(window: window)
        }
        return true
    }
}

