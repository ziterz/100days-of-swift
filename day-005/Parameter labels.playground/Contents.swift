// Created by Ziady Mubaraq on 21/12/23.

import UIKit

func square(number: Int) -> Int {
  return number * number
}

let result = square(number: 8)

func sayHello(to name: String) {
  print("Hello, \(name)!")
}

sayHello(to: "Taylor")

func setReactorStatus(primaryActive: Bool, backupActive: Bool, isEmergency: Bool) {
    // code here
}

setReactorStatus(primaryActive: true, backupActive: true, isEmergency: false)

func setAge(for person: String, to value: Int) {
  print("\(person) is now \(value)")
}

setAge(for: "Paul", to: 40)

//setAge(person: "Paul", value: 40)

//func setAge(for: String, to: Int) {
//    print("\(for) is now \(to)")
//}
