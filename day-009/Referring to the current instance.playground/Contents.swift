// Created by Ziady Mubaraq on 26/12/2023

import UIKit

struct Person {
  var name: String

  init(name: String) {
    print("\(name) was born!")
    self.name = name
  }
}
let people = Person(name: "Ziady")

// Where you’re likely to want parameter names that match the property names of your type
struct Student {
  var name: String
  var bestFriend: String

  init(name: String, bestFriend: String) {
    print("Enrolling \(name) in class…")
    self.name = name
    self.bestFriend = bestFriend
  }
}

// You don’t have to use that, of course, but it gets a little clumsy adding some sort of prefix to the parameter names
struct Student2 {
  var name: String
  var bestFriend: String

  init(name studentName: String, bestFriend studentBestFriend: String) {
    print("Enrolling \(studentName) in class…")
    name = studentName
    bestFriend = studentBestFriend
  }
}

/*
 * VALID SYNTAX
 */
struct Conference {
  var name: String
  var location: String
  init(name: String, location: String) {
    self.name = name
    self.location = location
  }
}
let wwdc = Conference(name: "WWDC", location: "San Jose")

// -------
struct SuperHero {
  var nickname: String
  var powers: [String]
  init(nickname: String, superPowers: [String]) {
    self.nickname = nickname
    self.powers = superPowers
  }
}
let batman = SuperHero(nickname: "The Caped Crusader", superPowers: ["He's really rich"])

// -------
struct Kitchen {
  var utensils: [String]
  init(utensils: [String]) {
    self.utensils = utensils
  }
}

// -------
struct Character {
  var name: String
  var actor: String
  var probablyGoingToDie: Bool
  init(name: String, actor: String) {
    self.name = name
    self.actor = actor
    if self.actor == "Sean Bean" {
      probablyGoingToDie = true
    } else {
      probablyGoingToDie = false
    }
  }
}

// -------
struct Cottage {
  var rooms: Int
  var rating = 5
  init(rooms: Int) {
    self.rooms = rooms
  }
}
let bailbrookHouse = Cottage(rooms: 4)

// -------
struct District {
  var number: Int
  var supervisor: String
  init(number: Int, supervisor: String) {
    self.number = number
    self.supervisor = supervisor
  }
}
let district = District(number: 9, supervisor: "Unknown")
