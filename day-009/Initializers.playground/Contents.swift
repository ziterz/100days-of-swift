// Created by Ziady Mubaraq on 26/12/2023

import UIKit

struct User1 {
  var username: String
}

var user1 = User1(username: "twostraws")

struct User {
  var username: String

  init() {
    username = "Anonymous"
    print("Creating a new user!")
  }
}

var user = User()
user.username = "twostraws"

struct User3 {
  var name: String
  var yearsActive = 0
}

struct Employee {
    var name: String
    var yearsActive = 0
}

let roslin = Employee(name: "Laura Roslin")
let adama = Employee(name: "William Adama", yearsActive: 45)

// with custom initializer
struct Employee2 {
  var name: String
  var yearsActive = 0

  init() {
    self.name = "Anonymous"
    print("Creating an anonymous employee…")
  }
}

struct Employee3 {
  var name: String
  var yearsActive = 0
}

extension Employee3 {
  init() {
    self.name = "Anonymous"
    print("Creating an anonymous employee…")
  }
}

// creating a named employee now works
let roslin2 = Employee3(name: "Laura Roslin")

// as does creating an anonymous employee
let anon = Employee3()

/*
 * VALID SYNTAX
 */
struct Experiment {
  var cost = 0
}
let lhc = Experiment(cost: 13_250_000_000)

// -------
struct Dictionary {
  var words = Set<String>()
}
let dictionary = Dictionary()

// -------
struct Country {
  var name: String
  var usesImperialMeasurements: Bool
  init(countryName: String) {
    name = countryName
    let imperialCountries = ["Liberia", "Myanmar", "USA"]
    if imperialCountries.contains(name) {
      usesImperialMeasurements = true
    } else {
      usesImperialMeasurements = false
    }
  }
}

// -------
struct Message {
  var from: String
  var to: String
  var content: String
  init() {
    from = "Unknown"
    to = "Unknown"
    content = "Yo"
  }
}
let message = Message()

// -------
struct PowerTool {
  var name: String
  var cost: Int
}
let drill = PowerTool(name: "Hammer Drill", cost: 80)

// -------
struct Cabinet {
  var height: Double
  var width: Double
  var area: Double
  init (itemHeight: Double, itemWidth: Double) {
    height = itemHeight
    width = itemWidth
    area = height * width
  }
}
let drawers = Cabinet(itemHeight: 1.4, itemWidth: 1.0)
