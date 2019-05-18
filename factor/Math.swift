//
//  Math.swift
//  factor
//
//  Created by Jayson Kish on 5/18/19.
//  Copyright © 2019 ToplessBanana. All rights reserved.
//

import Foundation

/// Find the factors of an integer.
///
/// - Parameter dividend: The integer to be factored.
/// - Returns: An array of integers.

public func findFactors(of dividend: Int) -> [Int] {
    var factors = Set<Int>()
    for divisor in 1...dividend where dividend % divisor == 0 {
        factors.insert(divisor)
    }
    return factors.sorted()
}

/// Find the greatest common divisor of two integers.
///
/// - Parameters:
///   - integerA: An integer.
///   - integerB: An integer.
/// - Returns: An integer.

public func findGreatestCommonDivisor(of integerA: Int, and integerB: Int) -> Int {
    let remainder = integerA % integerB
    if remainder != 0 {
        return findGreatestCommonDivisor(of: integerB, and: remainder)
    } else {
        return integerB
    }
}

/// Find the least common multiple of two integers.
///
/// - Parameters:
///   - integerA: An integer.
///   - integerB: An integer.
/// - Returns: An integer.

public func findLeastCommonMultiple(of integerA: Int, and integerB: Int) -> Int {
    var integerA = integerA
    let temp = integerA
    while integerA % integerB != 0 {
        integerA += temp
    }
    return integerA
}
