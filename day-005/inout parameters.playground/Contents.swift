// Created by Ziady Mubaraq on 21/12/23.

import UIKit

func doubleInPlace(number: inout Int) {
  number *= 2
}

var myNum = 10
doubleInPlace(number: &myNum)

