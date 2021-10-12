//
//  RootRouter.swift
//  FishApp
//
//  Created by 松田拓也 on 2021/10/10.
//

import UIKit

final class RootRouter {
    
    // MARK: - Initializer
    
    private init() {}
    
    // MARK: - Statics
    
    static func showFirstView(window: UIWindow) {
        let firstView = UINavigationController(rootViewController: SplashRouter.createSplashModule())
        
        firstView.setNavigationBarHidden(true, animated: false)
        firstView.interactivePopGestureRecognizer?.isEnabled = false
        
        window.rootViewController = firstView
        window.makeKeyAndVisible()
    }
    
    static func presetntTabBar(sorceViewController: UIViewController?, animated: Bool) {
        let homeView = UINavigationController(rootViewController: TopRouter.createTopModule())
        // TODO: 画像加工後適用
        homeView.tabBarItem = UITabBarItem(title: "トップ", image: nil, selectedImage: nil)
        
        // TODO：タブの追加出来次第ここに記載
        
        let tabBarController = UITabBarController()
        tabBarController.setViewControllers([homeView], animated: false)
        tabBarController.tabBar.tintColor = .blue
        sorceViewController?.presentFullScreen(tabBarController, animated: animated)
    }
}
