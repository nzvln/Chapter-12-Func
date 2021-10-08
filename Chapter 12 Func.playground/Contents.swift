import UIKit

var greeting = "Hello, playground"
func sum(a: Int, b: Int) {
    let result = a + b
    print("result: \(result)")
}

func sum2(_ a: Int, _ b: Int) {
    let result = a + b
    print("result: \(result)")
}

func returnSum(a: Int, b: Int) -> Int {
    return a + b
}


sum(a: 4, b: 6)
sum2(1, 2)

var someNum = returnSum(a: 3, b: 4)

print("Return value: \(someNum)")

var sum3 = someNum + 3
print("SUM3: \(sum3)")

typealias Foo = (Int, Int) -> (Int)

let someFoo: Foo = {
    return $0 + $1
}

func sum5(completionHandler:Foo) -> Int {
    return completionHandler(1, 2)
}

print("Zaloopa: \(sum5(completionHandler: someFoo))")


func someAction(action: () -> ()) {
    print("Func start")
    // ....
    action()
}



someAction {
    print("Some action")
}

someAction(action: { print("action")})

func new() -> String {

    return "ZALOOPA"
}
new()

/* func new1(first: Int, second: String) {
    print(String(first) + "\n" + second)
}
new1(first: 7, second: "zaloop") */

func new1(first: Int, second: String) -> String {
    return String(first) + "\n" + second
}
var sumNew1 = new1(first: 5, second: "zaloop")
print("Возвращаем результат в переменную sumNew1:\n \(sumNew1)")

print(new1(first: 10, second: "Big zaloop"))
