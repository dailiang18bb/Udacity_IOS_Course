//
//  ResultViewController.swift
//  roshambo
//
//  Created by charles on 6/20/18.
//  Copyright © 2018 charles. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var playerResult: String?
    var computerResult: String?
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.label.text = playIt(player: playerResult!, computer: computerResult!)
        playItImage(player: playerResult!, computer: computerResult!)
    }

  
    func playIt(player: String,computer: String) -> String{
        switch player {
        case "paper":
            if computer == "paper"{
                return " Paper vs Paper, play again!"
            } else if computer == "rock"{
                return "Paper cover Rock, you win!"
            } else{
                return "scissor cut paper, you lose!"
            }
        case "rock":
            if computer == "paper"{
                return "rock covered by paper, you lose!"
            } else if computer == "rock"{
                return "Rock vs Rock, play again!"
            } else{
                return "rock smash scissor, you win!"
            }
        case "scissor":
            if computer == "paper"{
                return "scissor cut paper, you win!"
            } else if computer == "rock"{
                return "scissor cuted by rock, you lose!"
            } else{
                return "scissor vs scissor, play again!"
            }
        default:
            return ""
        }
    }
    
    func playItImage(player: String,computer: String){
        if (player == "paper" && computer == "rock") || (computer == "paper" && player == "rock"){
            self.resultImage.image = UIImage(named: "PaperCoversRock")
        } else if (player == "rock" && computer == "scissor") || (computer == "scissor" && player == "rock"){
            self.resultImage.image = UIImage(named: "RockCrushesScissors")
        } else if (player == "scissor" && computer == "paper") || (computer == "paper" && player == "scissor"){
            self.resultImage.image = UIImage(named: "ScissorsCutPaper")
        } else {
            self.resultImage.image = UIImage(named: "itsATie")
        }
    }
    
    @IBAction func dismiss() {
        self.dismiss(animated: true, completion: nil)
    }


}
