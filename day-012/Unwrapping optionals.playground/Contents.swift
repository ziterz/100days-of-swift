// Created by Ziady Mubaraq on 27/12/2023

import UIKit

var name: String? = nil

// Unwrapping optionals
if let unwrapped = name {
  print("\(unwrapped.count) letters")
} else {
  print("Missing name.")
}

// Why does Swift make us unwrap optionals?
func getUsername() -> String? {
  "Taylor"
}

if let username = getUsername() {
  print("Username is \(username)")
} else {
  print("No username")
}

// Shortcut for
if let number = number {
    print(square(number: number))
}

// To be
if let number {
    print(square(number: number))
}

/*
 * VALID SYNTAX
 */
var favoriteMovie: String? = nil
favoriteMovie = "The Life of Brian"
if let movie = favoriteMovie {
  print("Your favorite movie is \(movie).")
} else {
  print("You don't have a favorite movie.")
}

// -------
let song: String? = "Shake it Off"
if let unwrappedSong = song {
  print("The name has \(unwrappedSong.count) letters.")
}

// -------
let currentDestination: String? = nil
if let destination = currentDestination {
  print("We're walking to \(destination).")
} else {
  print("We're just wandering.")
}

// -------
let album = "Red"
let albums = ["Reputation", "Red", "1989"]
if let position = albums.firstIndex(of: album) {
  print("Found \(album) at position \(position).")
}

// -------
let userAge: Int? = 38
if let age = userAge {
  print("You are \(age) years old.")
}

// -------
var winner: String? = nil
winner = "Daley Thompson"
if let name = winner {
  print("And the winner is... \(name)!")
}
