//
//  HomeDetailsViewController.swift
//  Lifecycle
//
//  Created by akirsanov on 16.03.2021.
//

import UIKit

class HomeDetailsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("HomeDetails", #function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("HomeDetails", #function)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("HomeDetails", #function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("HomeDetails", #function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("HomeDetails", #function)
    }
}
