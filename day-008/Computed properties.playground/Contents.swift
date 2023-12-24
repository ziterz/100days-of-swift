// Created by Ziady Mubaraq on 24/12/23.

import UIKit

struct Sport {
  var name: String
  var isOlympicSport: Bool

  var olympicStatus: String {
    if isOlympicSport {
      return "\(name) is an Olympic sport"
    } else {
      return "\(name) is not an Olympic sport"
    }
  }
}

let chessBoxing = Sport(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)

// When should you use a computed property or a stored property?


/*
 * VALID SYNTAX
 */
struct Wine {
  var age: Int
  var isVintage: Bool
  var price: Int {
    if isVintage {
      return age + 20
    } else {
      return age + 5
    }
  }
}
let malbec = Wine(age: 2, isVintage: true)
print(malbec.price)

// -------
struct Medicine {
  var amount: Int
  var frequency: Int
  var dosage: String {
    return "Take \(amount) pills \(frequency) times a day."
  }
}

// -------
struct Swordfighter {
  var name: String
  var introduction: String {
    return "Hello, my name is \(name)."
  }
}
let inigo = Swordfighter(name: "Inigo Montoya")

// -------
struct Keyboard {
  var isMechanical = false
  var noiseLevel: Int {
    if isMechanical {
      return 11
    } else {
      return 3
    }
  }
}
let majestouch = Keyboard(isMechanical: true)
print(majestouch.noiseLevel)

// -------
struct Investor {
  var age: Int
  var investmentPlan: String {
    if age < 30 {
      return "Shares"
    } else if age < 60 {
      return "Equities"
    } else {
      return "Bonds"
    }
  }
}
let investor = Investor(age: 38)
print(investor.investmentPlan)

// -------
struct Toy {
  var color: String
  var isForGirls: Bool {
    if color == "Pink" {
      return true
    } else {
      return true
    }
  }
}
