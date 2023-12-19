// Created by Ziady Mubaraq on 19/12/23.

import UIKit

enum Activity {
  case bored
  case running
  case talking
  case singing
  }

enum Activity2 {
  case bored
  case running(destination: String)
  case talking(topic: String)
  case singing(volume: Int)
}

let talking = Activity2.talking(topic: "football")
