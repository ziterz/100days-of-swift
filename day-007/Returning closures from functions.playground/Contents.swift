// Created by Ziady Mubaraq on 24/12/23.

import UIKit

var greeting = "Hello, playground"

func travel() -> (String) -> Void {
  return {
    print("I'm going to \($0)")
  }
}

let result = travel()
result("London")

let result2: Void = travel()("London")

print(Int.random(in: 1...10))

func getRandomNumber() -> Int {
  Int.random(in: 1...10)
}

print(getRandomNumber())

func makeRandomGenerator() -> () -> Int {
  let function = { Int.random(in: 1...10) }
  return function
}

let generator = makeRandomGenerator()
let random1 = generator()
print(random1)

// As a variable:
//var closureName: (ParameterTypes) -> ReturnType = { ... }

// As an optional variable:
//var closureName: ((ParameterTypes) -> ReturnType)?

// As a type alias:
//typealias ClosureType = (ParameterTypes) -> ReturnType

// As a constant:
//let closureName: ClosureType = { ... }

// As a parameter to another function:
// funcName(parameter: (ParameterTypes) -> ReturnType)

// Note: if the passed-in closure is going to outlive the scope of the method, e.g. if you are saving it to a property, it needs to be annotated with @escaping.

// As an argument to a function call:

// funcName({ (ParameterTypes) -> ReturnType in statements })

// As a function parameter:
//array.sorted(by: { (item1: Int, item2: Int) -> Bool in return item1 < item2 })

// As a function parameter with implied types:
//array.sorted(by: { (item1, item2) -> Bool in return item1 < item2 })

// As a function parameter with implied return type:
//array.sorted(by: { (item1, item2) in return item1 < item2 })

// As the last function parameter:
//array.sorted { (item1, item2) in return item1 < item2 }

// As the last parameter, using shorthand argument names:
//array.sorted { return $0 < $1 }

// As the last parameter, with an implied return value:
//array.sorted { $0 < $1 }

// As the last parameter, as a reference to an existing function:
//array.sorted(by: <)

// As a function parameter with explicit capture semantics:
//array.sorted(by: { [unowned self] (item1: Int, item2: Int) -> Bool in return item1 < item2 })

// As a function parameter with explicit capture semantics and inferred parameters / return type:
//array.sorted(by: { [unowned self] in return $0 < $1 })

/*
 * VALID SYNTAX
 */
func createValidator() -> (String) -> Bool {
  return {
    if $0 == "twostraws" {
      return true
    } else {
      return false
    }
  }
}
let validator = createValidator()
print(validator("twostraws"))

// -------
func makeRecorder(media: String) -> () -> String {
  switch media {
  case "podcast":
    return {
      return "I'm recording a podcast"
    }
  default:
    return {
      return "I'm recording a video"
    }
  }
}
let recorder = makeRecorder(media: "podcast")
print(recorder())

// -------
func createTravelMethod(distance: Int) -> (String) -> Void {
  if distance < 5 {
    return {
      print("I'm walking to \($0).")
    }
  } else if distance < 20 {
    return {
      print("I'm cycling to \($0).")
    }
  } else {
    return {
      print("I'm driving to \($0).")
    }
  }
}
let travelMethod = createTravelMethod(distance: 15)
travelMethod("London")

// -------
func createAgeCheck(strict: Bool) -> (Int) -> Bool {
  if strict {
    return {
      if $0 <= 21 {
        return true
      } else {
        return false
      }
    }
  } else {
    return {
      if $0 <= 18 {
        return true
      } else {
        return false
      }
    }
  }
}
let ageCheck = createAgeCheck(strict: true)
let result3 = ageCheck(20)
print(result3)

// -------
func makeGreeting(language: String) -> (String) -> Void {
  if language == "French" {
    return {
      print("Bonjour, \($0)!")
    }
  } else {
    return {
      print("Hello, \($0)!")
    }
  }
}
let greeting2 = makeGreeting(language: "English")
greeting2("Paul")

// -------
func createDoubler() -> (Int) -> Int {
  return {
    return $0 * 2
  }
}
let doubler = createDoubler()
print(doubler(2))
