// Created by Ziady Mubaraq on 22/12/23.

import UIKit

func travel(action: () -> Void) {
  print("I'm getting ready to go.")
  action()
  print("I arrived!")
}

travel() {
  print("I'm driving in my car")
}

travel {
  print("I'm driving in my car")
}

func animate(duration: Double, animations: () -> Void) {
  print("Starting a \(duration) second animation…")
  animations()
}

animate(duration: 3, animations: {
  print("Fade out the image")
})

animate(duration: 3) {
  print("Fade out the image")
}
/*
 * VALID SYNTAX
 */

func doTricks(_ tricks: () -> Void) {
  print("Start recording now!")
  tricks()
  print("Did you get all that?")
}

// -------
func tendGarden(activities: () -> Void) {
  print("I love gardening")
  activities()
}
tendGarden {
  print("Let's grow some roses!")
}

// -------
func makeCake(instructions: () -> Void) {
  print("Wash hands")
  print("Collect ingredients")
  instructions()
  print("Here's your cake!")
}
makeCake {
  print("Mix egg and flour")
}

// -------
func repeatAction(count: Int, action: () -> Void) {
  for _ in 0..<count {
    action()
  }
}
repeatAction(count: 5) {
  print("Hello, world!")
}

// -------
func goCamping(then action: () -> Void) {
  print("We're going camping!")
  action()
}
goCamping {
  print("Sing songs")
  print("Put up tent")
  print("Attempt to sleep")
}

// -------
func goOnVacation(to destination: String, _ activities: () -> Void) {
  print("Packing bags...")
  print("Getting on plane to \(destination)...")
  activities()
  print("Time to go home!")
}
goOnVacation(to: "Mexico") {
  print("Go sightseeing")
  print("Relax in sun")
  print("Go hiking")
}
