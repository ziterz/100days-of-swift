// Created by Ziady Mubaraq on 03/01/2024

import UIKit

class Singer {
  func playSong() {
    print("Shake it off!")
  }
}

func sing() -> () -> Void {
  let taylor = Singer()
  
  let singing = {
    taylor.playSong()
    return
  }
  
  return singing
}

let singFunction = sing()
singFunction()

// MARK: Strong capturing
func sing() -> () -> Void {
  let taylor = Singer()
  
  let singing = {
    taylor.playSong()
    return
  }
  
  return singing
}

// MARK: Weak capturing
func sing() -> () -> Void {
  let taylor = Singer()
  
  let singing = { [weak taylor] in
    taylor?.playSong()
    return
  }
  
  return singing
}

func sing() -> () -> Void {
  let taylor = Singer()
  
  let singing = { [weak taylor] in
    taylor!.playSong()
    return
  }
  
  return singing
}

// MARK: Unowned capturing
func sing() -> () -> Void {
  let taylor = Singer()
  
  let singing = { [unowned taylor] in
    taylor.playSong()
    return
  }
  
  return singing
}

// MARK: Common problems
// 1. They aren’t sure where to use capture lists when closures accept parameters.
// 2. They make strong reference cycles, causing memory to get eaten up.
// 3. They accidentally use strong references, particularly when using multiple captures.
// 4. They make copies of closures and share captured data.

// MARK: Capture lists alongside parameters
writeToLog { [weak self] user, message in
  self?.addToLog("\(user) triggered event: \(message)")
}

class House {
  var ownerDetails: (() -> Void)?
  
  func printDetails() {
    print("This is a great house.")
  }
  
  deinit {
    print("I'm being demolished!")
  }
}

class Owner {
  var houseDetails: (() -> Void)?
  
  func printDetails() {
    print("I own a house.")
  }
  
  deinit {
    print("I'm dying!")
  }
}

print("Creating a house and an owner")

do {
  let house = House()
  let owner = Owner()
}

print("Done")

print("Creating a house and an owner")

do {
  let house = House()
  let owner = Owner()
  house.ownerDetails = owner.printDetails
  owner.houseDetails = house.printDetails
}

print("Done")

print("Creating a house and an owner")

do {
  let house = House()
  let owner = Owner()
  house.ownerDetails = { [weak owner] in owner?.printDetails() }
  owner.houseDetails = { [weak house] in house?.printDetails() }
}

print("Done")

// MARK: Accidental strong references
func sing() -> () -> Void {
  let taylor = Singer()
  let adele = Singer()
  
  let singing = { [unowned taylor, adele] in
    taylor.playSong()
    adele.playSong()
    return
  }
  
  return singing
}

[unowned taylor, unowned adele]

class Singer {
  init() {
    playSong()
  }
  
  func playSong() {
    print("Shake it off!")
  }
}

// MARK: Copies of closures
var numberOfLinesLogged = 0

let logger1 = {
  numberOfLinesLogged += 1
  print("Lines logged: \(numberOfLinesLogged)")
}

logger1()

let logger2 = logger1
logger2()
logger1()
logger2()
