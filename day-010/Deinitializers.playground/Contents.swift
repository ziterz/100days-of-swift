// Created by Ziady Mubaraq on 27/12/2023

import UIKit

class Person {
    var name = "John Doe"

  init() {
    print("\(name) is alive!")
  }

  func printGreeting() {
    print("Hello, I'm \(name)")
  }
  
  // Deinitializer
  deinit {
      print("\(name) is no more!")
  }
}

for _ in 1...3 {
  let person = Person()
  person.printGreeting()
}

/*
 * VALID SYNTAX
 */
class Job {
  deinit {
    print("I quit!")
  }
}

// -------
class IceCream {
  deinit {
    print("No more icecream :(")
  }
}

// -------
class Lightsaber {
  deinit {
    print("Fssshhp!")
  }
}

// -------
class DisneyMovie {
  deinit {
    print("Relax, there'll be another in a year.")
  }
}

// -------
class MagicSpell {
  deinit {
    print("Good job, Hermione!")
  }
}

// -------
class Firefly {
  deinit {
    print("I'm still annoyed that this was cancelled.")
  }
}
