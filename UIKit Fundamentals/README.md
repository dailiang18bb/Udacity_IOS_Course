# UIKit Fundamentals

## Lesson 1 Outlets and Actions

### The ! operator

    var label: UILabel!

`!` indicate optional properties

Will do more research to understand it



### The `self.` operator
like `this` in Java


### `@objc func`
You can add `@objc` to Swift properties or methods to make them accessibile from Objective-C code.  
If you have a func to selector a private func in swift, it is required.


### impelement all in code 


### impelement in storyboard

### Quiz

* An action is a method. An outlet is a property.  
* Marking a variable as an IBOutlet makes it visible in Storyboard.
* A view in Storyboard needs an outlet if it needs to be modified programmatically.
* A view in Storyboard needs an action if it is expected to respond to user input.

### Switches
https://developer.apple.com/documentation/uikit/uiswitch  
The UISwitch class declares a property and a method to control its on/off state. As with UISlider, when the user manipulates the switch control (“flips” it) a valueChanged event is generated, which results in the control (if properly configured) sending an action message.  
You can customize the appearance of the switch by changing the color used to tint the switch when it is on or off.
