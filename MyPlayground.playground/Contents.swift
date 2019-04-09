import UIKit

// ------------------------------------------------------
// --------------------- LOOPS --------------------------
// ------------------------------------------------------

for i in 1...100
{
    if i % 3 == 0 && i % 5 == 0 {
        print("FizzBuzz")
    } else if i % 3 == 0 {
        print("Fizz")
    } else if i % 5 == 0 {
        print("Buzz")
    } else {
        print(i)
    }
}

stride(from: 1, to: 10, by: 2)  // 1, 3, 5, 7, 9
stride(from: 1, to: 2, by: 0.1) // 1.0, 1.1 ... 1.9

// ------------------------------------------------------
// --------------------- ARRAYS -------------------------
// ------------------------------------------------------

// declaring array of strings
var arrayOfStrings: [String] = ["I", "❤", "Swift"]
// accessing values from an arrays
print(arrayOfStrings[0]); // We
// basically .length
print(arrayOfStrings.count); // 3
// declaring array of integers
var numbers: [Int] = [1, 2, 3]
// appending values
numbers += [4, 5, 6] // numbers will be [1, 2, 3, 4, 5, 6]
// or just one value
numbers += [7] // numbers will be [1, 2, 3, 4, 5, 6, 7]
numbers.append(14) // numbers will be [1, 2, 3, 4, 5, 6, 7, 14]
// removing values
numbers.remove(at: 0) // [2, 3, 4, 5, 6, 7, 14]
// changing values
numbers[6] = 92 // [2, 3, 4, 5, 6, 92]
//inserting values
numbers.insert(42, at: 1) // [2, 42, 3, 4, 5, 6, 7]



var moreNumbers: [Int] = [1, 2, 3]

moreNumbers[0] = 7 // numbers will be [7, 2, 3]
moreNumbers[1] = 5 // numbers will be [7, 5, 3]
moreNumbers[2] = 4 // numbers will be [7, 5, 4]



// ------------------------------------------------------
// --------------- Basic Algorithms ---------------------
// ------------------------------------------------------


// GET MAX VALUE OF AN ARRAY //
var listOfNumbers = [1, 2, 3, 10, 100]
var maxVal = listOfNumbers[0]

for number in listOfNumbers {
    if maxVal < number {
        maxVal = number
    }
}
print(maxVal)


// GET ODD NUMBERS OF AN ARRAY //
var listOfNumbers = [1, 2, 3, 10, 100]

for number in listOfNumbers {
    if number % 2 != 0 {
        print(number)
    }
}

// GET SUM OF AN ARRAY //
var listOfNumbers = [1, 2, 3, 10, 100]
var sum = 0
for number in listOfNumbers {
    sum += number
}
print(sum)

// REVERSE AN ARRAY //
var listOfNumbers = [1, 2, 3, 10, 100]

var firstIndex = 0
var lastIndex = listOfNumbers.count - 1

while firstIndex < lastIndex {
    // swap
    var tmp = listOfNumbers[firstIndex]
    listOfNumbers[firstIndex] = listOfNumbers[lastIndex]
    listOfNumbers[lastIndex] = tmp
    
    // go to next pair
    firstIndex += 1
    lastIndex -= 1
}

// STORE THE ODD INDEXES OF THE ARRAY IN ANOTHER ARRAY
var listOfNumbers = [1, 2, 3, 10, 100];
var result: [Int] = [];
var i = 0
for number in listOfNumbers {
    i += 1;
    if (i % 2 != 0) {
        result += [number];
    }
}
print(result);
