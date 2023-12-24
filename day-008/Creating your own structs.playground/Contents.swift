// Created by Ziady Mubaraq on 24/12/23.

import UIKit

struct Sport {
  var name: String
}

var tennis = Sport(name: "Tennis")
print(tennis.name)

tennis.name = "Lawn tennis"

// What’s the difference between a struct and a tuple?
// a tuple is effectively just a struct without a name, like an anonymous struct.
// (name: String, age: Int, city: String) and it will do the same thing as the following struct:
struct User {
  var name: String
  var age: Int
  var city: String
}

//func authenticate(_ user: User) { ... }
//func showProfile(for user: User) { ... }
//func signOut(_ user: User) { ... }

//func authenticate(_ user: (name: String, age: Int, city: String)) { ... }
//func showProfile(for user: (name: String, age: Int, city: String)) { ... }
//func signOut(_ user: (name: String, age: Int, city: String)) { ... }

/*
 * VALID SYNTAX
 */
struct ChessPiece {
  var name: String
  var value: Int
}

// -------
struct User2 {
  var name = "Anonymous"
  var age: Int
}
let twostraws = User2(name: "Paul", age: 38)

// -------
struct Phone {
  var manufacturer: String
  var screenSize: Double
}

// -------
struct WeatherForecast {
  var dayNumber: Int
  var temperature: Int
}
let monday = WeatherForecast(dayNumber: 1, temperature: 25)

// -------
struct Book {
  var title: String
  var author = "Unknown"
  var pageCount = 0
}

// -------
struct Player {
  var name: String
  var position: String
}
let harry = Player(name: "Harry Kane", position: "Forward")
