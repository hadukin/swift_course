//
//  NewsViewController.swift
//  Lifecycle
//
//  Created by akirsanov on 16.03.2021.
//

import UIKit

class NewsViewController: UIViewController {
    
    @IBOutlet weak var labelDidLoad: UILabel!
    @IBOutlet weak var viewDidAppear: UILabel!
    @IBOutlet weak var viewWillAppear: UILabel!
    @IBOutlet weak var viewWillDesappear: UILabel!
    @IBOutlet weak var viewDidDisappear: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("News", #function)
        labelDidLoad.text = "viewDidLoad"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("News", #function)
        viewDidAppear.text = "viewDidAppear"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("News", #function)
        viewWillAppear.text = "viewWillAppear"
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("News", #function)
        viewWillDesappear.text = "viewWillDesappear"
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("News", #function)
        viewDidDisappear.text = "viewDidDisappear"
    }
}
