// Created by Ziady Mubaraq on 19/12/23.

import UIKit

let colors = Set(["red", "green", "blue"])

// Duplicate value "red and blue" will be ignored.
let colors2 = Set(["red", "green", "blue", "red", "blue"])

//Result: ["blue", "red", "green"]
print(colors2)
