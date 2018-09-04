//
//  LoginScreen.swift
//  application
//
//  Created by Татьяна on 31.08.2018.
//  Copyright © 2018 Татьяна. All rights reserved.
//

import UIKit

class LoginScreen: UIViewController {

    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    @IBAction func logInButtonTapped(_ sender: UIButton) {
        if userName.text!.isEmpty {
            performSegue(withIdentifier: "userSegue", sender: "Вы не указали имя пользователя")
        } else {
            if password.text!.isEmpty {
                performSegue(withIdentifier: "userSegue", sender: "Вы не указали пароль")

            } else {
                performSegue(withIdentifier: "userSegue", sender: "Привет, \(userName.text!)")
            }
        }
    }
    

    @IBAction func forgotUserNameButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "userSegue", sender: "Вы забыли имя пользователя")
    }
    
    
    @IBAction func forgotPasswordButtonTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "userSegue", sender: "Вы забыли пароль")
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! UserScreen
        if let message = sender as? String {
            vc.messageText = message
        }
    }
    
    
}
