//
//  HomeInfoViewController.swift
//  Lifecycle
//
//  Created by akirsanov on 16.03.2021.
//

import UIKit

class HomeInfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("HomeInfo", #function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("HomeInfo", #function)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("HomeInfo", #function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("HomeInfo", #function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("HomeInfo", #function)
    }
}
