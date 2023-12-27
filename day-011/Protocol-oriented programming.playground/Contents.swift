// Created by Ziady Mubaraq on 27/12/2023

import UIKit

protocol Identifiable {
  var id: String { get set }
  func identify()
}

extension Identifiable {
  func identify() {
    print("My ID is \(id).")
  }
}

struct User: Identifiable {
  var id: String
}

let twostraws = User(id: "twostraws")
twostraws.identify()
/*
 * VALID SYNTAX
 */
