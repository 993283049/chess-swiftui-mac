//
//  Recursiontest.swift
//  ChessTests
//
//  Created by FordTan on 2023/3/28.
//

import XCTest

final class Recursiontest: XCTestCase {
    
    // 5! = 5 * 4 * 3 * 2 * 1
    func fact(_ n: Int) -> Int {
        if n == 1 {
            return n
        }
        return n * fact(n-1)
    }
    
    func testFactorial() {
        XCTAssertEqual(120, fact(5))
        XCTAssertEqual(720, fact(6))
    }
    
    /*
     24, 15
     15, 9 <= 24 % 15
     9,  6
     6,  3
     3,  0
     */
    
    func gcd(m: Int, n: Int) -> Int {
//        if n == 0 {
//            return m
//        }
        return n == 0 ? m : gcd(m: n, n: m % n)
    }
    
    func testGCD() {
        // greatest common divisor
        XCTAssertEqual(3, gcd(m: 24, n: 15))
        XCTAssertEqual(8, gcd(m: 24, n: 16))
    }
    
}
