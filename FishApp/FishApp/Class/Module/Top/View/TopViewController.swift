//
//  TopViewController.swift
//  FishApp
//
//  Created by 松田拓也 on 2021/10/10.
//

import UIKit

class TopViewController: UIViewController {
    
    var presenter: TopPrenseterProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}

extension TopViewController: TopViewProtocol {
    
}
