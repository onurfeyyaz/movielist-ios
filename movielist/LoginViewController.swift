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
        
        albel.text = email! + " " + password!
        // Do any additional setup after loading the view.
    }
    
    @IBAction func remindMe(_ sender: UIButton) {
        
    }
    
    @IBAction func login(_ sender: Any) {
        
        if emailTField.text! == email && passwordTField.text! == password {
            albel.text = "OKKKKK"
            let controller = storyboard?.instantiateViewController(identifier: "MovieListVC") as! MovieListViewController
            present(controller, animated: true)
        }
        else if emailTField.text! != email && passwordTField.text! == password {
            let alert = UIAlertController(title: "Wrong", message:"\(emailTField.text!) is not correct e-mail.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            alert.addAction(UIAlertAction(title: "Retry", style: .default, handler: { [weak alert] _ in
                self.emailTField.text = ""
                self.passwordTField.text = ""
                
            }))
            present(alert, animated: true)
            albel.text = "NOT OKKK"
        }
        else if passwordTField.text! != password && emailTField.text! == email{
            let alert = UIAlertController(title: "Wrong", message:"\(passwordTField.text!) is not correct password.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            alert.addAction(UIAlertAction(title: "Retry", style: .default, handler: { [weak alert] _ in
                self.emailTField.text = ""
                self.passwordTField.text = ""
                
            }))
            present(alert, animated: true)
            albel.text = "NOT OKKK"
        }
        else {
            let alert = UIAlertController(title: "Wrong", message:"Both e-mail and password are not correct.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            alert.addAction(UIAlertAction(title: "Retry", style: .default, handler: { [weak alert] _ in
                self.emailTField.text = ""
                self.passwordTField.text = ""
                
            }))
            present(alert, animated: true)
            albel.text = "NOT OKKK"
        }
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
