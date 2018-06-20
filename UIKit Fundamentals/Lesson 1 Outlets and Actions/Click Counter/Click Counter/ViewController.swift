//
//  ViewController.swift
//  Click Counter
//
//  Created by charles on 6/20/18.
//  Copyright © 2018 charles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var mCount = 0
    @IBOutlet var mNumberLabel: UILabel!
    var mSecondLabel: UILabel!
    var isDarkBackground = false


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
//
//        //initial a label
//        let label = UILabel()
//        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
//        label.text = "0"
//        label.backgroundColor = UIColor.yellow
//        view.addSubview(label)
//        self.mLabel = label
//
//        // Initialize the second label
//        let secondLabel = UILabel()
//        secondLabel.frame = CGRect(x: 150, y: 210, width: 60, height: 60)
//        secondLabel.text = "00000"
//        secondLabel.backgroundColor = UIColor.orange
//        view.addSubview(secondLabel)
//        self.mSecondLabel = secondLabel
//
//        
//        // Initialize a button
//        let myButton = UIButton()
//        myButton.frame = CGRect(x: 150, y: 500, width: 60, height: 60)
//        myButton.setTitle("Click", for: .normal)
//        myButton.backgroundColor = UIColor.red
//        myButton.setTitleColor(UIColor.blue, for: .normal)
//        view.addSubview(myButton)
//
//        // Initialize the decrement button
//        let decreButton = UIButton()
//        decreButton.frame = CGRect(x: 150, y: 560, width: 60, height: 60)
//        decreButton.setTitle("-", for: .normal)
//        decreButton.setTitleColor(UIColor.brown, for: .normal)
//        view.addSubview(decreButton)
//        
//        // Initialize the action to the button
//        myButton.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControlEvents.touchUpInside)
//
//        // Initialize the decrement button
//        decreButton.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControlEvents.touchUpInside)
//        
//        // Toggle background color when the buttons are clicked.
//        myButton.addTarget(self, action: #selector(ViewController.toggleBackgroundColor), for: UIControlEvents.touchUpInside)
//        decreButton.addTarget(self, action: #selector(ViewController.toggleBackgroundColor), for: UIControlEvents.touchUpInside)

    }
    
    @IBAction func incrementCount(){
        self.mCount += 1
        self.mNumberLabel.text = "\(self.mCount)"
        //self.mSecondLabel.text = "\(self.mCount)"
    }
    
    @objc func decrementCount(){
        self.mCount -= self.mCount > 0 ? 1 : 0
        self.mNumberLabel.text = "\(self.mCount)"
        self.mSecondLabel.text = "\(self.mCount)"
    }
    @objc func toggleBackgroundColor(){
        isDarkBackground = !isDarkBackground
        view.backgroundColor = isDarkBackground ? UIColor.darkGray : UIColor.white
    }

}

