// Created by Ziady Mubaraq on 26/12/2023

import UIKit

class Dog {
  var name: String
  var breed: String

  init(name: String, breed: String) {
    self.name = name
    self.breed = breed
  }
}

// Inherit
class Poodle: Dog {
  init(name: String) {
    super.init(name: name, breed: "Poodle")
  }
}

/*
 * VALID SYNTAX
 */
class Handbag {
  var price: Int
  init(price: Int) {
    self.price = price
  }
}
class DesignerHandbag: Handbag {
  var brand: String
  init(brand: String, price: Int) {
    self.brand = brand
    super.init(price: price)
  }
}

// -------
class Product {
  var name: String
  init(name: String) {
    self.name = name
  }
}
class Book: Product {
  var isbn: String
  init(name: String, isbn: String) {
    self.isbn = isbn
    super.init(name: name)
  }
}

// -------
class Bicycle {
  var color: String
  init(color: String) {
    self.color = color
  }
}
class MountainBike: Bicycle {
  var tireThickness: Double
  init(color: String, tireThickness: Double) {
    self.tireThickness = tireThickness
    super.init(color: color)
  }
}

// -------
class Instrument {
  var name: String
  init(name: String) {
    self.name = name
  }
}
class Piano: Instrument {
  var isElectric: Bool
  init(isElectric: Bool) {
    self.isElectric = isElectric
    super.init(name: "Piano")
  }
}

// -------
class Printer {
  var cost: Int
  init(cost: Int) {
    self.cost = cost
  }
}
class LaserPrinter: Printer {
  var model: String
  init(model: String, cost: Int) {
    self.model = model
    super.init(cost: cost)
  }
}

// -------
class Shape {
  var sides: Int
  init(sides: Int) {
    self.sides = sides
  }
}
class Rectangle: Shape {
  var color: String
  init(color: String) {
    self.color = color
    super.init(sides: 4)
  }
}
