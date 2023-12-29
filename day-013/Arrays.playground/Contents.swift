// Created by Ziady Mubaraq on  29/12/2023

import UIKit

var evenNumbers = [2, 4, 6, 8]
var songs = ["Shake it Off", "You Belong with Me", "Back to December"]

var songs = ["Shake it Off", "You Belong with Me", "Back to December"]
songs[0]
songs[1]
songs[2]

var songs = ["Shake it Off", "You Belong with Me", "Back to December"]
type(of: songs)

var songs = ["Shake it Off", "You Belong with Me", "Back to December", 3]
type(of: songs)

var songs: [String] = ["Shake it Off", "You Belong with Me", "Back to December", 3]

var songs: [Any] = ["Shake it Off", "You Belong with Me", "Back to December", 3]

// MARK: Creating arrays
var songs: [String]
songs[0] = "Shake it Off"

var songs: [String] = []

var songs = [String]()

// MARK: Array operators
var songs = ["Shake it Off", "You Belong with Me", "Love Story"]
var songs2 = ["Today was a Fairytale", "Welcome to New York", "Fifteen"]
var both = songs + songs2

both += ["Everything has Changed"]
