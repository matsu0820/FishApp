//
//  TopPresenter.swift
//  FishApp
//
//  Created by 松田拓也 on 2021/10/10.
//

import Foundation

final class TopPresenter {
    
    weak var view: TopViewProtocol?
    var interactor: TopInteractorInputProtocol
    var router: TopRouterProtocol
    
    // MARK: Initialize
    
    init(view: TopViewProtocol, interactor: TopInteractorInputProtocol, router: TopRouterProtocol) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
}

extension TopPresenter: TopPrenseterProtocol {
    
    func viewDidLoad() {
        
    }
}

extension TopPresenter: TopInteractorOutProtocol {
    
}
