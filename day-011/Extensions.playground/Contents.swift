// Created by Ziady Mubaraq on 27/12/2023

import UIKit

extension Int {
  func squared() -> Int {
    return self * self
  }
}

let number = 8
number.squared()

extension Int {
  var isEven: Bool {
    return self % 2 == 0
  }
}

/*
 * VALID SYNTAX
 */
extension Double {
  var isNegative: Bool {
    return self < 0
  }
}

// -------
extension Int {
  func cubed() -> Int {
    return self * self * self
  }
}

// -------
extension Int {
  func clamped(min: Int, max: Int) -> Int {
    if (self > max) {
      return max
    } else if (self < min) {
      return min
    }
    return self
  }
}

// ------
extension String {
  var isLong: Bool {
    return count > 25
  }
}

// ------
extension String {
  func withPrefix(_ prefix: String) -> String {
    if self.hasPrefix(prefix) { return self }
    return "\(prefix)\(self)"
  }
}

// -------
extension String {
  func isUppercased() -> Bool {
    return self == self.uppercased()
  }
}
