//
//  DetailViewController.swift
//  Project7
//
//  Created by Ziady Mubaraq on 05/01/24.
//  Copyright © 2024 ziterz.dev. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
  
  // MARK: Properties
  var webView: WKWebView!
  var detailItem: Petition?
  
  // MARK: Views
  override func loadView() {
    webView = WKWebView()
    view = webView
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    guard let detailItem = detailItem else { return }
    
    let html = """
      <html>
        <head>
          <meta name="viewport" content="width=device-width, inital-scale-1">
          <style> body { font-size: 150%; ) </style>
        </head>
        <body>
          \(detailItem.body)
        </body>
      </html>
    """
    
    webView.loadHTMLString(html, baseURL: nil)
  }
  
  
  /*
   // MARK: - Navigation
   
   // In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   // Get the new view controller using segue.destination.
   // Pass the selected object to the new view controller.
   }
   */
  
}
