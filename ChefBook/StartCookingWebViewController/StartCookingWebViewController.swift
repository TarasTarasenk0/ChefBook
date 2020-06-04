//
//  StartCookingWebViewController.swift
//  ChefBook
//
//  Created by md760 on 04.06.2020.
//  Copyright © 2020 md760. All rights reserved.
//

import UIKit
import WebKit

final class StartCookingWebViewController: UIViewController {
    //MARK: - Outlets
    @IBOutlet weak var webView: WKWebView!
    
    //MARK: - Properties
    var startCookingUrlString: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadTerms(by: startCookingUrlString)
        self.navigationController?.navigationBar.tintColor = .black
    }
    
    private func loadTerms(by urlString: String?) {
        guard let urlString = urlString,
            let url = URL(string: urlString) else { return }
        let request = URLRequest(url: url)
        webView.load(request)
    }
}
