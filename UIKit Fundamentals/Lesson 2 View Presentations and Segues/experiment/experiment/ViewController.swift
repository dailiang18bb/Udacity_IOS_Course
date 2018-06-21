//
//  ViewController.swift
//  experiment
//
//  Created by charles on 6/20/18.
//  Copyright © 2018 charles. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var presentButton: UIButton!
    @IBOutlet weak var ImagePresentButton: UIButton!
    @IBOutlet weak var alertPresentButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func experiment(){
        let nextController = UIImagePickerController()
        present(nextController,animated: true,completion: nil)
    }
    
    @IBAction func experimenImage(){
        let image = UIImage()
        let imageController = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        present(imageController,animated: true,completion: nil)
    }
    
    @IBAction func experimentAlert(){
        let alert = UIAlertController()
        alert.title = "Alert testing"
        alert.message = "hahahhahahahahaha"
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default){
            action in self.dismiss(animated: true, completion: nil)
        }
        alert.addAction(okAction)
        present(alert,animated:true,completion:nil)
    }
    
    
}

