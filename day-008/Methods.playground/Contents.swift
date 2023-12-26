// Created by Ziady Mubaraq on 26/12/2023

import UIKit

struct City {
  var population: Int

  func collectTaxes() -> Int {
    return population * 1000
  }
}

let london = City(population: 9_000_000)
london.collectTaxes()

/*
 * VALID SYNTAX
 */
struct Pokemon {
  var name: String
  func attack(with attackType: String) {
    print("\(name) uses \(attackType)!")
  }
}

// -------
struct Venue {
  var name: String
  var maximumCapacity: Int
  func makeBooking(for people: Int) {
    if people > maximumCapacity {
      print("Sorry, we can only accommodate \(maximumCapacity).")
    } else {
      print("\(name) is all yours!")
    }
  }
}

// -------
struct User {
  var name: String
  var street: String
  var city: String
  var postalCode: String
  func printAddress() -> String {
    return """
    \(name)
    \(street)
    \(city)
    \(postalCode)
    """
  }
}

// -------
struct XWing {
  var callSign: String
  func startTrenchRun() -> Bool {
    if callSign == "Red 5" {
      print("I'm going to blow up the Death Star!")
      return true
    } else {
      print("I'm hit!")
      return false
    }
  }
}

// -------
struct Car {
  var maxSpeed: Int
  func accelerate(to speed: Int) {
    if speed > maxSpeed {
      print("That's too fast!")
    } else {
      print("OK, let's go!")
    }
  }
}

// -------
struct Singer {
  var signatureSong: String
  func sing() {
    print("Who wants to hear \(signatureSong)?")
  }
}
