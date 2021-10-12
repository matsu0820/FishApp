//
//  TopProtocols.swift
//  FishApp
//
//  Created by 松田拓也 on 2021/10/10.
//

import Foundation

// MARK: - View

protocol TopViewProtocol: AnyObject {
    
    func applyUrl(_ url: URL)
}

// MARK: - Presenter

protocol TopPrenseterProtocol: AnyObject {
    var interactor: TopInteractorInputProtocol { get }
    var router: TopRouterProtocol { get }
    
    func viewDidLoad()
}

// MARK: - Interactor

protocol TopInteractorInputProtocol: AnyObject {
    
}

protocol TopInteractorOutProtocol: AnyObject {
    
}

// MARK: - Router

protocol TopRouterProtocol: AnyObject {
    
}
