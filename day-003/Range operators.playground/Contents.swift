// Created by Ziady Mubaraq on 19/12/23.

import UIKit

let score = 85

switch score {
case 0..<50:
  print("You failed badly.")
case 50..<85:
  print("You did OK.")
default:
  print("You did great!")
}

let names = ["Piper", "Alex", "Suzanne", "Gloria"]

print(names[0])

// It will print a range of values by index range
print(names[1...3])

// It will returning index 1 to the end of the array
print(names[1...])
