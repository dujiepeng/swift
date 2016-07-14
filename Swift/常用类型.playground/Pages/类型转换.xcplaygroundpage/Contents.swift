//: [Previous](@previous)

import Foundation

let x: UInt16 = 100
let y: UInt8 = 20

//x + y // 不能直接隐式转换

let n = UInt8(x) + y

let a: Double = 3.0
let b: Float = 0.3

a + Double(b)
Float(a) + b

let w:Float = 3
let v:Int = Int(3.2)

let integer = 3
let fraction = 0.1415926
let pi = Double(integer) + fraction
