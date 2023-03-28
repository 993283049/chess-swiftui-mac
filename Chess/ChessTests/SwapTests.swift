//
//  SwapTests.swift
//  ChessTests
//
//  Created by FordTan on 2023/3/28.
//

import Foundation
import XCTest

class SwapTests: XCTestCase {
    
    func testSwapWithTemp() {
        var a: Int = 3
        var b: Int = 5
        print("a = \(a), b \(b)")
        
        let temp = a
        a = b
        b = temp
        
        print("a = \(a), b \(b)")
    }
    
    func testSwapWithTuple() {
        let t: (Int, Int, String) = (3, 5, "hello")
        print(t.0)
        print(t.2)
        
        var a: Int = 3
        var b: Int = 5
        a = a + b
        b = a - b
        a = a - b
        print("a = \(a), b \(b)")
        (a, b) = (b, a)
        print("a = \(a), b \(b)")
    }
}
