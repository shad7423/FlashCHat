//
//  WelcomeViewController.swift
//  Flash Chat
//
//  This is the welcome view controller - the first thign the user sees
//

import UIKit



class WelcomeViewController: UIViewController {

   
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func chatButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToChat", sender: self)
    }
    
}
