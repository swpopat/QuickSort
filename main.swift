//
//  main.swift
//  QuickSort
//
//  Created by Shehzad Popat on 8/26/15.
//  Copyright (c) 2015 Shehzad. All rights reserved.
//

import Foundation


// At worst quicksort is O (n2) but can work as O(nlogn)


var randomNumbers = [23, 32, 43, 96, 54, 67, 90, 234, 16, 42, 65, 89, 98, 86, 302, 10]

func quickSort(arrayOfIntegers: [Int])->Array<Int> {
    
    
    var leftOfWall = [Int]()
    var wall = [Int]()
    var rightOfWall = [Int]()
    
    if arrayOfIntegers.count > 1{
        var pivot = arrayOfIntegers[0]
        
        for x in arrayOfIntegers {
            if x < pivot{
                leftOfWall.append(x)
            }
            else if x == pivot {
                wall.append(x)
            }
            else if x > pivot {
                rightOfWall.append(x)
            }
        }
        return (quickSort(leftOfWall)+wall+quickSort(rightOfWall))
        
    }
        
    else {
        return arrayOfIntegers
    }
    
}

var x = quickSort(randomNumbers)
println(x)