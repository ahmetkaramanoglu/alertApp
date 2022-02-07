//
//  ViewController.swift
//  AlertApp
//
//  Created by Ahmet Karamanoğlu on 7.02.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    @IBOutlet weak var password2Text: UITextField!
    
    var username : String = ""
    var password : String = ""
    var password2 : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signupClicked(_ sender: Any) {
        let alert = UIAlertController.init(title: "Error!", message: "Username not found.", preferredStyle: UIAlertController.Style.alert)
        
        
        
        username = usernameText.text!
        password = passwordText.text!
        password2 = password2Text.text!
        
        if username == "" {
            alertCalled(titleInput: "Error", messageInput: "Username not found")
        }
        else if password == "" {
            alertCalled(titleInput: "Error", messageInput: "Password not found")
        }
        else if password != password2 {
            alertCalled(titleInput: "Error", messageInput: "Passwords don't match")
        }
        else {
            alertCalled(titleInput: "Success", messageInput: "User OK")
        }
        
        
    }
    func alertCalled(titleInput: String, messageInput: String){
        let alert = UIAlertController.init(title: titleInput, message: messageInput,preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction.init(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    
}

