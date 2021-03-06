//: [Previous](@previous)
import Foundation
/*: 
## If Statements
### Exercise 10

a) Write a function called `rest()` that prints out the following message: "Stay in bed."
b) Declare a bool called `sick`.
c) Write a statement such that when `sick` is true the function `rest()` is called.
*/
func rest(){
    print("Stay in bed.")
}

var sick: Bool = true

if sick{
    rest()
}
/*: 
### Exercise 11

a) Write a function called `goToConcert()` that prints out the following message: "That vocalist is incredible!"
b) Declare two bools called `finishedWork` and `gotTickets`.
c) Write a statement such that when both `finishedWork` and `gotTickets` are true the function `goToConcert()` is called.
 */
func goToConcert(){
    print("That vocalist is incredible!")
}

var finishedWork:Bool = true
var gotTickets:Bool = true
if finishedWork && gotTickets {
    goToConcert()
}


//: [Next](@next)
