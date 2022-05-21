//
//  LoginViewController.swift
//  movielist
//
//  Created by Feyyaz ONUR on 21.05.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var albel: UILabel!
    @IBOutlet weak var remindButton: UIButton!
    
    @IBOutlet weak var emailTField: UITextField!
    @IBOutlet weak var passwordTField: UITextField!
    
    var email: String?
    var password: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func remindMe(_ sender: UIButton) {
        
    }
    
    @IBAction func login(_ sender: Any) {
        
        if emailTField.text! == email && passwordTField.text! == password {
            let controller = storyboard?.instantiateViewController(identifier: "MovieListVC") as! MovieListViewController
            present(controller, animated: true)
        }
        else if emailTField.text! != email && passwordTField.text! == password {
            let alert = UIAlertController(title: "Wrong", message:"\(emailTField.text!) is not correct e-mail.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            alert.addAction(UIAlertAction(title: "Retry", style: .default, handler: {_ in 
                self.emailTField.text = ""
                self.passwordTField.text = ""
                
            }))
            present(alert, animated: true)
        }
        else if passwordTField.text! != password && emailTField.text! == email{
            let alert = UIAlertController(title: "Wrong", message:"\(passwordTField.text!) is not correct password.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            alert.addAction(UIAlertAction(title: "Retry", style: .default, handler: {_ in 
                self.emailTField.text = ""
                self.passwordTField.text = ""
                
            }))
            present(alert, animated: true)
        }
        else {
            let alert = UIAlertController(title: "Wrong", message:"Both e-mail and password are not correct.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            alert.addAction(UIAlertAction(title: "Retry", style: .default, handler: { [weak alert] _ in
                self.emailTField.text = ""
                self.passwordTField.text = ""
                
            }))
            present(alert, animated: true)
        }
    }
}
