//
//  Functions.swift
//  factor
//
//  Created by Jayson Kish on 5/18/19.
//  Copyright © 2019 ToplessBanana. All rights reserved.
//

import Foundation

/// Writes the factors of one or more integers into the standard output.
///
/// - Parameter input: An array of strings.

public func showFactors(of input: [String]) {
    let input = input
    guard input.count >= 2 else {
        return print("\(Message.invalidArguments.rawValue)")
    }
    for element in 1...input.count - 1 {
        guard let integer = Int(input[element]) else {
            return print("\(Message.invalidArguments.rawValue)")
        }
        let result = findFactors(of: integer)
        print("\(result)")
    }
}

/// Writes the greatest common divisor of two integers into the standard output.
///
/// - Parameter input: An array of strings.

public func showGreatestCommonDivisor(of input: [String]) {
    let input = input
    guard input.count >= 3, let integerA = Int(input[1]), let integerB = Int(input[2]) else {
        return print("\(Message.invalidArguments.rawValue)")
    }
    let result = findGreatestCommonDivisor(of: integerA, and: integerB)
    print("[\(result)]")
}

/// Writes the least common multiple of two integers into the standard output.
///
/// - Parameter input: An array of strings.

public func showLeastCommonMultiple(of input: [String]) {
    let input = input
    guard input.count >= 3, let integerA = Int(input[1]), let integerB = Int(input[2]) else {
        return print("\(Message.invalidArguments.rawValue)")
    }
    let result = findLeastCommonMultiple(of: integerA, and: integerB)
    print("[\(result)]")
    
}
