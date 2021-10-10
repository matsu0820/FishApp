//
//  TopInterctor.swift
//  FishApp
//
//  Created by 松田拓也 on 2021/10/10.
//

import Foundation

final class TopInteractor {
    
    weak var output: TopInteractorOutProtocol?
}

extension TopInteractor: TopInteractorInputProtocol {
    
}
