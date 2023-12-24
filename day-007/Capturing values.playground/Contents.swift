// Created by Ziady Mubaraq on 24/12/23.

import UIKit

func travel() -> (String) -> Void {
  return {
    print("I'm going to \($0)")
  }
}

let result = travel()
result("London")

func travel2() -> (String) -> Void {
    var counter = 1

    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}

let result2 = travel2()

// So, if we call result("London") multiple times, the counter will go up and up
result2("London")
result2("London")
result2("London")

// Why do Swift’s closures capture values?
func makeRandomNumberGenerator() -> () -> Int {
  return {
    var previousNumber = 0
    var newNumber: Int

    repeat {
      newNumber = Int.random(in: 1...3)
    } while newNumber == previousNumber

    previousNumber = newNumber
    return newNumber
  }
}

let generator = makeRandomNumberGenerator()

for _ in 1...10 {
  print(generator())
}

/*
 * VALID SYNTAX
 */

func makeAdder() -> (Int) -> Void {
  var sum = 0
  return {
    sum += $0
    print("Sum is now \(sum)")
  }
}
let adder = makeAdder()
adder(5)
adder(3)

// -------
func swingBat() -> () -> Void {
  var strikes = 0
  return {
    strikes += 1
    if strikes >= 3 {
      print("You're out!")
    } else {
      print("Strike \(strikes)")
    }
  }
}
let swing = swingBat()
swing()
swing()
swing()

// ------
func storeTwoValues(value1: String, value2: String) -> (String) -> String {
  var previous = value1
  var current = value2
  return { new in
    let removed = previous
    previous = current
    current = new
    return "Removed \(removed)"
  }
}
let store = storeTwoValues(value1: "Hello", value2: "World")
let removed = store("Value Three")
print(removed)

// -------
func createAgeValidator(strict: Bool) -> (Int) -> Bool {
  return {
    if strict {
      if $0 >= 21 {
        return true
      }
    } else {
      if $0 >= 18 {
        return true
      }
    }
    return false
  }
}
let validator = createAgeValidator(strict: true)
validator(21)

// -------
func visitPlaces() -> (String) -> Void {
  var places = [String: Int]()
  return {
    places[$0, default: 0] += 1
    let timesVisited = places[$0, default: 0]
    print("Number of times I've visited \($0): \(timesVisited).")
  }
}
let visit = visitPlaces()
visit("London")
visit("New York")
visit("London")

// -------
func summonGenie(wishCount: Int) -> (String) -> Void {
  var currentWishes = wishCount
  return {
    if currentWishes > 0 {
      currentWishes -= 1
      print("You wished for \($0).")
      print("Wishes left: \(currentWishes)")
    } else {
      print("You're out of wishes.")
    }
  }
}
let genie = summonGenie(wishCount: 3)
genie("a Ferrari")
