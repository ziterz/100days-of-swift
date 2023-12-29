// Created by Ziady Mubaraq on  29/12/2023

import UIKit

var action: String
var person = "hater"

if person == "hater" {
    action = "hate"
}

var action: String
var person = "hater"

if person == "hater" {
    action = "hate"
} else if person == "player" {
    action = "play"
} else {
    action = "cruise"
}

// Evaluating multiple conditions
var action: String
var stayOutTooLate = true
var nothingInBrain = true

if stayOutTooLate && nothingInBrain {
    action = "cruise"
}

// Looking for the opposite of truth
if !stayOutTooLate && !nothingInBrain {
    action = "cruise"
}
