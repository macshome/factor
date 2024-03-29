//
//  main.swift
//  factor
//
//  Created by Jayson Kish on 5/18/19.
//  Copyright © 2019 ToplessBanana. All rights reserved.
//

let VERSION = "2019.04"

let arguments = Array(CommandLine.arguments.dropFirst(1))

/// Writes this usage guide into the standard output.
private func showUsage() {
    print(
        """
        Utility for finding the factors of one or more integers.
        Usage: factor [option] [integer ...]

        Options:
            gcd          Find the greatest common divisor of two integers.
            lcm          Find the least common multiple of two integers.
            version      Show the version of this application.
            help         Show this usage guide.

        """
    )
}

switch arguments.first {
case "gcd":
    showGreatestCommonDivisor(of: arguments)
case "lcm":
    showLeastCommonMultiple(of: arguments)
case "version":
    print(VERSION)
case "help", nil:
    showUsage()
default:
    showFactors(of: arguments)
}
