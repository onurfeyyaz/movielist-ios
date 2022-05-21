//
//  ViewController.swift
//  movielist
//
//  Created by Feyyaz ONUR on 19.05.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var email = " "
    var pass = " "
    
    @IBOutlet weak var name_tfield: UITextField!
    @IBOutlet weak var email_tfield: UITextField!
    @IBOutlet weak var password_tfield: UITextField!
    @IBOutlet weak var repassword_tfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func register(_ sender: Any) {
        //let controller = storyboard?.instantiateViewController(identifier: "LoginVC") as! LoginViewController
        //let loginVC = LoginViewController()
        
        if  name_tfield.text!.count >= 3 &&
                email_tfield.text!.count >= 3 &&
                password_tfield.text!.count >= 3 &&
                repassword_tfield.text!.count >= 3 &&
                password_tfield.text! == repassword_tfield!.text {
            print("eşitler")
            //controller.text = name_tfield.text
            //present(controller, animated: true)
            
            //loginVC.name = name_tfield.text!
            //loginVC.password = password_tfield.text!
            //self.present(loginVC, animated: true, completion: nil)
            
            email = email_tfield.text!
            pass = password_tfield.text!
            
            self.performSegue(withIdentifier: "goToLogin", sender: self)
            
        }
        else {
            print("olmadı be gülüq")
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToLogin" {
            let destinationVC = segue.destination as! LoginViewController
            destinationVC.email = email
            destinationVC.password = pass
        }
    }
}

