// Created by Ziady Mubaraq on 19/12/23.

import UIKit

let favoriteIceCream = [
  "Paul": "Chocolate",
  "Sophie": "Vanilla"
]

// Return "Chocolate"
favoriteIceCream["Paul"]

// Return nil
favoriteIceCream["Charlotte"]

// If no found ice crean for Charlotte, we get back "Unknown" rather nil
favoriteIceCream["Charlotte", default: "Unknown"]
