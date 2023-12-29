//
//  ViewController.swift
//  Project1
//
//  Created by Ziady Mubaraq on 30/12/23.
//

import UIKit

class ViewController: UIViewController {
  // MARK: properties
  var pictures = [String]()

  override func viewDidLoad() {
    super.viewDidLoad()
    
    let fm = FileManager.default
    let path = Bundle.main.resourcePath!
    let items = try! fm.contentsOfDirectory(atPath: path)
    
    for item in items {
      if item.hasPrefix("nssl") {
        pictures.append(item)
      }
    }
    
    print(pictures)
  }


}

