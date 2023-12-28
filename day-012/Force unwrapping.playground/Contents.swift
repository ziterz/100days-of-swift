// Created by Ziady Mubaraq on 27/12/2023

import UIKit

let str = "5"
let num = Int(str)

let num2 = Int(str)!
let website = "google"

// When should you force unwrap optionals in Swift?
let url = URL(string: "https://www.apple.com")!
let url2 = URL(string: "https://www.\(website)")!

let randomNumber = (1...10).randomElement()!

// Compare with
//var items = [Int]()

//for i in 1...10 {
//    if isLuckyNumber(i) {
//        items.append(i)
//    }
//}

//let randomNumber2 = items.randomElement()!

// Before
enum Direction: CaseIterable {
    case north, south, east, west
}

let randomDirection = Direction.allCases.randomElement()!

// After
enum Direction2: CaseIterable {
    case north, south, east, west

    static func random() -> Direction2 {
        Direction2.allCases.randomElement()!
    }
}

let randomDirection2 = Direction2.random()

/*
 * VALID SYNTAX
 */
let legoBricksSold: Int? = 400_000_000_000
let numberSold = legoBricksSold!

// -------
func describe(array: [String]?) {
  let unwrapped = array!
  print("The array has \(unwrapped.count) items.")
}
describe(array: [])

// -------
let age: Int = 21
let allowedMessage: String? = age >= 21 ? "Welcome!" : nil
let result = allowedMessage!

// -------
func league(for skillLevel: Int) -> Int? {
  switch skillLevel {
  case 1:
    fallthrough
  case 2:
    return 3
  case 3:
    return 2
  case 4:
    return 1
  default:
    return nil
  }
}
let allocatedLeague = league(for: 3)!

// -------
struct User {
  var name: String?
  var age: Int?
}
let taylor = User(name: "Taylor", age: 26)
let taylorAge = taylor.age!

// -------
func title(for page: Int) -> String? {
  guard page >= 1 else {
    return nil
  }
  let pageCount = 132
  if page < pageCount {
    return "Page \(page)"
  } else {
    return nil
  }
}
let pageTitle = title(for: 16)!
