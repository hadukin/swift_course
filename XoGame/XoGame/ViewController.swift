//
//  ViewController.swift
//  XoGame
//
//  Created by anatoly on 17.01.2021.
//

import UIKit

struct Player {
    var selectedCell: [Int]
}

let winStreak: [[Int]] = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
    [1, 4, 7],
    [2, 5, 8],
    [3, 6, 9],
    [1, 5, 9],
    [7, 5, 3],
]


class ViewController: UIViewController {
    
    @IBOutlet var buttons: [UIButton]!
    
    @IBOutlet weak var winnerLabel: UILabel!
    
    @IBOutlet weak var newGameButton: UIButton!
    
    var player1: Player!
    var player2: Player!
    let maxCount: Int = 9
    var count: Int = 0
    var currentPlayer: String = "Игрок 1"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        runNewGame()
        newGameButton.addTarget(self, action: #selector(newGame(_:)), for: .touchUpInside)
    }
    
    @objc func newGame(_ sender: UIButton)  {
        runNewGame()
    }
    
    func runNewGame() {
        addTargetsOnBUtton()
        enableButtons(true)
        player1 = Player(selectedCell: [])
        player2 = Player(selectedCell: [])
        newGameButton.isHidden = true
        count = 0;
        currentPlayer = "Игрок 1"
        winnerLabel.text = ""
    }
    
    func enableButtons(_ isEnable: Bool) {
        for button in buttons {
            button.backgroundColor = .white
            button.isEnabled = isEnable
        }
    }
    
    func addTargetsOnBUtton() {
        for button in buttons {
            button.addTarget(self, action: #selector(onPressedButton(_: )), for: .touchUpInside)
        }
    }
    
    func findWinner(_ player: String, _ selectedCell :[Int]) {
        for streaks in winStreak {
            let set1 = Set(streaks)
            let set2 = Set(selectedCell)
            if (set1.count == set2.count && set1 == set2) {
                winnerLabel.text = "Победил \(player)"
                newGameButton.isHidden = false
            }
        }
    }
    
    @objc func onPressedButton(_ sender: UIButton ) {
        if let index = sender.title(for: .normal) {

            if(currentPlayer == "Игрок 1") {
                sender.backgroundColor = UIColor.green
                player1.selectedCell.append(Int(index)!)
                findWinner(currentPlayer, player1.selectedCell)
            } else {
                sender.backgroundColor = UIColor.red
                player2.selectedCell.append(Int(index)!)
                findWinner(currentPlayer, player2.selectedCell)
            }

            currentPlayer = currentPlayer == "Игрок 1" ? "Игрок 2" : "Игрок 1"
            count = count + 1
            sender.isEnabled = false
        }
    }
}
