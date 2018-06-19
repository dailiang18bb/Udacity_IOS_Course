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
