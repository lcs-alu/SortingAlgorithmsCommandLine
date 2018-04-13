//
//  main.swift
//  SortingAlgorithmsCommandLine
//
//  Created by Gordon, Russell on 2018-02-26.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// --------------- Convenience functions ---------------

// Generates a random number between the minimum and maximum values given (inclusive)
func random(between min: UInt32, and max: UInt32) -> Int {
    return Int(arc4random_uniform(max - min + 1) + min)
}

// ----------- Start of main part of program -----------

// Ask the user if they are ready to begin
print("Press any key to generate the unsorted list.", terminator: "")

// Wait for a key to be pressed
let input = readLine()

// Make an empty array / list
var numbers : [Int] = []

// Populate the array
// Generate a series of number in the array
numbers.append(9)
numbers.append(8)
numbers.append(7)
numbers.append(6)

// Show the user the contents of the array
print("-----")
print("The contents of the unsorted list:")
for i in 0...numbers.count - 1 {
    print("Index \(i), value: \(numbers[i])")
}
print("-----")

// ----------- Write code to sort the array here -----------
print("Now sorting the array...")

// Loop 3 times to sort a list with 4 values
for _ in 1...numbers.count - 1 {

    //// Loop and find the minimum value and the index of the minimum value
    let minimumValue = numbers [0] // Assume the value is the first number in the array
    var minimumIndex = 0 // The index is 0
    // Compare two numbers next to each other, and switch the higher one to the higher number count
    for i in 0...numbers.count - 1 - 1 {
        if numbers[i] > numbers[i+1] {
            let temporaryValue = numbers[i]
            numbers[i] = numbers[i+1]
            numbers[i+1] = temporaryValue
        }
    }

}



// ----------- Final part of the program, show the sorted list -----------
print("-----")
print("The contents of the sorted list:")
for i in 0...numbers.count - 1 {
    print("Index \(i), value: \(numbers[i])")
}
print("-----")



