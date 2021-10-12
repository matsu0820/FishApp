//
//  UIViewController+PresentFulllScreen.swift
//  FishApp
//
//  Created by 松田拓也 on 2021/10/12.
//

import UIKit

extension UIViewController {
    /// フルスクリーンモーダル遷移
    /// - Parameters:
    ///   - viewControllerToPresent: 遷移先VC
    ///   - animated: アニメーション
    ///   - completion: 完了後処理
    func presentFullScreen(_ viewControllerToPresent: UIViewController, animated: Bool, completion: (() -> Void)? = nil) {
        viewControllerToPresent.modalPresentationStyle = .fullScreen
        self.present(viewControllerToPresent, animated: animated, completion: completion)
    }
}
