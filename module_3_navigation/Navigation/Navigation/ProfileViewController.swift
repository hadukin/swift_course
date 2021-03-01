//
//  ProfileViewController.swift
//  Navigation
//
//  Created by anatoly on 01.03.2021.
//

import UIKit

struct User {
    var email: String?
    var password: String?
}

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var userEmail: UILabel!
    
    @IBOutlet weak var userPassword: UILabel!
    
    var user: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let email = user?.email,
              let password = user?.password
        else {
            return
        };

        userEmail.text = "Email: \(email)"
        userPassword.text = "Пароль: \(password)"
    }
    
}
