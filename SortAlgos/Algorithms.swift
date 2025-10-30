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
}
