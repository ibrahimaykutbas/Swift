import UIKit

func sumFunction(x:Int, y:Int) -> Int{
    return x + y
}
var result = sumFunction(x: 1, y: 2)
print(result)

func logicFunction(a:Int,b:Int) -> Bool{
    if a > b {
        return true
    }else{
        return false
    }
}
logicFunction(a: 10, b: 0)
