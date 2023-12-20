// Created by Ziady Mubaraq on 20/12/23.

import UIKit

var number = 1

repeat {
  print(number)
  number += 1
} while number <= 20

print("Ready or not, here I come!")

// this print() function will never be run, because false is always false
while false {
  print("This is false")
}

// this print() function will be run once, because repeat only fails the condition after the loop runs
repeat {
  print("This is false")
} while false
