//
//  ViewController.swift
//  textEidtField
//
//  Created by charles on 6/26/18.
//  Copyright © 2018 liang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var bottomTextField: UITextField!
    
    let textAttributes:[String: Any] = [
        NSAttributedStringKey.strokeColor.rawValue: UIColor.red,
        NSAttributedStringKey.foregroundColor.rawValue: UIColor.black,
        NSAttributedStringKey.font.rawValue: UIFont(name: "HelveticaNeue-CondensedBlack", size: 40)!,
        NSAttributedStringKey.strokeWidth.rawValue: 7]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        
        firstTextField.defaultTextAttributes = textAttributes
        bottomTextField.defaultTextAttributes = textAttributes
        
        firstTextField.text = "TOP"
        firstTextField.textAlignment = NSTextAlignment.center
        firstTextField.backgroundColor = UIColor.clear
        firstTextField.borderStyle = .none
        
        bottomTextField.textAlignment = .center
        bottomTextField.text = "BOTTOM"
        bottomTextField.backgroundColor = UIColor.clear
        bottomTextField.borderStyle = .none
        
        
        
        firstTextField.delegate = self
        bottomTextField.delegate = self
        
        print(firstTextField.frame.origin.y)
        print(bottomTextField.frame)
        print(view.frame.height)
        
        
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        subscribeToKeyboardNotifications()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        super.viewWillDisappear(animated)
        unsubscribeFromKeyboardNotifications()
    }
    
    
    
    // delete the text when press on the text field
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField.text == "TOP" || textField.text == "BOTTOM" {
            textField.text = ""
        }
    }
    
    //dismiss the keyboard when press the return button
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.endEditing(true)
        return true
    }
    
    func subscribeToKeyboardNotifications() {
        
        // Show keyboard
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:)), name: .UIKeyboardWillShow, object: nil)
        // Hide keyboard
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(_:)), name: .UIKeyboardWillHide, object: nil)
        
    }
    
    func unsubscribeFromKeyboardNotifications() {
        
        NotificationCenter.default.removeObserver(self, name: .UIKeyboardWillShow, object: nil)
        NotificationCenter.default.removeObserver(self, name: .UIKeyboardWillHide, object: nil)
    }
    
    @objc func keyboardWillShow(_ notification:Notification) {
        if(view.frame.origin.y == 0){
            view.frame.origin.y -= getKeyboardHeight(notification)
        }
    }
    
    @objc func keyboardWillHide(_ notification:Notification){
            view.frame.origin.y = 0
    }
    
    func getKeyboardHeight(_ notification:Notification) -> CGFloat {
        
        let userInfo = notification.userInfo
        let keyboardSize = userInfo![UIKeyboardFrameEndUserInfoKey] as! NSValue // of CGRect
        return keyboardSize.cgRectValue.height
    }
    
    
    // not working yey
    func checkWhetherViewNeedShift(_ notification:Notification) -> Bool{
        let value1 = view.frame.height - getKeyboardHeight(notification)
        let value2 = firstTextField.frame.origin.y + firstTextField.frame.height
        if value1 > value2 {
            return false
        } else {
            return true
        }
    }
    
}

