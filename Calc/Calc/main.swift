//
//  main.swift
//  Calc
//
//  Created by Brian Ross on 10/4/16.
//  Copyright © 2016 Chris Ross. All rights reserved.
//

import Foundation

print("Enter all the numbers that you wish to operate on and then the operand at the end")

let response = readLine(strippingNewline: true)!

if (response == nil) {
    print("please enter something")
} else {
    var allArray = response.characters.split(whereSeparator: { $0 == " " })
        .map(String.init)
    var arrayLength = allArray.count
    if (allArray[arrayLength - 1] == "+" || allArray[arrayLength - 1] == "sum") {
        var sum: Double = 0
        for i in 0...(arrayLength - 2) {
            var num = Double.init(allArray[i])
            sum += num!
        }
        print(sum)
    }
}

