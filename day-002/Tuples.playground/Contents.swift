// Created by Ziady Mubaraq on 19/12/23.

import UIKit

var name = (first: "Taylor", last: "Swift")

// Acces item using numeric position.
// Result: "Taylor"
name.0

// Access item using their name.
// Result: "Taylor"
name.first

// You can change the values inside a tuple after you create
name = (first: "Ariana", last: "Grande")

// You can't change name of items
// last = age
// You can't change types of values
// age = 26
// name = (first: "Ariana", age: "26")

