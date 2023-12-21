// Created by Ziady Mubaraq on 21/12/23.

import UIKit

for i in 1...10 {
  for j in 1...10 {
    let product = i * j
    print("\(i) * \(j) = \(product)")
  }
}

outerLoop: for i in 1...10 {
  for j in 1...10 {
    let product = i * j
    print("\(i) * \(j) = \(product)")
    
    if product == 50 {
      print("It's bullseye!")
      break outerLoop
    }
  }
}

// For example, to cracking the combination and exit the nested loops after we found it

let options = ["up", "down", "left", "right"]
let secretCombination = ["up", "up", "right"]

outerLoop: for option1 in options {
  for option2 in options {
    for option3 in options {
      print("In loop")
      let attempt = [option1, option2, option3]

      if attempt == secretCombination {
        print("The combination is \(attempt)!")
        break outerLoop
      }
    }
  }
}
