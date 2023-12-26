// Created by Ziady Mubaraq on 26/12/2023

import UIKit

var toys = ["Woody"]

print(toys.count)

toys.append("Buzz")

toys.firstIndex(of: "Buzz")

print(toys.sorted())

toys.remove(at: 0)
var myString = ""

if myString.isEmpty {
  // code
}

/*
 * VALID SYNTAX
 */
var usedNumbers = [Int]()
for i in 1...10 {
  usedNumbers.append(i)
}
usedNumbers.count > 5

// -------
let spaceships = ["Serenity", "Enterprise"]
spaceships.contains("Serenity")

// -------
let tens = [30, 20, 10]
tens.sorted() == [10, 20, 30]

// -------
let cardGames = ["Poker", "Blackjack", "Whist"]
cardGames.firstIndex(of: "Whist") == 2

// -------
let marines = ["Apone", "Hicks", "Vasquez"]
marines.contains("Hicks")

// -------
var results = [true, true, false, true]
results.remove(at: 2)
results.count == 3
