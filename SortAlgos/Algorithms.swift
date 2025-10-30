//
//  Algorithms.swift
//  SortAlgos
//
//  Created by Aimee Temple on 2025-10-30.
//

import Foundation


extension Array where Element: Comparable {
    mutating func bubbleSort() {
        for index in 0..<count - 1 {
            if self[index] > self[index + 1] {
                swapAt(index, index + 1)
            }
        }
    }
    
    mutating func insertionSort(startPosition: Int) -> Int {
        guard startPosition < count else { return startPosition }
        
        let itemToPlace = self[startPosition]
        var currentItemIndex = startPosition
        
        while currentItemIndex > 0 && itemToPlace < self[currentItemIndex - 1] {
            self[currentItemIndex] =  self[currentItemIndex - 1]
            currentItemIndex -= 1
        }
        self[currentItemIndex] = itemToPlace
        return startPosition + 1
    }
}
