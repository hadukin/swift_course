//
//  LoginViewController.swift
//  Navigation
//
//  Created by anatoly on 01.03.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    var recoverMessage: String = "Восстановить пароль";
    
    var screenType: ScreenType?
    
    @IBOutlet weak var textFieldEmail: UITextField!
    
    @IBOutlet weak var textFieldPassword: UITextField!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func handleButtonLogin(_ sender: UIButton) {
        
        guard let email = textFieldEmail.text,
              let password = textFieldPassword.text
        else {
            return
        }

        if (email == "admin" && password == "1234") {
            performSegue(withIdentifier: "ProfileViewId", sender: nil)
            errorLabel.text = ""
            textFieldEmail.text = ""
            textFieldPassword.text = ""
        } else {
            errorLabel.text = "Неверный логин или пароль"
            errorLabel.textColor = UIColor.red
        }
    }

    @IBAction func handleForgotPassword(_ sender: UIButton) {
        recoverMessage = "Восстановить пароль";
        screenType = .recoverPassword
        performSegue(withIdentifier: "RecoverViewId", sender: nil)
    }
    
    @IBAction func handleForgetUsername(_ sender: UIButton) {
        recoverMessage = "Восстановить имя пользователя";
        screenType = .recoverUsername
        performSegue(withIdentifier: "RecoverViewId", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        guard let segueId = segue.identifier else {
            return
        }
        
        switch segueId {
        case "RecoverViewId":
            let newViewController = segue.destination
            if let errorsViewController = newViewController as? RecoverViewController {
                //errorsViewController.error = ErrorMessage(message: recoverMessage)
                errorsViewController.screenType = screenType
            }
        default:
            guard let email = textFieldEmail.text,
                  let password = textFieldPassword.text
            else {
                return
            }

            let isValid = validate(email, password)

            if (isValid) {
                let newViewController = segue.destination
                if let profileViewController = newViewController as? ProfileViewController {
                    profileViewController.user = User(email: email, password: password)
                }
            }
        }
    }
    
    func validate(_ email: String, _ password: String) -> Bool {
        if (email == "admin" && password == "1234") {
            return true
        }
        return false
    }
}

