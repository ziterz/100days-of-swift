//
//  ViewController.swift
//  Project4
//
//  Created by Ziady Mubaraq on 02/01/24.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

  // MARK: Properties
  var webView: WKWebView!
  
  // MARK: Views
  
  override func loadView() {
    webView = WKWebView()
    webView.navigationDelegate = self
    view = webView
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let url = URL(string: "https://ziterz.dev")!
    webView.load(URLRequest(url: url))
    webView.allowsBackForwardNavigationGestures = true
  }


}

