//
//  HomeViewController.swift
//  Lifecycle
//
//  Created by akirsanov on 16.03.2021.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Home", #function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("Home", #function)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("Home", #function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("Home", #function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("Home", #function)
    }
}
