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


//HEAD: EXAMPLE 5 - CONTROL FLOW - WHILE LOOPS
//creating and initializing variables
var num = 0, lastNum = 10, total = 0
//summing odd numbers from 0 to 10
while num <= lastNum{
    if (num % 2 != 0){
        total += num
     }
    num += 1
}
print("Sum: \(total)")



//HEAD: EXAMPLE 6 - FUNCTIONS
var totalPrimeNumbers = 0
var flag : Bool  = false

//Adding prime numbers between x and y parameters
func sumPrimeNumbers(x : Int, y : Int){
   
    for nmbr in stride(from: x, through: y, by: 1) {
        //Checking if the number is prime
        for i in stride(from: 2, through: nmbr / 2, by: 1) {
            //If the number is divisible by any number, that is, if it is not prime, flag variable is set to true and the loop is exited on break command
            if(nmbr % i == 0){
                    flag = true
                    break
                }
            }
        //If the flag variable is false, that is, the number is not divisible by any number without a remainder, the number is prime and the number is added to the total variable
        if flag == false {
                totalPrimeNumbers = totalPrimeNumbers + nmbr
            }
            flag = false
        }
    print ("Sum: \(totalPrimeNumbers)")
}

sumPrimeNumbers(x: 3, y: 7)


//HEAD: EXAMPLE 7 - ENUMERATIONS
enum Seasons {
   case Spring
   case Summer
   case Autumn
   case Winter
}

var season = Seasons.Spring
print("\(season):")

//Whichever season is in the season variable, the months of that season are written on the screen
switch season {
   case .Spring:
      print("March, April, May")
   case .Summer:
      print("June, July, August")
   case .Autumn:
      print("September, October, November")
   case .Winter:
      print("December, January, February")
   
}

let spring = Seasons.Spring
let summer = Seasons.Summer
let autumn = Seasons.Autumn
let winter = Seasons.Winter
