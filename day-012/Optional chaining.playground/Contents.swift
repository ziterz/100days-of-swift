// Created by Ziady Mubaraq on 28/12/2023

import UIKit

let names = ["John", "Paul", "George", "Ringo"]
let beatle = names.first?.uppercased()

let names2 = ["Vincent": "van Gogh", "Pablo": "Picasso", "Claude": "Monet"]
let surnameLetter = names2["Vincent"]?.first?.uppercased()
let surnameLetter2 = names2["Vincent"]?.first?.uppercased() ?? "?"

/*
 * VALID SYNTAX
 */
let songs: [String]? = [String]()
let finalSong = songs?.last?.uppercased()

// -------
func albumReleased(in year: Int) -> String? {
  switch year {
  case 2006: return "Taylor Swift"
  case 2008: return "Fearless"
  case 2010: return "Speak Now"
  case 2012: return "Red"
  case 2014: return "1989"
  case 2017: return "Reputation"
  default: return nil
  }
}
let album = albumReleased(in: 2006)?.uppercased()

// -------
let shoppingList = ["eggs", "tomatoes", "grapes"]
let firstItem = shoppingList.first?.appending(" are on my shopping list")

// -------
let capitals = ["Scotland": "Edinburgh", "Wales": "Cardiff"]
let scottishCapital = capitals["Scotland"]?.uppercased()

// -------
let favoriteColors = ["Paul": "Red", "Charlotte": "Pink"]
let charlotteColor = favoriteColors["Charlotte"]?.lowercased()

// -------
let racers = ["Hamilton", "Verstappen", "Vettel"]
let winnerWasVE = racers.first?.hasPrefix("Ve")
