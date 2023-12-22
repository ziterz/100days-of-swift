// Created by Ziady Mubaraq on 22/12/23.

import UIKit

let driving = { (place: String) in
  print("I'm going to \(place) in my car")
}

let drivingWithReturn = { (place: String) -> String in
  return "I'm going to \(place) in my car"
}

let message = drivingWithReturn("London")
print(message)

// How do you return a value from a closure that takes no parameters?

// First, here’s a closure that accepts one parameter and returns nothing:
let payment = { (user: String) in
  print("Paying \(user)…")
}

// Now here’s a closure that accepts one parameter and returns a Boolean:
let payment2 = { (user: String) -> Bool in
  print("Paying \(user)…")
  return true
}

// If you want to return a value without accepting any parameters
let payment3 = { () -> Bool in
  print("Paying an anonymous person…")
  return true
}

/*
 * VALID SYNTAX
 */

var flyDrone = { (hasPermit: Bool) -> Bool in
  if hasPermit {
    print("Let's find somewhere safe!")
    return true
  }
  print("That's against the law.")
  return false
}

// -------
var difficultyRating = { (trick: String) -> Int in
  if trick == "ollie" {
    return 1
  } else if trick == "Yoyo Plant" {
    return 3
  } else if trick == "900" {
    return 5
  } else {
    return 0
  }
}
print(difficultyRating("ollie"))

// -------
var costToShootMovie = { (location: String) -> Int in
  if location == "UK" {
    return 1_000_000
  } else if location == "US" {
    return 5_000_000
  } else {
    return 500_000
  }
}

// -------
let writeEssay = { (topic: String) -> String in
  return "Here's an essay on \(topic)."
}

// -------
let bakeBirthdayCake = { (name: String) -> Int in
  print("I've made a cake for \(name); here's the bill.")
  return 50
}
