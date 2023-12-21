// Created by Ziady Mubaraq on 21/12/23.

import UIKit

enum PasswordError: Error {
  case obvious
}

func checkPassword(_ password: String) throws -> Bool {
  if password == "password" {
    throw PasswordError.obvious
  }
  
  return true
}

do {
  try checkPassword("password")
  print("That password is good!")
} catch {
  print("You can't use that password.")
}

func throwingFunction1() throws {}
func nonThrowingFunction1() {}
func throwingFunction2() throws {}
func nonThrowingFunction2() {}
func throwingFunction3() throws {}

// Why does Swift make us use try before every throwing function?
do {
    try throwingFunction1()
    nonThrowingFunction1()
    try throwingFunction2()
    nonThrowingFunction2()
    try throwingFunction3()
} catch {
    // handle errors
}
