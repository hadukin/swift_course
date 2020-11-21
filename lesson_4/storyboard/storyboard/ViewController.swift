//
//  ViewController.swift
//  storyboard
//
//  Created by anatoly on 06.11.2020.
//

import UIKit

class ViewController: UIViewController {
    
    var counter: Int = 0

    @IBOutlet weak var loginButton: UIButton!

    @IBOutlet weak var someSwitch: UISwitch!
    
    @IBOutlet weak var someLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        loginButton.backgroundColor = .cyan
        loginButton.layer.cornerRadius = 12
    }

    @IBAction func handleChangeSwitch(_ sender: UISwitch) {
        
    }
    
    @IBAction func pressedButton(_ sender: UIButton) {
        someSwitch.isOn.toggle()
        
        counter += 1
        
        someLabel.text = "Count \(counter)"
    }
}

