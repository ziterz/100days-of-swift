// Created by Ziady Mubaraq on 26/12/2023

import UIKit

let string = "Do or do not, there is no try."
print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())

/*
 * VALID SYNTAX
 */
let username = "twostraws"
username.uppercased() == "TWOSTRAWS"

// -------
var mac = "iMac"
mac.hasPrefix("i")

// -------
var str = ""
for i in 1...5 {
  str += "\(i)"
}
str.count == 5

// -------
let joke = "What's red and smells like blue paint? Red paint."
joke.count > 10

// -------
let song = "Shake it Off"
song.uppercased().contains("SHAKE")

// -------
let quote = "Time is an illusion. Lunchtime doubly so."
quote.contains("Lunch")
