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
        testExample()
    }
    
    fileprivate func testExample() {
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

}

