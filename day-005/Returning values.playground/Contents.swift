// Created by Ziady Mubaraq on 21/12/23.

import UIKit

func square(number: Int) -> Int {
  return number * number
}

let result = square(number: 8)
print(result)

func doMath() -> Int {
  return 5 + 5
}

func doMoreMath() -> Int {
  5 + 5
}

doMath()

doMoreMath()

func greet(name: String) -> String {
  if name == "Taylor Swift" {
    return "Oh wow!"
  } else {
    return "Hello, \(name)"
  }
}
greet(name: "Ziady")

func greet2(name: String) -> String {
  if name == "Taylor Swift" {
    "Oh wow!"
  } else {
    "Hello, \(name)"
  }
}

greet2(name: "Ziady")

func greet3(name: String) -> String {
  name == "Taylor Swift" ? "Oh wow!" : "Hello, \(name)"
}

greet3(name: "Ziady")

// there are two ways we can send back multiple pieces of data
func getUser() -> [String] {
  ["Taylor", "Swift"]
}

let user = getUser()
print(user[0])

// A second pass at the function might look like this
func getUser2() -> [String: String] {
  ["first": "Taylor", "last": "Swift"]
}

let user2 = getUser2()
print(user2["first", default: "unknown"])

// much more safely
func getUser3() -> (first: String, last: String) {
  (first: "Taylor", last: "Swift")
}

let user3 = getUser3()
print(user3.first)
