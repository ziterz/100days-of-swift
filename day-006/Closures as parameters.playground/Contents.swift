// Created by Ziady Mubaraq on 22/12/23.

import UIKit

let driving = {
  print("I'm driving in my car")
}

func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}

travel(action: driving)

/*
 * VALID SYNTAX
 */

let awesomeTalk = {
  print("Here's a great talk!")
}
func deliverTalk(name: String, type: () -> Void) {
  print("My talk is called \(name)")
  type()
}
deliverTalk(name: "My Awesome Talk", type: awesomeTalk)

// -------
let swanDive = {
  print("SWAN DIVE!")
}
func performDive(type dive: () -> Void) {
  print("I'm climbing up to the top")
  dive()
}
performDive(type: swanDive)

// -------
let helicopterTravel = {
  print("Get to the chopper!")
}
func travel(by travelMeans: () -> Void) {
  print("Let's go on vacation...")
  travelMeans()
}
travel(by: helicopterTravel)

// -------
var goOnBike = {
  print("I'll take my bicycle.")
}
func race(using vehicleType: () -> Void) {
  print("Let's race!")
  vehicleType()
}

// -------
var payCash = {
  print("Here's the money.")
}
func buyClothes(item: String, using payment: () -> Void) {
  print("I'll take this \(item).")
  payment()
}
buyClothes(item: "jacket", using: payCash)

// -------
var learnWithUnwrap = {
  print("Hey, this is fun!")
}
func learnSwift(using approach: () -> Void) {
  print("I'm learning Swift")
  approach()
}
learnSwift(using: learnWithUnwrap)
