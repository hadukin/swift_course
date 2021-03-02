//
//  LoginErrorsViewController.swift
//  Navigation
//
//  Created by anatoly on 01.03.2021.
//

import UIKit

class RecoverViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    
    var screenType: ScreenType?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let type = screenType else {
            return
        }
        
        switch type {
        case .recoverPassword:
            messageLabel.text = "Восстановить пароль"
        case .recoverUsername:
            messageLabel.text = "Восстановить имя пользователя"
        }

    }
    
    @IBAction func backButton(_ sender: UIButton) {
        _ = navigationController?.popViewController(animated: true)
    }
}
