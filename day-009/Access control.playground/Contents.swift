// Created by Ziady Mubaraq on 26/12/2023

import UIKit

struct Person {
  var id: String

  init(id: String) {
    self.id = id
  }
}

let ed = Person(id: "12345")

// Make the id variable are private, now only methods in Person can access the id
struct Person2 {
  private var id: String

  init(id: String) {
    self.id = id
  }

  func identify() -> String {
    return "My social security number is \(id)"
  }
}

/*
 * VALID SYNTAX
 */
struct Person3 {
  private var socialSecurityNumber: String
  init(ssn: String) {
    socialSecurityNumber = ssn
  }
}
let sarah = Person3(ssn: "555-55-5555")

// -------
struct Contributor {
  private var name = "Anonymous"
}
let paul = Contributor()

// -------
struct Office {
  private var passCode: String
  var address: String
  var employees: [String]
  init(address: String, employees: [String]) {
    self.address = address
    self.employees = employees
    self.passCode = "SEKRIT"
  }
}
let monmouthStreet = Office(address: "30 Monmouth St", employees: ["Paul Hudson"])

// ------
struct School {
  var staffNames: [String]
  private var studentNames: [String]
  init(staff: [String]) {
    self.staffNames = staff
    self.studentNames = [String]()
  }
}
let royalHigh = School(staff: ["Mrs Hughes"])

// -------
struct Customer {
  var name: String
  private var creditCardNumber: Int
  init(name: String, creditCard: Int) {
    self.name = name
    self.creditCardNumber = creditCard
  }
}
let lottie = Customer(name: "Lottie Knights", creditCard: 1234567890)

// ------
struct App {
  var name: String
  private var sales = 0
  init(name: String) {
    self.name = name
  }
}
let spotify = App(name: "Spotify")
