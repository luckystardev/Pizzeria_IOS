//
//  ViewController.swift
//  Pizzeria
//
//  Created by Alex on 11/27/20.
//  Copyright © 2020 LuckyClub. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

    var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
               
        webView = WKWebView(frame: self.view.bounds, configuration: WKWebViewConfiguration())
        webView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.webView.navigationDelegate = self
        self.view.addSubview(webView)
        let myURL = URL(string: "http://www.pizzeriagiaguarotrieste.it")
        
        let myRequest = URLRequest(url: myURL!)
        webView.allowsBackForwardNavigationGestures = true
        webView.load(myRequest)
        
    }

}

