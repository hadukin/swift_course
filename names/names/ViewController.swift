//
//  ViewController.swift
//  Names
//
//  Created by anatoly on 10.01.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet var letterButtons: [UIButton]!
    
    @IBOutlet weak var wordLabel: UILabel!

    @IBOutlet weak var countersLabel: UILabel!
    
    let maxNumberOfLives: Int = 7
    
    var currentGame: Game!
    
    var numberOfFails: Int = 0
    
    var numberOfWins: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        addTargetsToButtons()
        setupNewGame()
    }
    
    func setupNewGame() {
        let index: Int = Int.random(in: 0..<names.count)
        let word = names.remove(at: index).uppercased()
        if (names.isEmpty == false) {
            currentGame = Game(word: word, numberOfLives: maxNumberOfLives, selectedLetters: [])
            enableButtons(true)
        } else {
            enableButtons(false)
        }
        updateUi()
    }
    
    func updateUi() {
        let imageName = "Tree \(currentGame.numberOfLives)"
        let img: UIImage? = UIImage(named: imageName)
        imageView.image = img
        
        var letters = [String]()
        
        for letter in currentGame.currentWord {
            letters.append("\(letter)")
        }

        let formattedString = letters.joined(separator: " ")
        
        wordLabel.text = formattedString
        
        countersLabel.text = "Побед: \(numberOfWins), Поражений: \(numberOfFails)"
    }
    
    func addTargetsToButtons() {
        for button in letterButtons {
            button.addTarget(self, action: #selector(buttonPressed(_:)), for: .touchUpInside)
        }
    }
    
    func enableButtons(_ isEnable: Bool) {
        for button in letterButtons {
            button.isEnabled = isEnable
        }
    }
    
    func changeGameState()  {
        if currentGame.numberOfLives <= 0 {
            numberOfFails += 1
            showDialog(false)
        } else if currentGame.currentWord == currentGame.word {
            numberOfWins += 1
            showDialog(true)
        } else {
            updateUi()
        }
    }
    
    func showDialog(_ isWin: Bool) {
        let alert = UIAlertController(
            title: isWin ? "Поздравляем вы выиграли!" : "Поражение\nЗагаданное слово \(currentGame.word)",
            message: "Еще раунд?",
            preferredStyle: .alert
        )
        alert.addAction(UIAlertAction(title: "Да", style: .default, handler: {_ in
            self.setupNewGame()
        }))
        alert.addAction(UIAlertAction(title: "Нет", style: .default, handler: {_ in
            self.numberOfWins = 0
            self.numberOfFails = 0
            self.setupNewGame()
        }))
        self.present(alert, animated: true)
    }

    @objc func buttonPressed(_ sender: UIButton) {
        sender.isEnabled = false
        if let letter = sender.title(for: .normal) {
            
            let character = Character(letter)
            currentGame.selectedLetters.append(character)
            
            if !currentGame.word.contains(character) {
                currentGame.numberOfLives -= 1
            }
            changeGameState()
        }
    }
}
