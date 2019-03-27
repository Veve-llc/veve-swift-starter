//
//  ViewController.swift
//  Veve
//
//  Created by Jamal Rasool on 10/31/18.
//  Copyright © 2018 Jamal Rasool. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        diaganolDifference()
        plusMinus()
        stairCase()
        miniMaxSum()
        birthdayCakeCandles()
        timeConversion()
    }
    
    fileprivate func diaganolDifference() {
        var first_array = 0
        var second_array = 0
        
        var arr : [[Int]] = [[11,2,4], [4,5,6] , [10,8,-12]]
        let arrayValue = arr.count
        
        for i in 0..<arrayValue {
            first_array += arr[i][i]
            
        }
        
        for i in (0..<arrayValue) {
            second_array += arr[i][arrayValue - i - 1]
        }
        
        let sum = abs(first_array - second_array)
        print(sum)
        
    }
    
    fileprivate func plusMinus() {
        var below_zero : Float = 0
        var above_zero : Float = 0
        var equal_zero : Float = 0
        
        let arr : [Int] = [-4, 3, -9, 0, 4, 1]
        
        for i in arr {
            if(i == 0) {equal_zero += 1}
            if(i < 0) {below_zero += 1}
            if(i > 0){above_zero += 1}
        }
        
        below_zero = below_zero/Float(arr.count)
        above_zero = above_zero/Float(arr.count)
        equal_zero = equal_zero/Float(arr.count)
        
        print(above_zero)
        print(below_zero)
        print(equal_zero)
    }
    
    fileprivate func stairCase() {
        
        let n = 5
        let space = Character(" ")
        let char = Character("#")
        
        var spaceCount = 0
        var charCount = 0
        
        for i in 0..<n {
            spaceCount = n-1-i
            charCount = i+1
            let spaceString = String(repeating: space, count: spaceCount)
            let charString = String(repeating: char, count: charCount)
            print("\(spaceString)\(charString)")
        }
        
    }
    
    fileprivate func miniMaxSum() -> Void {
        let arr : [Int] = [1, 2, 3, 4, 5]
        var min_val = 0
        var max_val = 0
        var smallestNumber = arr[0]
        var biggestNumber = arr[0]
        let number_Elements = arr.count
        
        for i in (0..<number_Elements) {
            if(smallestNumber > arr[i]) {
                smallestNumber = arr[i]
            }
            min_val += arr[i]
        }
        

        
        for j in (0..<number_Elements) {
            if(biggestNumber < arr[j]) {
                biggestNumber = arr[j]
            }
            max_val += arr[j]
        }
        
        min_val = min_val - smallestNumber
        max_val = max_val - biggestNumber
        
        print("\(max_val)" + " " + "\(min_val)")
    }
    
    fileprivate func birthdayCakeCandles() -> Void {
        let arr : [Int] = [18, 90, 90, 13, 90, 75, 90, 8, 90, 43]

        var highestVal = arr[0]
        var num_ofCandles = 0
        
        for i in 0..<arr.count {
            if(highestVal < arr[i]) {
                highestVal = arr[i]
                num_ofCandles = 0
            }
            if(highestVal == arr[i]) {
                num_ofCandles += 1
            }
        }
        
        print("\(num_ofCandles)")
    }
    
    fileprivate func timeConversion() -> Void {
        /*
         * Write your code here.
         * Given time 07:05:45PM
         * Output needs to be  19:05:45
         */
        
        let s = "12:40:22AM"
        var charValues = Array(s)
        var finalString = ""
        let newHourP1 = charValues[0]
        let newHourP2 = charValues[1]
        let newMinuteP1 = charValues[3]
        let newMinuteP2 = charValues[4]
        let newSecondP1 = charValues[6]
        let newSecondP2 = charValues[7]
        let timeOfDayHandler = charValues[8]
        let timeOfDayHandler1 = charValues[9]
        let timeOfDay = "\(timeOfDayHandler)\(timeOfDayHandler1)"
        
        let tempString = "\(newHourP1)\(newHourP2)"
        let ModifiedFrontValue: Int = Int(tempString)! + 12
        let nonChanged : Int! = Int(tempString)
        
        if(timeOfDay == "PM") {
            if(nonChanged == 12) {
                
                finalString = "\(nonChanged!):\(newMinuteP1)\(newMinuteP2):\(newSecondP1)\(newSecondP2)"
                print(finalString)
                
            } else {
                if(ModifiedFrontValue == 24)
                {
                    finalString = "00:\(newMinuteP1)\(newMinuteP2):\(newSecondP1)\(newSecondP2)"
                    print(finalString)
                    
                } else {
                    finalString = "\(String(describing: ModifiedFrontValue)):\(newMinuteP1)\(newMinuteP2):\(newSecondP1)\(newSecondP2)"
                    print(finalString)
                }
            }
            
        } else {
            if(nonChanged == 12) {
                finalString = "00:\(newMinuteP1)\(newMinuteP2):\(newSecondP1)\(newSecondP2)"
                print(finalString)
            } else {
                if(nonChanged < 10) {
                    finalString = "0\(nonChanged!):\(newMinuteP1)\(newMinuteP2):\(newSecondP1)\(newSecondP2)"
                    print(finalString)
                } else {
                    finalString = "\(nonChanged!):\(newMinuteP1)\(newMinuteP2):\(newSecondP1)\(newSecondP2)"
                    print(finalString)
                }
            }
        }
    }

}

