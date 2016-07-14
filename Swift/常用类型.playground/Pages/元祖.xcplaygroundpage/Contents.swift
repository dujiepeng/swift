//: [Previous](@previous)

import Foundation

// Tuple

var point = ( 5 , 2 )

var httpResponse = ( 404 , "Not Found")

var point2 : ( Int , Int , Int ) = ( 1 , 2 , 3)

var httpReseonse2 : ( Int , String ) = ( 200, "OK")

let (x, y) = point // 拆包

x

y

var (statusCode, statusMessage) = httpResponse

statusCode

statusMessage

let point3: (x:Int, y:Int) = (3,4)

point3.x
point3.y

let loginResult = (true, "success")

let (loginSuccess, _) = loginResult

if loginSuccess {
    print("login success")
}






