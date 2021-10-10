//
//  SplashPresenter.swift
//  FishApp
//
//  Created by 松田拓也 on 2021/10/10.
//

import Foundation

final class SplashPresenter {
    
    weak var view: SplashViewProtocol?
    var interactor: SplashInteractorInputProtocol
    var router: SplashRouterProtocol
    
    // MARK: Initialize
    
    init(view: SplashViewProtocol, interactor: SplashInteractorInputProtocol, router: SplashRouterProtocol) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
}

extension SplashPresenter: SplashPrenseterProtocol {
    
    func viewDidLoad() {
        
    }
}

extension SplashPresenter: SplashInteractorOutProtocol {
    
}
