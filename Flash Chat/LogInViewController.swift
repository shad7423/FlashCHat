//
//  LogInViewController.swift
//  Flash Chat
//
//  This is the view controller where users login


import UIKit
import Firebase
import SVProgressHUD

class LogInViewController: UIViewController {

    //Textfields pre-linked with IBOutlets
    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

   
    @IBAction func logInPressed(_ sender: AnyObject) {
        
        SVProgressHUD.show()
        
        //TODO: Log in the user
        Auth.auth().signIn(withEmail: emailTextfield.text!, password: passwordTextfield.text!) { (user, error) in
            if error != nil {
                print(error!)
                
                
                
                let alert = UIAlertController(title: "Failed Login", message: "You have entered incorrect email & Password", preferredStyle:.alert)
                let cancelAction = UIAlertAction(title: "cancel", style: .cancel) { (action: UIAlertAction) in
                    
                }
                alert.addAction(cancelAction)
                self.present(alert, animated: true, completion: nil)
                SVProgressHUD.dismiss()
               //alert.dismiss(animated: true, completion: nil)
                
                
            }
            else{
                //success
                SVProgressHUD.dismiss()
                //print("Login Successful!")
                self.performSegue(withIdentifier: "goToChat", sender: self)
            }
        }
        
    }
    


    
}  
