//
//  main.swift
//  Calc
//
//  Created by Chris Ross on 10/4/16.
//  Copyright © 2016 Chris Ross. All rights reserved.
//

import Foundation


print("Enter all the numbers that you wish to operate on and then the operand at the end \n options: + - / * % sum avg count fact")

let response = readLine(strippingNewline: true)!

if (response == nil || response.isEmpty) {
    print("please enter something")
} else {
    var allArray = response.characters.split(whereSeparator: { $0 == " " })
        .map(String.init)
    var arrayLength = allArray.count
    var answer: Double = 0
    if (allArray[arrayLength - 1] == "+" || allArray[arrayLength - 1] == "sum") {
        for i in 0...(arrayLength - 2) {
            var num = Double.init(allArray[i])
            answer += num!
        }
    } else if (allArray[arrayLength - 1] == "-" ){
        for i in 0...(arrayLength - 2) {
            var num = Double.init(allArray[i])
            answer -= num!
        }
    } else if (allArray[arrayLength - 1] == "/" ) {
        answer += (Double.init(allArray[0])! / Double.init(allArray[1])!)
    } else if (allArray[arrayLength - 1] == "*" ) {
        answer += (Double.init(allArray[0])! * Double.init(allArray[1])!)
    } else if (allArray[arrayLength - 1] == "%" ) {
        answer += Double.init(allArray[0])!.truncatingRemainder(dividingBy: Double.init(allArray[1])!)
    } else if (allArray[arrayLength - 1] == "avg" ) {
        var count = 0
        for i in 0...(arrayLength - 2) {
            var num = Double.init(allArray[i])
            answer += num!
            count += 1
        }
        answer = answer / Double.init(count)
    } else if (allArray[arrayLength - 1] == "count") {
        var count = 0
        for i in 0...(arrayLength - 2) {
            var num = Double.init(allArray[i])
            answer += num!
            count += 1
        }
        answer = Double.init(count)
    } else if (allArray[arrayLength - 1] == "fact") {
        var length = Double.init(allArray[0])
        var count: Double  = 0
        while (count < length!) {
            count += 1
            answer += count
        }
    }
    print("Results:  \(answer)")
}

