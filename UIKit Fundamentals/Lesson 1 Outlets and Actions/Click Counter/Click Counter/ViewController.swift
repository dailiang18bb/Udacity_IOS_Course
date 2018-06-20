//
//  ViewController.swift
//  Click Counter
//
//  Created by charles on 6/20/18.
//  Copyright © 2018 charles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //initial a label
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        view.addSubview(label)
        
        // Initialize a button
        let myButton = UIButton()
        myButton.frame = CGRect(x: 150, y: 250, width: 60, height: 60)
        myButton.setTitle("Click", for: .normal)
        myButton.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(myButton)
        
    }

}

