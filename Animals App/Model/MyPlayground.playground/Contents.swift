import UIKit

var greeting = "Hello"
var seft = "nap"

func swapVal<Elm>(_ a: inout Elm, _ b: inout Elm) -> (Elm, Elm){
    let tempA = a
a = b
    b = tempA
    return (a,b)
}
swapVal(&greeting, &seft)
print("value of greeting var = \(greeting) \n and value of seft var = \(seft)")
