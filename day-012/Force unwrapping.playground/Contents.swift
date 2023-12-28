// Created by Ziady Mubaraq on 27/12/2023

import UIKit

let str = "5"
let num = Int(str)

let num2 = Int(str)!
let website = "google"

// When should you force unwrap optionals in Swift?
let url = URL(string: "https://www.apple.com")!
let url2 = URL(string: "https://www.\(website)")!

let randomNumber = (1...10).randomElement()!

// Compare with
//var items = [Int]()

//for i in 1...10 {
//    if isLuckyNumber(i) {
//        items.append(i)
//    }
//}

//let randomNumber2 = items.randomElement()!

// Before
enum Direction: CaseIterable {
    case north, south, east, west
}

let randomDirection = Direction.allCases.randomElement()!

// After
enum Direction2: CaseIterable {
    case north, south, east, west

    static func random() -> Direction2 {
        Direction2.allCases.randomElement()!
    }
}

let randomDirection2 = Direction2.random()
/*
 * VALID SYNTAX
 */

