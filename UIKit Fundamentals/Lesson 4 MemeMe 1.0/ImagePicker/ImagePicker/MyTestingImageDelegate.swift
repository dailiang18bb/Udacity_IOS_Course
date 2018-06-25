//
//  MyTestingImageDelegate.swift
//  ImagePicker
//
//  Created by charles on 6/25/18.
//  Copyright © 2018 liang. All rights reserved.
//

import Foundation
import UIKit

class MyTestingImageDelegate: NSObject, UIImagePickerControllerDelegate{
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        <#code#>
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
}
