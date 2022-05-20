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


//HEAD: EXAMPLE 3 - COLLECTION TYPES - DICTIONARY
//create a dictionary
var cityPlateCodes : [Int : String] = [34: "İstanbul", 07: "Antalya", 42: "Konya", 06: "Ankara", 01: "Adana"]
//add another key and value to the dictionary
cityPlateCodes[35] = "İzmir"
//check if the dictionary is empty
cityPlateCodes.isEmpty
//get first key and value of the dictionary (it's changeable)
cityPlateCodes.first
//assign keys of the dictionary to a variable
var keys = cityPlateCodes.keys
print(keys)
//assign values of the dictionary to a variable
var values = cityPlateCodes.values
print(values)
//print all keys and values of the dictionary
cityPlateCodes.forEach {
(key, value) in
    print("\(key) - \(value)")
}


//HEAD: EXAMPLE 4 - CONTROL FLOW - FOR-IN LOOP
//create an numbers array
var numbers = [28, 51, 70, 38]
var sum : Int = 0
//all numbers in the array are summed and assigned to the sum variable
for number in numbers {
    sum += number
}
print ("Sum: \(sum)")
