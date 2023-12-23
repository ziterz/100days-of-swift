// Created by Ziady Mubaraq on 22/12/23.

import UIKit

func travel(action: (String) -> String) {
  print("I'm getting ready to go.")
  let description = action("London")
  print(description)
  print("I arrived!")
}

travel { (place: String) -> String in
  return "I'm going to \(place) in my car"
}

// However, Swift knows the parameter to that closure must be a string, so we can remove it:
travel { place -> String in
  return "I'm going to \(place) in my car"
}

// It also knows the closure must return a string, so we can remove that:
travel { place in
  return "I'm going to \(place) in my car"
}

// Swift lets us remove the return keyword too
travel { place in
  "I'm going to \(place) in my car"
}

// Or more shorter using dollar sign, then a number counting from 0
travel {
    "I'm going to \($0) in my car"
}

/*
 * VALID SYNTAX
 */
