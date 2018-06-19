# Lesson 1 Variables and Types

* Constant using `let`
* Variable using `var`

        let summitElevation: Int = 10
        var currentElevation: Int = 2
        
#### Literal
A literal is a value that is written exactly as it's meant to be interpreted. In contrast, a variable is a name that can represent different values during the execution of the program. And a constant is a name that represents the same value throughout a program. But a literal is not a name — it is the value itself.


# Lesson 2 Strings

You can also initialize an empty string like so:

        // Here's one way to initialize an empty Swift string
        var characterPoorString = ""

        // And here's another
        let stringWithPotential = String()
        

## dot notation

        // Loop through all the characters in a string
        var animal = "octopus"
        for character in animal.characters {
                print ("\(character)")
        }
