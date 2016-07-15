//: [Previous](@previous)

import UIKit

var battery = 21
var batteryColor:UIColor
if battery <= 20 {
    batteryColor = UIColor.redColor()
}else {
    batteryColor = UIColor.greenColor()
}



var batteryColor2 = battery <= 20 ? UIColor.redColor() : UIColor.greenColor()
