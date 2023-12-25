// Created by Ziady Mubaraq on 25/12/23.

import UIKit

//struct Progress {
//  var task: String
//  var amount: Int
//}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100

struct Progress {
  var task: String
  var amount: Int {
      
    // Before property changes
    willSet {
      print("property will change")
    }
    
    // After property changes
    didSet {
      print("\(task) is now \(amount)% complete")
    }
  }
}

/*
 * VALID SYNTAX
 */
struct BankAccount {
  var name: String
  var isMillionnaire = false
  var balance: Int {
    didSet {
      if balance > 1_000_000 {
        isMillionnaire = true
      } else {
        isMillionnaire = false
      }
    }
  }
}

// -------
struct App {
  var name: String
  var isOnSale: Bool {
    didSet {
      if isOnSale {
        print("Go and download my app!")
      } else {
        print("Maybe download it later.")
      }
    }
  }
}

// -------
struct Child {
  var name: String
  var age: Int {
    didSet {
      print("Happy birthday, \(name)!")
    }
  }
}

// -------
struct Person {
  var clothes: String {
    didSet {
      print("I'm changing to \(clothes)")
    }
  }
}

// -------
struct FishTank {
  var capacity: Int
  var fishCount: Int {
    didSet {
      if fishCount > capacity {
        print("You have too many fish!")
      }
    }
  }
}

// ------
struct Game {
  var score: Int {
    didSet {
      print("Your score is now \(score).")
    }
  }
}
