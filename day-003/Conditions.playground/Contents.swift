// Created by Ziady Mubaraq on 19/12/23.

import UIKit

let firstCard = 11
let secondCard = 10

// Conditional using if
if firstCard + secondCard == 21 {
  print("Blackjack!")
}

// Conditional using if and else
if firstCard + secondCard == 21 {
  print("Blackjack!")
} else {
  print("Regular cards")
}

// Conditional using if, else, and else if
if firstCard + secondCard == 2 {
  print("Aces – lucky!")
} else if firstCard + secondCard == 21 {
  print("Blackjack!")
} else {
  print("Regular cards")
}

let score = 9001

if score > 9000 {
  print("It's over 9000!")
}

if score > 9000 {
  print("It's over 9000!")
}

if score <= 9000 {
  print("It's not over 9000!")
}

if score > 9000 {
  print("It's over 9000!")
} else {
  print("It's not over 9000!")
}

if score > 9000 {
    print("It's over 9000!")
} else {
  if score == 9000 {
    print("It's exactly 9000!")
  } else {
    print("It's not over 9000!")
  }
}

if score > 9000 {
  print("It's over 9000!")
} else if score == 9000 {
  print("It's exactly 9000!")
} else {
  print("It's not over 9000!")
}
