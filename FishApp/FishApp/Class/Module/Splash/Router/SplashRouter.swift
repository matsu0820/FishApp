//
//  SplashRouter.swift
//  FishApp
//
//  Created by 松田拓也 on 2021/10/10.
//

import UIKit

final class SplashRouter {
    
    private weak var viewController: UIViewController?
    
    private init(viewController: UIViewController) {
        self.viewController = viewController
    }
    
    static func createSplashModule() -> UIViewController {
        let view = SplashViewController()
        let interactor = SplashInteractor()
        let router = SplashRouter(viewController: view)
        let preseter = SplashPresenter(view: view, interactor: interactor, router: router)
        
        interactor.output = preseter
        view.presenter = preseter
        
        return view
    }
    
}

extension SplashRouter: SplashRouterProtocol {
    
}
