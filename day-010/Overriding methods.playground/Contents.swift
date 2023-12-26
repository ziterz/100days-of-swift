// Created by Ziady Mubaraq on 26/12/2023

import UIKit

class Dog {
  func makeNoise() {
    print("Woof!")
  }
}

class Poodle: Dog {
  override func makeNoise() {
    print("Yip!")
  }
}

let poppy = Poodle()
poppy.makeNoise()

/*
 * VALID SYNTAX
 */
class Appliance {
  func start() {
    print("Starting...")
  }
}
class Oven: Appliance {
}
let oven = Oven()
oven.start()

// -------
class Band {
  func singSong() {
    print("Here's a new song.")
  }
}
class MetalBand: Band {
  override func singSong() {
    print("Ruuuuh ruh ruh ruuuuuh!")
  }
}
let lordi = MetalBand()
lordi.singSong()

// -------
class Watch {
  func tellTime() {
    print("It's 9:41")
  }
}
class SmartWatch: Watch {
  override func tellTime() {
    print("It's 9:41")
  }
}
let appleWatch = SmartWatch()
appleWatch.tellTime()

// -------
class Composer {
  func composeMusic() {
    print("Here's some music I wrote.")
  }
}
class OperaComposer: Composer {
  override func composeMusic() {
    print("Here's an opera I wrote.")
  }
}
let verdi = OperaComposer()
verdi.composeMusic()

// -------
class Spaceship {
}
class StarDestroyer: Spaceship {
  func enterLightSpeed() {
    print("Let's go to ludicrous speed!")
  }
}
let executor = StarDestroyer()
executor.enterLightSpeed()

// -------
class Cat {
  func meow() {
    print("Meow!")
  }
}
let toby = Cat()
toby.meow()
