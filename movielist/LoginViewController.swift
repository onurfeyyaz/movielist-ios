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
    
    var text: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        if text != nil {
            albel.text = text
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func remindMe(_ sender: UIButton) {
        if  sender.isSelected {
            print("seçildi")
            sender.isSelected = false
        }
        else {
            sender.isSelected = true
         print("seçilmedi")
        }
        print("asd")
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
