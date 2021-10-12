//
//  TopViewController.swift
//  FishApp
//
//  Created by 松田拓也 on 2021/10/10.
//

import UIKit
import WebKit

class TopViewController: UIViewController {
    
    var presenter: TopPrenseterProtocol?

    @IBOutlet private weak var webView: WKWebView! {
        didSet {
            self.webView.navigationDelegate = self
            self.webView.uiDelegate = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.presenter?.viewDidLoad()
    }

}



extension TopViewController: TopViewProtocol {
    
    /// URLの適用
    /// - Parameter url: URL
    func applyUrl(_ url: URL) {
        let urlRequest = URLRequest(url: url)
        
        self.webView.load(urlRequest)
    }
    
}

extension TopViewController: WKNavigationDelegate {
    
}

extension TopViewController: WKUIDelegate {
    
}
