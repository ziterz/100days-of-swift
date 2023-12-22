// Created by Ziady Mubaraq on 22/12/23.

import UIKit

func travel(action: (String) -> String) {
  print("I'm getting ready to go.")
  let description = action("London")
  print(description)
  print("I arrived!")
}

travel { (place: String) -> String in
  return "I'm going to \(place) in my car"
}

// When would you use closures with return values as parameters to a function?

func reduce(_ values: [Int], using closure: (Int, Int) -> Int) -> Int {
  // start with a total equal to the first value
  var current = values[0]

  // loop over all the values in the array, counting from index 1 onwards
  for value in values[1...] {
    // call our closure with the current value and the array element, assigning its result to our current value
    current = closure(current, value)
  }

  // send back the final current value
  return current
}

let numbers = [10, 20, 30]

let sum = reduce(numbers) { (runningTotal: Int, next: Int) in
  runningTotal + next
}

let multiplied = reduce(numbers) { (runningTotal: Int, next: Int) in
  runningTotal * next
}

let sum2 = reduce(numbers, using: +)

print(sum)

/*
 * VALID SYNTAX
 */

func playSong(_ name: String, notes: () -> String) {
  print("I'm going to play \(name).")
  let playedNotes = notes()
  print(playedNotes)
}
playSong("Mary Had a Little Lamb") {
  return "EDCDEEEDDDEGG"
}

// -------
func activateAI(_ ai: () -> String) {
  print("Let's see what this thing can do...")
  let result = ai()
  print(result)
}
activateAI {
  return "Come with me if you want to live."
}

// -------
func loadData(input: () -> String) {
  print("Loading...")
  let str = input()
  print("Loaded: \(str)")
}
loadData {
  return "He thrusts his fists against the posts"
}

// -------
func manipulate(numbers: [Int], using algorithm: (Int) -> Int) {
  for number in numbers {
    let result = algorithm(number)
    print("Manipulating \(number) produced \(result)")
  }
}
manipulate(numbers: [1, 2, 3]) { number in
  return number * number
}

// -------
func encrypt(password: String, using algorithm: (String) -> String) {
  print("Encrypting password...")
  let result = algorithm(password)
  print("The result is \(result)")
}
encrypt(password: "t4ylor") { (password: String) in
  print("Using top secret encryption!")
  return "SECRET" + password + "SECRET"
}

// -------
func increaseBankBalance(start: Double, interestCalculator: () -> Double) {
  print("Your current balance is \(start).")
  let interestRate = interestCalculator()
  let withInterest = start * interestRate
  print("You now have \(withInterest).")
}
increaseBankBalance(start: 200.0) {
  return 1.01
}
