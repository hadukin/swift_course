//
//  ProfileViewController.swift
//  TabBar
//
//  Created by akirsanov on 07.03.2021.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var changeTabButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func handleTapButton(_ sender: UIButton) {
        self.tabBarController?.selectedIndex = 1
    }
    
}
