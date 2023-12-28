// Created by Ziady Mubaraq on 28/12/2023

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

if let result = try? checkPassword("password") {
  print("Result was \(result)")
} else {
  print("D'oh.")
}

try! checkPassword("sekrit")
print("OK!")

// When should you use optional try?

// rather than writing this
do {
  let result = try runRiskyFunction()
  print(result)
} catch {
  // it failed!
}

// you can instead write this
if let result = try? runRiskyFunction() {
  print(result)
}
/*
 * VALID SYNTAX
 */

