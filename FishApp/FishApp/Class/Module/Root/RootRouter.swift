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
}
