//
//  Game.swift
//  Rock Raper Scissors
//
//  Created by FERAS on 13/05/2022.
//

import Foundation


struct Game{
    
    enum RockPaperScissor: Int {
        case rock = 0
        case Paper = 1
        case Scissor = 2
    }
    
    
    func playerOneChoose ( _ ChoseValue: Int ) -> RockPaperScissor{
        return RockPaperScissor(rawValue: ChoseValue)!
        
    }
    
    func playerTwoChoose ( _ ChoseValue: Int ) -> RockPaperScissor{
        return RockPaperScissor(rawValue: ChoseValue)!
    }
    
    

}
