// Created by Ziady Mubaraq on 30/12/2023

import UIKit

struct Person {
  var clothes: String
  var shoes: String
}

let taylor = Person(clothes: "T-shirts", shoes: "sneakers")
let other = Person(clothes: "short skirts", shoes: "high heels")

print(taylor.clothes)
print(other.shoes)

struct Person {
  var clothes: String
  var shoes: String
}

let taylor = Person(clothes: "T-shirts", shoes: "sneakers")
let other = Person(clothes: "short skirts", shoes: "high heels")

var taylorCopy = taylor
taylorCopy.shoes = "flip flops"

print(taylor)
print(taylorCopy)

// MARK: Functions inside structs
struct Person {
  var clothes: String
  var shoes: String

  func describe() {
    print("I like wearing \(clothes) with \(shoes)")
  }
}
