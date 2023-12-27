// Created by Ziady Mubaraq on 27/12/2023

import UIKit

protocol Identifiable {
  var id: String { get set }
  func identify()
}

extension Identifiable {
  func identify() {
    print("My ID is \(id).")
  }
}

struct User: Identifiable {
  var id: String
}

let twostraws = User(id: "twostraws")
twostraws.identify()

/*
 * VALID SYNTAX
 */
protocol HasAge {
  var age: Int { get set }
  mutating func celebrateBirthday()
}

// -------
protocol Paintable { }
protocol Tileable { }
struct Wall: Paintable, Tileable { }

// -------
extension Collection {
  func describe() {
    if count == 1 {
      print("There is 1 item.")
    } else {
      print("There are \(count) items.")
    }
  }
}

// -------
protocol Inflatable {
  mutating func refillAir()
}
extension Inflatable {
  mutating func refillAir() {
    print("Refilling the air.")
  }
}

// -------
protocol SuitableForKids {
  var minimumAge: Int { get set }
  var maximumAge: Int { get set }
}
protocol SupportsMultiplePlayers {
  var minimumPlayers: Int { get set }
  var maximumPlayers: Int { get set }
}
struct FamilyBoardGame: SuitableForKids, SupportsMultiplePlayers {
  var minimumAge = 3
  var maximumAge = 110
  var minimumPlayers = 1
  var maximumPlayers = 4
}

// -------
//protocol Identifiable {
//  var id: Int { get set }
//}
