// Created by Ziady Mubaraq on 27/12/2023

import UIKit

// CLASSES - reference types - passing by reference
class Singer {
  var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Justin Bieber"

print(singer.name)

// STRUCT - value types - passing by value
struct Singer2 {
    var name = "Taylor Swift"
}

var singer2 = Singer2()
print(singer2.name)

var singerCopy2 = singer2
singerCopy2.name = "Justin Bieber"

print(singer2.name)

// -----------------------


/*
 * VALID SYNTAX
 */
class Starship {
  var maxWarp = 9.0
}
var voyager = Starship()
voyager.maxWarp = 9.975
var enterprise = voyager
enterprise.maxWarp = 9.6
print(voyager.maxWarp)
print(enterprise.maxWarp)

// -------
class Author {
  var name = "Anonymous"
}
var dickens = Author()
dickens.name = "Charles Dickens"
var austen = dickens
austen.name = "Jane Austen"
print(dickens.name)
print(austen.name)

// -------
class Hater {
  var isHating = true
}
var hater1 = Hater()
var hater2 = hater1
hater1.isHating = false
print(hater1.isHating)
print(hater2.isHating)

// -------
class Hospital {
  var onCallStaff = [String]()
}
var londonCentral = Hospital()
var londonWest = londonCentral
londonCentral.onCallStaff.append("Dr Harlan")
londonWest.onCallStaff.append("Dr Haskins")
print(londonCentral.onCallStaff.count)
print(londonWest.onCallStaff.count)

// -------
class Magazine {
  var pageCount = 132
}
var example = Magazine()
var wired = example
wired.pageCount = 164
var vogue = example
vogue.pageCount = 128
print(wired.pageCount)
print(vogue.pageCount)

// -------
class Hairdresser {
  var clients = [String]()
}
var tim = Hairdresser()
tim.clients.append("Jess")
var dave = tim
dave.clients.append("Sam")
print(tim.clients.count)
print(dave.clients.count)
