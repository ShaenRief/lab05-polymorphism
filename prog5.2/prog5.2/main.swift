//
//  main.swift
//  prog5.2
//
//  Created by Shaen Gallagher on 8/15/18.
//  Copyright © 2018 Kulakili. All rights reserved.
//

import Foundation

let expr1: String = "-1/2*(3+2/5*(7/8-1/3))-4"

if let result = Parser<Fraction>.evaluate(string: expr1) {
    print(expr1 + "=\(result)")
} else {
    print("Syntax error in '\(expr1)'!")
}

let expr2: String = "(1.3+2i)*(1.3-2i)"

if let result = Parser<Complex>.evaluate(string: expr2) {
    print(expr2 + "=\(result)")
} else {
    print("Syntax error in '\(expr2)'!")
}
