// Created by Ziady Mubaraq on 19/12/23.

import UIKit

let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
  print("Both are over 18")
}

if age1 > 18 || age2 > 18 {
  print("At least one is over 18")
}

var isOwner: Bool = true, isAdmin: Bool = true, isEditingEnabled: Bool = true

if isOwner == true || isAdmin == true {
  print("You can delete this post")
}

if isOwner == true && isEditingEnabled || isAdmin == true {
  print("You can delete this post")
}

if (isOwner == true && isEditingEnabled) || isAdmin == true {
  print("You can delete this post")
}

if isOwner == true && (isEditingEnabled || isAdmin == true) {
  print("You can delete this post")
}

if (isOwner == true && isEditingEnabled) || isAdmin == true {
  print("You can delete this post")
}
