// Created by Ziady Mubaraq on 28/12/2023

import UIKit

let str = "5"
let num = Int(str)

struct Person {
  var id: String

  init?(id: String) {
    if id.count == 9 {
      self.id = id
    } else {
      return nil
    }
  }
}

// Why would you want a failable initializer?

struct Employee {
  var username: String
  var password: String

  init?(username: String, password: String) {
    guard password.count >= 8 else { return nil }
    guard password.lowercased() != "password" else { return nil }

    self.username = username
    self.password = password
  }
}

let tim = Employee(username: "TimC", password: "app1e")
let craig = Employee(username: "CraigF", password: "ha1rf0rce0ne")

/*
 * VALID SYNTAX THAT RETURN NIL
 */
struct Password {
  var text: String
  init?(input: String) {
    if input.count < 6 {
      print("Password too short.")
      return nil
    }
    text = input
  }
}
let password = Password(input: "hell0")

// -------
struct DEFCONRating {
  var number: Int
  init?(number: Int) {
    guard number > 0 else { return nil }
    guard number <= 5 else { return nil }
    self.number = number
  }
}
let defcon = DEFCONRating(number: 6)

// -------
var enabled = "False"
let convertedEnabled = Bool(enabled)

// -------
var rating = "5 stars"
let convertedRating = Int(rating)

// -------
var powerUsage = "0,1"
let convertedPowerUsage = Double(powerUsage)

// -------
class Hotel {
  var starRating: Int
  init?(rating: Int) {
    if rating <= 1 {
      print("This probably has bed bugs.")
      return nil
    }
    self.starRating = rating
  }
}
let hotelElan = Hotel(rating: 1)
