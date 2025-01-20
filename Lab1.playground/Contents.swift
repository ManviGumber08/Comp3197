/ lab 1 & 2

import UIKit

// MARK: - Declaration of Variable and Constant
let constantValue = 10 // A constant value
var variableValue = 5  // A variable value
variableValue = 20 // Variable value updated

// MARK: - Declaration of a Function That Takes Two Integers and Returns Their Sum
func sum(a: Int, b: Int) -> Int {
    return a + b
}

// Testing the `sum` function
let sumResult = sum(a: 10, b: 20)
print("The sum of 10 and 20 is: \(sumResult)")

// MARK: - Declaration of a Function `greetings`
func greetings(name: String) {
    if name.count > 0 {
        print("Hi, \(name)!")
    } else {
        print("Hi, John Doe!")
    }
}

// Testing the `greetings` function
greetings(name: "Manvi Gumber")
greetings(name: "")

// MARK: - Swift Program to Check if a Given Integer X Appears as Either the First or Last Element in an Array
func firstOrLast(x: Int, arr: [Int]) -> Bool {
    guard arr.count > 0 else { // Check for empty array
        return false
    }
    return arr.first == x || arr.last == x
}

// Testing the `firstOrLast` function
print(firstOrLast(x: 1, arr: [1, 2, 3])) // true
print(firstOrLast(x: 3, arr: [1, 2, 3])) // true
print(firstOrLast(x: 5, arr: [1, 2, 3])) // false
print(firstOrLast(x: 1, arr: []))        // false

// MARK: - Declaration of a Function `score`
func score(touchingPowerUp: Bool, touchingSeed: Bool) -> Bool {
    return touchingPowerUp || touchingSeed
}

// Testing the `score` function
print(score(touchingPowerUp: true, touchingSeed: false))  // true
print(score(touchingPowerUp: false, touchingSeed: true))  // true
print(score(touchingPowerUp: false, touchingSeed: false)) // false

// MARK: - Declaration of a Function `area`
func area(w: Int, h: Int) -> Int {
    return w * h
}

// Testing the `area` function
let rectangleArea = area(w: 5, h: 10)
print("Rectangle area using `area`: \(rectangleArea)")

// MARK: - Declaration of a Function `area2` (Without Labels)
func area2(_ w: Int, _ h: Int) -> Int {
    return w * h
}

// Testing the `area2` function
let rectangleArea2 = area2(5, 10)
print("Rectangle area using `area2`: \(rectangleArea2)")

// MARK: - Declaration of a Function `calculator`
func calculator(a: Int, b: Int, operator op: String) -> Int? {
    // Nested function for addition
    func add(_ x: Int, _ y: Int) -> Int {
        return x + y
    }
    // Nested function for subtraction
    func subtract(_ x: Int, _ y: Int) -> Int {
        return x - y
    }
    // Nested function for multiplication
    func multiply(_ x: Int, _ y: Int) -> Int {
        return x * y
    }
    
    // Determine the operation based on the operator
    switch op {
    case "+":
        return add(a, b)
    case "-":
        return subtract(a, b)
    case "*":
        return multiply(a, b)
    default:
        return nil // Return nil for unsupported operators
    }
}

// Testing the `calculator` function
if let additionResult = calculator(a: 10, b: 5, operator: "+") {
    print("Calculator result for addition: \(additionResult)")
}

if let subtractionResult = calculator(a: 10, b: 5, operator: "-") {
    print("Calculator result for subtraction: \(subtractionResult)")
}

if let multiplicationResult = calculator(a: 10, b: 5, operator: "*") {
    print("Calculator result for multiplication: \(multiplicationResult)")
}

if let invalidResult = calculator(a: 10, b: 5, operator: "/") {
    print("Calculator result for invalid operator: \(invalidResult)")
} else {
    print("Invalid operator provided.")
}
