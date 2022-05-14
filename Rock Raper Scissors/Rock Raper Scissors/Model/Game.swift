//
//  Game.swift
//  Rock Raper Scissors
//
//  Created by FERAS on 13/05/2022.
//

import Foundation


struct Game {
    
    
    enum RockPaperScissor: Int {
        case rock = 0
        case paper = 1
        case scissor = 2
    }
    
    
    enum Winner{
        case firstPlayer
        case secandPlayer
        case draw
    }
    
    
    
    func playerOneChoose ( _ ChoseValue: Int ) -> RockPaperScissor{
        return RockPaperScissor(rawValue: ChoseValue)!
        
    }
    
    func playerTwoChoose ( _ ChoseValue: Int ) -> RockPaperScissor{
        return RockPaperScissor(rawValue: ChoseValue)!
    }
    
    
    func checkWinner(firstPlayer PlayerOneChoice: RockPaperScissor, secandPlayer PlayerTwoChoice: RockPaperScissor) -> Winner{
        
        switch (PlayerOneChoice, PlayerTwoChoice) {
        
        // First Player is Win
        case (.paper, .rock), (.rock, .scissor), (.scissor, .paper):
            return Winner.firstPlayer
        
        // Drow
        case (.paper, .paper), (.rock, .rock), (.scissor, .scissor):
            return Winner.draw
        
        // Scand Player is Win
        default:
            return Winner.secandPlayer
        }
     
    }
    
    
    func Winners(){
        
    }
    
    

}
