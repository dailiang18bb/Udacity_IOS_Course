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

### Slider
https://developer.apple.com/library/ios/documentation/UIKit/Reference/UISlider_Class/index.html  


## Lesson 2 View Presentations and Segues
### Navigation and Modality
Navigation  https://developer.apple.com/design/human-interface-guidelines/ios/app-architecture/navigation/   
Modality https://developer.apple.com/design/human-interface-guidelines/ios/app-architecture/modality/  


### stock view controllers
* Image Picker Controller

        @IBAction func experiment() {

            let nextController = UIImagePickerController()
            self.present(nextController, animated: true, completion: nil)
        }
    
* Activity View Controller

        @IBAction func experiment() {

            let image = UIImage()
            let controller = UIActivityViewController(activityItems: [image], applicationActivities: nil)
            self.present(controller, animated: true, completion: nil)
        }
* Alert View Controller

        @IBAction func experiment() {

            let controller = UIAlertController()
            controller.title = "Test Alert"
            controller.message = "This is a test"

            let okAction = UIAlertAction(title: "ok", style: UIAlertActionStyle.default) { action in self.dismiss(animated: true, completion: nil)
            }

            controller.addAction(okAction)
            self.present(controller, animated: true, completion: nil)
        }

### Customize view controllers 3 ways

    @IBAction func rollTheDice() {

        // Get the DiceViewController
        let controller: DiceViewController
        controller = storyboard?.instantiateViewController(withIdentifier: "DiceViewController") as! DiceViewController

        // Set the two values to random numbers from 1 to 6
        controller.firstValue = randomDiceValue()
        controller.secondValue = randomDiceValue()

        // Present the view Controller
        present(controller, animated: true, completion: nil)
    }
    
### Segue 

        performSegue(withIdentifier: "rollDice", sender: self)

### Button -> View

* In the RollViewController file, the rollTheDice method is empty.
* In the Storyboard file, a segue connects the rollTheDice Button directly to the DiceViewController.
* In the attributes inspector, the segue is given the identifier, “rollDice”.

### prepareForSegue //Use for passing data

    func prepare(for: UIStoryboardSegue, sender: Any?)

example

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "rollDice" {
            
            let controller = segue.destination as! DiceViewController
            
            controller.firstValue = self.randomDiceValue()
            controller.secondValue = self.randomDiceValue()
        }        
    }
