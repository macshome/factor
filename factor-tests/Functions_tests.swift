//
//  factor_tests.swift
//  factor-tests
//
//  Created by Josh Wisenbaker on 6/1/19.
//  Copyright © 2019 ToplessBanana. All rights reserved.
//

import XCTest
@testable import factor

class Functions_tests: XCTestCase {

    let goodSUTInput = ["1", "2", "10"]
    let badSUTInput = ["3", "banana", "10"]
    let underflowSUTInput = ["3", "10"]

    func testShowFactors() {
        showFactors(of: goodSUTInput)
    }

    func testShowFactorsBadInput() {
        showFactors(of: badSUTInput)
    }

    func testShowGreatestCommonDivisor() {
        showGreatestCommonDivisor(of: goodSUTInput)
    }

    func testShowGreatestCommonDivisorUnderflow() {
        showGreatestCommonDivisor(of: underflowSUTInput)
    }

    func testShowGreatestCommonDivisorBadInput() {
        showGreatestCommonDivisor(of: badSUTInput)
    }

    func testShowLeastCommonMultiple() {
        showLeastCommonMultiple(of: goodSUTInput)
    }

    func testShowLeastCommonMultipleUnderflow() {
        showLeastCommonMultiple(of: underflowSUTInput)
    }

    func testShowLeastCommonMultipleBadInput() {
        showLeastCommonMultiple(of: badSUTInput)
    }
}
