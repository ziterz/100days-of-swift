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

// shuffle an array with built-in function .shuffled()
let numbers = [1, 2, 3, 4, 5]
var random = numbers.shuffled()

// using while to make sure not generating the same value as before
while random == numbers {
  random = numbers.shuffled()
}

// to avoid DRY code, you can use repeat like this
let numbers2 = [1, 2, 3, 4, 5]
var random2: [Int]

repeat {
  random2 = numbers2.shuffled()
} while random2 == numbers2
