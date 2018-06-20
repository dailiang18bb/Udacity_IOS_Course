//: [Previous](@previous)
/*:
## Chaining Functions Together
*/
func addExcitementToString(string: String) -> String {
    return string + "!"
}

// chained together twice
let excitedString = addExcitementToString(string: addExcitementToString(string: "yay"))

// chained together 4 times
let reallyExcitedString = addExcitementToString(string: addExcitementToString(string: addExcitementToString(string: addExcitementToString(string: "wahoo"))))






func madLibGenerator (adverb: String, adjective: String, none: String) -> String{
    let body = "One day, I went to the hospital. I lost my"
    return 
}
