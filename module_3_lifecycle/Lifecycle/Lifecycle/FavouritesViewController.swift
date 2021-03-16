//
//  FavouritesViewController.swift
//  Lifecycle
//
//  Created by akirsanov on 16.03.2021.
//

import UIKit

class FavouritesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Favourites", #function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("Favourites", #function)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("Favourites", #function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("Favourites", #function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("Favourites", #function)
    }
}
