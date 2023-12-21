// Created by Ziady Mubaraq on 21/12/23.

import UIKit

print("Haters", "gonna", "hate")

func square(numbers: Int...) {
  for number in numbers {
    print("\(number) squared is \(number * number)")
  }
}

square(numbers: 1, 2, 3, 4, 5)

func readFiles(_ fileName: String...) {
  for file in fileName {
    print(file)
  }
}

readFiles("image.jpg", "photo.png", "portrait.jpg")
