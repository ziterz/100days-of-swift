// Created by Ziady Mubaraq on 26/12/2023

import UIKit

struct Student {
  var name: String

  init(name: String) {
    self.name = name
  }
}

let ed = Student(name: "Ed")
let taylor = Student(name: "Taylor")

struct Student2 {
  static var classSize = 0
  var name: String

  init(name: String) {
    self.name = name
    Student2.classSize += 1
  }
}

let ed2 = Student2(name: "Ed")
let taylor2 = Student2(name: "Taylor")
print(Student2.classSize)

struct Unwrap {
  static let appURL = "https://itunes.apple.com/app/id1440611372"
  static var entropy = Int.random(in: 1...1000)
  private static var entropy2 = Int.random(in: 1...1000)

  static func getEntropy() -> Int {
    entropy += 1
    return entropy
  }
}

/*
 * VALID SYNTAX
 */
struct Amplifier {
  static let maximumVolume = 11
  var currentVolume: Int
}

// -------
struct NewsStory {
  static var breakingNewsCount = 0
  static var regularNewsCount = 0
  var headline: String
  init(headline: String, isBreaking: Bool) {
    self.headline = headline
    if isBreaking {
      NewsStory.breakingNewsCount += 1
    } else {
      NewsStory.regularNewsCount += 1
    }
  }
}

// -------
struct FootballTeam {
  static let teamSize = 11
  var players: [String]
}

// -------
struct Pokemon {
  static var numberCaught = 0
  var name: String
  static func catchPokemon() {
    print("Caught!")
    Pokemon.numberCaught += 1
  }
}

// -------
struct Order {
  static let orderFormat = "XXX-XXXX"
  var orderNumber: String
}

// -------
struct LegoBrick {
  static var numberMade = 0
  var shape: String
  var color: String
  init(shape: String, color: String) {
    self.shape = shape
    self.color = color
    LegoBrick.numberMade += 1
  }
}
