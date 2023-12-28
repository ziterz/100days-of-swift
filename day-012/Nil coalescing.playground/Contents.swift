// Created by Ziady Mubaraq on 28/12/2023

import UIKit

func username(for id: Int) -> String? {
  if id == 1 {
    return "Taylor Swift"
  } else {
    return nil
  }
}

let user = username(for: 15) ?? "Anonymous"\

let savedData = loadSavedMessage() ?? ""

let savedData = first() ?? second() ?? ""

// nil coalescing on dictionaries
let scores = ["Picard": 800, "Data": 7000, "Troi": 900]
let crusherScore = scores["Crusher"] ?? 0

// but the dictionaries offer a slightly different approach
let crusherScore = scores["Crusher", default: 0]

/*
 * VALID SYNTAX
 */
let lightsaberColor: String? = "green"
let color = lightsaberColor ?? "blue"

// -------
var captain: String? = "Kathryn Janeway"
let name = captain ?? "Anonymous"

// -------
let planetNumber: Int? = 426
var destination = planetNumber ?? 3

// -------
let distanceRan: Double? = 0.5
let distance: Double = distanceRan ?? 0

// -------
var userOptedIn: Bool? = nil
var optedIn = userOptedIn ?? false

// -------
var selectedYear: Int? = nil
let actualYear = selectedYear ?? 1989
