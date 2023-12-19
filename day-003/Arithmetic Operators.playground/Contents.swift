// Created by Ziady Mubaraq on 19/12/23.

import UIKit

let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore
let product = firstScore * secondScore
let divided = firstScore / secondScore
let remainder = 13 % secondScore

// Cannot assign Int type to a Double type
// let value: Double = 90000000000000001
let value: Int = 90000000000000001

let weeks = 465 / 7
print("There are \(weeks) weeks until the event.")

let weeks2: Double = 465 / 7
print("There are \(weeks2) weeks until the event.")

let weeks3 = 465 / 7
let days = 465 % 7
print("There are \(weeks3) weeks and \(days) days until the event.")

// If your goal is to ask “does this number divide equally into some other number?” then Swift has an easier approach
let number = 465
let isMultiple = number.isMultiple(of: 7)
