//
//  UIView+Gradation.swift
//  FishApp
//
//  Created by 松田拓也 on 2021/10/10.
//

import UIKit

extension UIView {
    
    /// 背景色をグラデーションにする設定
    /// - Parameters:
    ///   - topColor: View上部の色
    ///   - bottomColor: View下部の色
    func backGroundGradation(topColor: UIColor, bottomColor: UIColor) {
        let gradientColors: [CGColor] = [topColor.cgColor, bottomColor.cgColor]
        
        let gradientLayer: CAGradientLayer = CAGradientLayer()
        
        gradientLayer.colors = gradientColors
        gradientLayer.frame = self.bounds
        
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
}
