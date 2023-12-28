// Created by Ziady Mubaraq on 27/12/2023

import UIKit

func greet(_ name: String?) {
  guard let unwrapped = name else {
    print("You didn't provide a name!")
    return
  }

  print("Hello, \(unwrapped)!")
}

greet(nil)

// When to use guard let rather than if let
func getMeaningOfLife() -> Int? {
  nil
}

// Using guard let
func printMeaningOfLife() {
  if let name = getMeaningOfLife() {
    print(name)
  }
}

// Using if let
func printMeaningOfLife2() {
    guard let name = getMeaningOfLife() else {
        return
    }

    print(name)
}

printMeaningOfLife()
printMeaningOfLife2()

/*
 * VALID SYNTAX
 */
func double(number: Int?) -> Int? {
  guard let number = number else {
    return nil
  }
  return number * 2
}
let input = 5
if let doubled = double(number: input) {
  print("\(input) doubled is \(doubled).")
}

// -------
func uppercase(string: String?) -> String? {
  guard let string = string else {
    return nil
  }
  return string.uppercased()
}
if let result = uppercase(string: "Hello") {
  print(result)
}

// -------
func isLongEnough(_ string: String?) -> Bool {
  guard let string = string else { return false }
  if string.count >= 8 {
    return true
  } else {
    return false
  }
}
if isLongEnough("Mario Odyssey") {
  print("Let's play that!")
}

// -------
func validate(password: String?) -> Bool {
  guard let password = password else {
    return false
  }
  if password == "fr0sties" {
    print("Authenticated successfully!")
    return true
  }
  return false
}
validate(password: "fr0sties")

// -------
func test(number: Int?) {
  guard let number = number else { return }
  print("Number is \(number)")
}
test(number: 42)

// -------
func describe(occupation: String?) {
  guard let occupation = occupation else {
    print("You don't have a job.")
    return
  }
  print("You are an \(occupation).")
}
let job = "engineer"
describe(occupation: job)
