//
//  Person.swift
//  Project10
//
//  Created by Ziady Mubaraq on 10/01/24.
//  Copyright © 2024 ziterz.dev. All rights reserved.
//

import UIKit

class Person: NSObject {
  var name: String
  var image: String
  
  init(name: String, image:String) {
    self.name = name
    self.image = image
  }
}
