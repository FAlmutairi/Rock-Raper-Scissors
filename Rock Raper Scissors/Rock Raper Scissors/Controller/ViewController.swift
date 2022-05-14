//
//  ViewController.swift
//  Rock Raper Scissors
//
//  Created by Ferasico on 05/01/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var UiViewBackground: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet weak var FirstPlayerImage: UIImageView!
    @IBOutlet weak var SecandPlayerImage: UIImageView!
    
    @IBOutlet weak var firstName: UILabel!
    @IBOutlet weak var secandName: UILabel!
    
    @IBOutlet weak var scorePlayerOne: UILabel!
    @IBOutlet weak var scorePlayerTwo: UILabel!
    
    
    var FName: String = ""
    var SName: String = ""
    
    var playerOneChooseValue = 0
    var playerTwoChooseValue = 0
    
    var scoreOne = 0
    var scoreTwo = 0
    
    var game = Game()
    
    // Array of image
    let ArrayOfImage = [#imageLiteral(resourceName: "Rock"), #imageLiteral(resourceName: "hand"), #imageLiteral(resourceName: "scissors")]

    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        // Add rounded borders to an UIView and UIButton
        UiViewBackground.layer.cornerRadius = 15
        startButton.layer.cornerRadius = 15
        firstName.text = "\(FName)"
        secandName.text = "\(SName)"
        
        scorePlayerOne.text = "\(scoreOne)"
        scorePlayerTwo.text = "\(scoreTwo)"
        
    }

    // To get result
    @IBAction func startPressedButton(_ sender: UIButton) {
        
        playerOneChooseValue = Int.random(in: 0...2)
        playerTwoChooseValue = Int.random(in: 0...2)
        
        FirstPlayerImage.image = ArrayOfImage[playerOneChooseValue]
        SecandPlayerImage.image = ArrayOfImage[playerTwoChooseValue]
        
        
        let player1 = game.playerOneChoose(playerOneChooseValue)
        let player2 = game.playerTwoChoose(playerTwoChooseValue)
        
//        game.checkWinner(firstPlayer: player1, secandPlayer: player2)
        print(game.checkWinner(firstPlayer: player1, secandPlayer: player2))
        
        
        
        print(" ---------------------------- ")
        print(game.playerOneChoose(playerOneChooseValue))
        print(game.playerTwoChoose(playerTwoChooseValue))
        
        
        
    }
    
    
}

