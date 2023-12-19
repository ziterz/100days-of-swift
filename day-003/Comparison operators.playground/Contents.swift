// Created by Ziady Mubaraq on 19/12/23.

import UIKit

let firstScore = 6
let secondScore = 4

firstScore == secondScore
firstScore != secondScore

firstScore < secondScore
firstScore >= secondScore

"Taylor" <= "Swift"

let firstName = "Paul"
let secondName = "Sophie"

let firstAge = 40
let secondAge = 10

// Compare in a various ways
print(firstName == secondName)
print(firstName != secondName)
print(firstName < secondName)
print(firstName >= secondName)

print(firstAge == secondAge)
print(firstAge != secondAge)
print(firstAge < secondAge)
print(firstAge >= secondAge)

enum Sizes: Comparable {
  case small
  case medium
  case large
}

let first = Sizes.small
let second = Sizes.large

// That will print “true”, because small comes before large in the enum case list.
print(first < second)
