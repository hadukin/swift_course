//
//  LoginErrorsViewController.swift
//  Navigation
//
//  Created by anatoly on 01.03.2021.
//

import UIKit

struct ErrorMessage {
    var message: String?
}

class LoginErrorsViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    
    var error: ErrorMessage?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let message = error?.message else {
            return
        }
        
        messageLabel.text = message
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        _ = navigationController?.popViewController(animated: true)
    }
}
