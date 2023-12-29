// Created by Ziady Mubaraq on 30/12/2023

import UIKit

func albumReleased(year: Int) -> String? {
  switch year {
  case 2006: return "Taylor Swift"
  case 2008: return "Fearless"
  case 2010: return "Speak Now"
  case 2012: return "Red"
  case 2014: return "1989"
  default: return nil
  }
}

let album = albumReleased(year: 2006)
print("The album is \(album)")


let str = "Hello world"
print(str.uppercased())

let album = albumReleased(year: 2006)?.uppercased()
print("The album is \(album)")

// MARK: The nil coalescing operator
let album = albumReleased(year: 2006) ?? "unknown"
print("The album is \(album)")
