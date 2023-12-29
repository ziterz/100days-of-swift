// Created by Ziady Mubaraq on 30/12/2023

import UIKit

// In UIKit
let vw = UIView()

UIView.animate(withDuration: 0.5, animations: {
  vw.alpha = 0
}

// simplify
UIView.animate(withDuration: 0.5) {
  vw.alpha = 0
}

// In SwiftUI
let message = "Button pressed"

Button("Press Me", action: {
  print(message)
})

// MARK: Trailing closures
let message = "Button pressed"

Button("Press Me") {
  print(message)
}

Button {
  print("The button was pressed")
} label: {
  Image("press-me")
}
