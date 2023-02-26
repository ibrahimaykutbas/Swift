import UIKit

var number = 0

// While Loop
while number < 10{
    print(number)
    number += 1
}

var characterAlive = true

while characterAlive == true{
    print("Character Alive")
    characterAlive = false
}

// For Loop
var myFruitArray = ["Banana","Apple","Orange"]
for fruit in myFruitArray{
    print(fruit)
}

var myNumbers = [10,20,30,40,50,60]
for number in myNumbers{
    print(number / 5 )
}

for myNewInteger in 1...5{
    print(myNewInteger)
}
