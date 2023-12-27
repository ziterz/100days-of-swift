// Created by Ziady Mubaraq on 27/12/2023

import UIKit

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
  func summarize() {
    print("There are \(count) of us:")

    for name in self {
      print(name)
    }
  }
}

pythons.summarize()
beatles.summarize()

// When are protocol extensions useful in Swift?

// Array
let numbers = [4, 8, 15, 16]
let allEven = numbers.allSatisfy { $0.isMultiple(of: 2) }

// Set
let numbers2 = Set([4, 8, 15, 16])
let allEven2 = numbers2.allSatisfy { $0.isMultiple(of: 2) }

// Dictionary
let numbers3 = ["four": 4, "eight": 8, "fifteen": 15, "sixteen": 16]
let allEven3 = numbers3.allSatisfy { $0.value.isMultiple(of: 2) }

/*
 * VALID SYNTAX
 */
protocol Politician {
  var isDirty: Bool { get set }
  func takeBribe()
}
extension Politician {
  func takeBribe() {
    if isDirty {
      print("Thank you very much!")
    } else {
      print("Someone call the police!")
    }
  }
}

// ------
protocol Anime {
  var availableLanguages: [String] { get set }
  func watch(in language: String)
}
extension Anime {
  func watch(in language: String) {
    if availableLanguages.contains(language) {
      print("Now playing in \(language)")
    } else {
      print("Unrecognized language.")
    }
  }
}

// -------
protocol Mammal {
  func eat()
}
extension Mammal {
  func eat() {
    print("Time for dinner!")
  }
}

// -------
protocol Hamster {
  var name: String { get set }
  func runInWheel(minutes: Int)
}
extension Hamster {
  func runInWheel(minutes: Int) {
    print("\(name) is going for a run.")
    for _ in 0..<minutes {
      print("Whirr whirr whirr")
    }
  }
}

// -------
protocol Starship {
  func transport(number: Int)
}
extension Starship {
  func transport(number: Int) {
    print("\(number) to beam up - energize!")
  }
}

// -------
protocol Fencer {
  func fenceFoil()
}
extension Fencer {
  func fenceFoil() {
    print("En garde!")
  }
}
