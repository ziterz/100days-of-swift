// Created by Ziady Mubaraq on 26/12/2023

import UIKit

class Dog {
  var name: String
  var breed: String

  init(name: String, breed: String) {
    self.name = name
    self.breed = breed
  }
}

let poppy = Dog(name: "Poppy", breed: "Poodle")

/*
 * VALID SYNTAX
 */
class BoardGame {
  var name: String
  var minimumPlayers = 1
  var maximumPlayers = 4
  init(name: String) {
    self.name = name
  }
}

// -------
class TIE {
  var name: String
  var speed: Int
  init(name: String, speed: Int) {
    self.name = name
    self.speed = speed
  }
}
let fighter = TIE(name: "TIE Fighter", speed: 50)
let interceptor = TIE(name: "TIE Interceptor", speed: 70)

// -------
class VideoGame {
  var hero: String
  var enemy: String
  init(heroName: String, enemyName: String) {
    self.hero = heroName
    self.enemy = enemyName
  }
}
let monkeyIsland = VideoGame(heroName: "Guybrush Threepwood", enemyName: "LeChuck")

// -------
class ThemePark {
  var entryPrice: Int
  var rides: [String]
  init(rides: [String]) {
    self.rides = rides
    self.entryPrice = rides.count * 2
  }
}

// -------
class Empty { }
let nothing = Empty()

// -------
class Podcast {
  var hosts: [String]
  init(hosts: [String]) {
    self.hosts = hosts
  }
}
