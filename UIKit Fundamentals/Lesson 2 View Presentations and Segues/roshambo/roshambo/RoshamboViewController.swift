//
//  RoshamboViewController.swift
//  roshambo
//
//  Created by charles on 6/20/18.
//  Copyright © 2018 charles. All rights reserved.
//

import UIKit

class RoshamboViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    func computerPlay() -> String{
        let value = Int(arc4random() % 3)
        
        switch value {
        case 0:
            return "paper"
        case 1:
            return "rock"
        case 2:
            return "scissor"
        default:
            return ""
        }
    }
    
    // rock action code
    @IBAction func rockAction(){
        let controller: ResultViewController
        controller = storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
        
        controller.playerResult = "rock"
        controller.computerResult = computerPlay()
        
        present(controller,animated: true,completion: nil)
    }
    
    // paper action code&sugue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "paperSegue" || segue.identifier == "scissorSegue"{
            let controller = segue.destination as! ResultViewController
            controller.playerResult = "rock"
            controller.computerResult = computerPlay()
        }
    }
    @IBAction func paperAction(){
        performSegue(withIdentifier: "paperSegue", sender: self)
    }
    
    // scissor action sugue
    
    
    
}

