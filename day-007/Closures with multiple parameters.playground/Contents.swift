// Created by Ziady Mubaraq on 22/12/23.

import UIKit

func travel(action: (String, Int) -> String) {
  print("I'm getting ready to go.")
  let description = action("London", 60)
  print(description)
  print("I arrived!")
}

travel {
  "I'm going to \($0) at \($1) miles per hour."
}

/*
 * VALID SYNTAX
 */

func fadeOut(completion: () -> Void) {
  print("Making the screen dim...")
  completion()
}

// -------
func getTransport(destination: String, method: (String, Int) -> Bool) {
  let maxCost = 10
  let result = method(destination, maxCost)
  if result {
    print("OK, you can travel.")
  } else {
    print("Sorry, you need more money.")
  }
}

// -------
func sendNewsletter(getRecipients: () -> [String]) {
  let recipients = getRecipients()
  for person in recipients {
    print("I'm sending an email to \(person)")
  }
}

// -------
func sleep(haveDream: () -> String) {
  print("Yawn... time for bed.")
  let dream = haveDream()
  print("I had a dream about \(dream).")
}

// -------
func playSong(instrumentClosure: (String, Int) -> Void) {
  let song = "Stairway to Heaven"
  let volume = 11
  print("I'm going to play \(song)...")
  instrumentClosure(song, volume)
}

// -------
func authenticate(algorithm: (String, String) -> Bool) {
  print("Authenticating user")
  let username = "twostraws"
  let password = "fr0sties"
  let result = algorithm(username, password)
  if result {
    print("You're in!")
  } else {
    print("Try again.")
  }
}
