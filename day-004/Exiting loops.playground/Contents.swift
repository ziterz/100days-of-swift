// Created by Ziady Mubaraq on 21/12/23.

import UIKit

var countDown = 10

while countDown >= 0 {
  print(countDown)
  countDown -= 1
}

print("Blast off!")

while countDown >= 0 {
  print(countDown)
  
  if countDown == 4 {
    print("I'm bored. Let's go now!")
    break
  }
  
  countDown -= 1
}

let scores = [1, 8, 4, 3, 0, 5, 2]
var count = 0

for score in scores {
  if score == 0 {
    break
  }

  count += 1
}

print("You had \(count) scores before you got 0.")
