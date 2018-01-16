//
//  RegisterViewController.swift
//  Flash Chat
//
//  This is the View Controller which registers new users with Firebase
//

import UIKit
import Firebase
import SVProgressHUD


class RegisterViewController: UIViewController {

    
    //Pre-linked IBOutlets

    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

  
    @IBAction func registerPressed(_ sender: AnyObject) {
        
        SVProgressHUD.show()
        
        //TODO: Set up a new user on our Firbase database
        
        
        Auth.auth().createUser(withEmail: emailTextfield.text!, password: passwordTextfield.text!) { (user, error) in
            if error != nil {
                print(error!)
                let alert = UIAlertController(title: "Failed In Registration", message: "You have entered incorrect email & Password", preferredStyle:.alert)
                self.present(alert, animated: true,completion: nil)
                let cancelAction = UIAlertAction(title: "cancel", style: .cancel) { (action: UIAlertAction) in
                    
                }
                alert.addAction(cancelAction)
               
                SVProgressHUD.dismiss()
                //alert.dismiss(animated: true ,completion: nil)
            }
            else{
                //success
                SVProgressHUD.dismiss()
                //print("Registration Successful!")
                self.performSegue(withIdentifier: "goToChat", sender: self)
            }
        }

        
        
    } 
    
    
}
