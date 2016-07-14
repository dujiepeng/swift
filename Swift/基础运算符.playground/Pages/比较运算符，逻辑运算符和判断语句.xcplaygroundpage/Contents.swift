//: Playground - noun: a place where people can play

import UIKit

let money = 100
let price = 70

if money > price {
    print("buy it")
}


let capacity = 30
let volume = 50

if money >= price && capacity >= volume {
    print("buy it")
}

if money < price || capacity < volume {
    print("Can not buy it")
}


var isUsernameOK = false
var isPasswordOK = false

var isPhoneNumberOK = true
var isPhoneCodeOK = false