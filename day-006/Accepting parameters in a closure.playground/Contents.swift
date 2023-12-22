// Created by Ziady Mubaraq on 22/12/23.

import UIKit

let driving = { (place: String) in
  print("I'm going to \(place) in my car")
}

driving("London")

// Here’s a function that accepts a string and an integer:
func pay(user: String, amount: Int) {
  // code
}

// And here’s exactly the same thing written as a closure:
let payment = { (user: String, amount: Int) in
    // code
}
