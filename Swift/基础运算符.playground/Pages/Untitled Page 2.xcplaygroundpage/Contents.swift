//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

func makeIncrementor(addNum : Int) -> (inout Int) -> Void {
    func incrementor(inout variable: Int) -> Void {
        variable += addNum
    }
    
    return incrementor
}
var number = 5
let function = makeIncrementor(number)
function (&number)
print(number)