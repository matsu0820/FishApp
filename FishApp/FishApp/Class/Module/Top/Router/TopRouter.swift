//
//  TopRouter.swift
//  FishApp
//
//  Created by 松田拓也 on 2021/10/10.
//

import Foundation
import UIKit

final class TopRouter {
    
    private weak var viewController: UIViewController?
    
    private init(viewController: UIViewController) {
        self.viewController = viewController
    }
    
    static func createTopModule() -> UIViewController {
        let view = TopViewController()
        let interactor = TopInteractor()
        let router = TopRouter(viewController: view)
        let preseter = TopPresenter(view: view, interactor: interactor, router: router)
        
        interactor.output = preseter
        view.presenter = preseter
        
        return view
    }
    
}

extension TopRouter: TopRouterProtocol {
    
}
