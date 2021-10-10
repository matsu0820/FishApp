//
//  SplashViewController.swift
//  FishApp
//
//  Created by 松田拓也 on 2021/10/10.
//

import Foundation
import UIKit

final class SplashViewController: UIViewController {
    
    var presenter: SplashPrenseterProtocol?
    
    @IBOutlet private weak var contentView: UIView! {
        didSet {
            self.contentView.backGroundGradation(topColor: R.color.splashTopViewColor()!,
                                                 bottomColor: R.color.splashBottomViewColor()!)
        }
    }
    
    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension SplashViewController: SplashViewProtocol {
    
}
