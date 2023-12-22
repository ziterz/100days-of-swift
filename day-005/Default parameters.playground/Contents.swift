// Created by Ziady Mubaraq on 21/12/23.
import UIKit

func greet(_ person: String, nicely: Bool = true) {
  if nicely == true {
    print("Hello, \(person)!")
  } else {
    print("Oh no, it's \(person) again...")
  }
}

greet("Taylor")
greet("Taylor", nicely: false)

func findDirections(from: String, to: String, route: String = "fastest", avoidHighways: Bool = false) {
  // code here
}

findDirections(from: "London", to: "Glasgow")
findDirections(from: "London", to: "Glasgow", route: "scenic")
findDirections(from: "London", to: "Glasgow", route: "scenic", avoidHighways: true)
