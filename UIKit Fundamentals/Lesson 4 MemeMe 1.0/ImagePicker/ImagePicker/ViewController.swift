//
//  ViewController.swift
//  ImagePicker
//
//  Created by charles on 6/25/18.
//  Copyright © 2018 liang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    // MARK: variables
    @IBOutlet weak var pickedImage: UIImageView!
    @IBOutlet weak var cameraButton: UIBarButtonItem!
    let pickerController = UIImagePickerController()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerController.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // if the camera is not available(like in the simulator), then disable the camera button
        cameraButton.isEnabled = UIImagePickerController.isSourceTypeAvailable(.camera)
    }
    
    // from Album
    @IBAction func pickAnImageFromAlbum(_ sender: Any) {
        // lunch UIPickerController
        pickerController.sourceType = .photoLibrary
        present(pickerController,animated: true,completion: nil)
    }

    //from camera
    @IBAction func pickAnImageFromCamera(_ sender: Any) {
        pickerController.sourceType = .camera
        present(pickerController,animated: true,completion: nil)
    }
    
    
    // MARK: Delegates
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let chosenImage = info[UIImagePickerControllerOriginalImage] as? UIImage
        pickedImage.contentMode = .scaleAspectFit
        pickedImage.image = chosenImage
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
}
