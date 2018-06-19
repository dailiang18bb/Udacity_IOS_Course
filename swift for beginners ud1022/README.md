# Lesson 1 Variables and Types

* Constant using `let`
* Variable using `var`

        let summitElevation: Int = 10
        var currentElevation: Int = 2
        
#### Literal
A literal is a value that is written exactly as it's meant to be interpreted. In contrast, a variable is a name that can represent different values during the execution of the program. And a constant is a name that represents the same value throughout a program. But a literal is not a name — it is the value itself.


# Lesson 2 Strings
[Official document about Strings](https://developer.apple.com/documentation/swift/string#//apple_ref/doc/uid/TP40015181-CH1-DontLinkElementID_31)


You can also initialize an empty string like so:

        // Here's one way to initialize an empty Swift string
        var characterPoorString = ""

        // And here's another
        let stringWithPotential = String()
        

## dot syntax
Using to access the functions

`.characters`

        // Loop through all the characters in a string
        var animal = "octopus"
        for character in animal.characters {
                print ("\(character)")
        }
        

`.characters.count`

        let theTruth = "Money can't buy me love."
        theTruth.characters.count
        
`.characters.reversed`

        var forwardString = "spoons"
        var charactersReversed = forwardString.characters.reversed()

        
## String interpolation
The syntax for string interpolation is: backslash, open parenthesis, variable name, closed parenthesis.
`\(variableName)`

        var name = "Kate"
        var myName = "Charles"
        var customizedBirthdayCheer = "Happy Birthday, \(name) and \(myName)!"

## String Concatenation
Use the plus operator to concatenate strings,

        let A = "I am A"
        let B = "I am B"
        let C = A + "," + B
        
## String contains

        var word = "Charles"
        word.contains("les")
        // true

## Replacing a Substring
`replacingOccurrences(of: , with:)`

        // Replacing a substring 
        var password = "Mary had a little loris"
        var newPassword = password.replacingOccurrences(of: "a", with: "A")
        // MAry hAd A little loris
The syntax here, replacingOccurrences(of: "a", with: "A"), replaces the first string (“a”) with the second (“A”).


# Lesson 3 If statements

## The `==` Operator

## Comparison operators can also be used on strings. 

A string is “less than” another string if it comes first alphabetically:

        let apples = "apples"
        let oranges = "oranges"
        let compare = apples < oranges //true

## && and ||
and operator (&&)   
or operator (| |)

## The ! Operator
not operator (!) 

## example

        var name = "Ayush"
        var age = 19
        var onGuestList = true

        func admit(person: String) {
            print("\(person), come and party with us!")
        }

        func deny(person: String) {
            print("Sorry, \(person), maybe you can go play Bingo with the Android team.")
        }

        func screenUnder21(age: Int, onGuestList: Bool, person: String) {
            if onGuestList && age >= 21 {
                admit(person: person)
            }

            if !onGuestList || !(age >= 21) {
                deny(person: person)
            }
        }

        screenUnder21(age: age, onGuestList: onGuestList, person: name)

##  multiple conditions

        if breakfast {
            print("Good morning!")
        } else if lunch {
            print("Good afternoon!")
        } else if dinner {
            print("Good evening!")
        } else {
            print("Hello!")
        }
        
# Lesson4 Function Syntax
## Functions without Parameters

        func myFirstFunction() {
            print("do something crazy!")
        }
## Parameters vs. Arguments
There are some special terms here that require special attention. When we look at the definition of a function like sayHelloToStudent(student: String), any input values that are specified are called parameters. Then, when we actually call a function, as in sayHelloToStudent(student: jarrod) the input values that are passed to the function are known as arguments.
