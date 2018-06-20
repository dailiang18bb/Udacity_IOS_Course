//: [Previous](@previous)
//: ## Functions 
//: In this these, you will be given the description for functions and their expected output assuming they are implemented correctly. It will be your job to finish the implementations.
//: ### Exercise 14
//: The function `emojiLove` should take two `String` parameters and use them to print a `String` with  the format "stringParameterOne ❤️ stringParameterTwo".
func emojiLove(s1:String,s2:String) {
    print(s1 + " ❤️ " + s2)
}

 //Example Function Call
 
 emojiLove(s1: "cats", s2: "dogs") // prints "cats ❤️ dogs"
 emojiLove(s1: "udacity", s2: "students") // prints "udacity ❤️ students"
 emojiLove(s1: "peanut butter", s2: "jelly") // prints "peanut butter ❤️ jelly"
 emojiLove(s1: "ying", s2: "yang") // prints "ying ❤️ yang"
 


//: ### Exercise 15
//: The function `median` should take three `Int` parameters and return the `Int` value in the middle.
func median(num1:Int,num2:Int,num3:Int) -> Int {
    if (num1 >= num2 && num1 <= num3) || (num1>=num3 && num1<=num2 )  {
        return num1
    } else if (num2 >= num3 && num2 <= num1) || (num2 >= num1 && num2 <= num3) {
        return num2
    } else {
        return num3
    }
}

// Example Function Call
 
 median(num1: 1, num2: 5, num3: 6) // 5
 median(num1: 2, num2: 1, num3: 4) // 2
 median(num1: 3, num2: 6, num3: 6) // 6
 median(num1: -10, num2: 10, num3: 0) // 0
 median(num1: 0, num2: 0, num3: 0) // 0
 median(num1: 2, num2: 3, num3: 1) // 2
 median(num1: 2, num2: 2, num3: 1) // 2
 


/*:
 ### Exercise 16
 
 The function `beginsWithVowel` should take a single `String` parameter and return a `Bool` indicating whether the input string begins with a vowel. If the input string begins with a vowel return true, otherwise return false.
 
 First, you will want to test if the input string is "". If the input string is "", then return false. Otherwise, you can access the first character of a `String` by using `nameOfString.characters[nameOfString.startIndex]`.
 
 
 **It is assumed that the input string is given in English.**
 
 */
func beginsWithVowel(word: String) -> Bool {
    if word.isEmpty {
        return false
    } else {
        let newWord = word.uppercased()
        if (newWord[newWord.startIndex] == "A") ||
        (newWord[newWord.startIndex] == "E") ||
        (newWord[newWord.startIndex] == "I") ||
        (newWord[newWord.startIndex] == "O") ||
        (newWord[newWord.startIndex] == "U"){
            return true
        } else{
            return false
        }
    }
}

 //Example Function Call
 
 beginsWithVowel(word: "Apples") // true
 beginsWithVowel(word: "pIG") // false
 beginsWithVowel(word: "oink") // true
 beginsWithVowel(word: "udacity") // true
 beginsWithVowel(word: "") // false
 


/*:
 ### Exercise 17
 
 The function `funWithWords` should take a single `String` parameter and return a new `String` that is uppercased if it begins with a vowel or is lowercased if it begins with a consonant.
 
 To uppercase a `String`, use `nameOfString.uppercaseString`. To lowercase a `String`, use `nameOfString.lowercaseString`.
 
 **It is assumed that the input string is given in English.**
 
 Hint: Re-use the `beginsWithVowel` function.
 */
func funWithWords(sub:String) -> String {
    if sub.isEmpty{
        return ""
    } else if beginsWithVowel(word: sub) {
        return sub.uppercased()
    } else {
        return sub.lowercased()
    }
}

 //Example Function Call
 
 funWithWords(sub: "Apples") // "APPLES"
 funWithWords(sub: "pIG") // "pig"
 funWithWords(sub: "oink") // "OINK"
 funWithWords(sub: "udacity") // "UDACITY"
 funWithWords(sub: "") // ""
 

//: [Next](@next)
