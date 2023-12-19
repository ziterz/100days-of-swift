// Created by Ziady Mubaraq on 19/12/23.

import UIKit

// Swift will automatically assign each of those a number starting from 0
enum Planet: Int {
  case mercury
  case venus
  case earth
  case mars
}

// Result: "earth"
let earth = Planet(rawValue: 2)

// Now Swift will assign 1 to mercury and count upwards from there
enum Planet2: Int {
  case mercury = 1
  case venus
  case earth
  case mars
}

// Result: "venus"
let venus = Planet2(rawValue: 2)
