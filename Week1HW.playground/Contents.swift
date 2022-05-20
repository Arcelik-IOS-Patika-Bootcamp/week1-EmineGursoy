import UIKit

//HEAD: COLLECTION TYPES - ARRAY
var flowers: Array = ["rose", "daisy", "tulip", "lilac", "daffodil"]
flowers.append("dahlia")
let daisy = flowers[1]
print(daisy)
let _ = flowers.remove(at: 2)
flowers.insert("jasmine", at: 3)

var flowerCount = flowers.count
flowers.append(contentsOf: ["lily", "iris"])

var anotherFlowers = ["camellia", "poppy"]
flowers.append(contentsOf: anotherFlowers)
anotherFlowers.removeAll()

let isFirtArrayEmpty = flowers.isEmpty
let isSecondArrayEmpty = anotherFlowers.isEmpty

let first = flowers.first
let last = flowers.last

//HEAD: EXAMPLE 2 - COLLECTION TYPES - SET
//create a string type of color set
var colors: [String] = ["pink", "white", "green", "gray", "white", "blue", "purple", "green", "white"]
//assigning unique colors values ​​to a new variable
var uniqueColors = Set(colors)
//sort the color values ​​alphabetically and assign them to a new variable
var sortedUniqueColors = uniqueColors.sorted()
print("Colors: \(sortedUniqueColors)")
