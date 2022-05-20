//
//  ViewController.swift
//  movielist
//
//  Created by Feyyaz ONUR on 19.05.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var name_tfield: UITextField!
    @IBOutlet weak var email_tfield: UITextField!
    @IBOutlet weak var password_tfield: UITextField!
    
    @IBOutlet weak var repassword_tfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func register(_ sender: Any) {
        let controller = storyboard?.instantiateViewController(identifier: "LoginVC") as! LoginViewController
        controller.text = name_tfield.text
        present(controller, animated: true)
        if  name_tfield.text!.count >= 3 &&
                email_tfield.text!.count >= 3 &&
                password_tfield.text!.count >= 3 &&
                repassword_tfield.text!.count >= 3 &&
                password_tfield.text! == repassword_tfield!.text {
            print("eşitler")
            
        }
        else {
            print("olmadı be gülüq")
        }
        
    }
}

