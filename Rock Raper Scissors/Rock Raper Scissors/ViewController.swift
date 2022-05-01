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
    
    var FName: String = ""
    var SName: String = ""
    
    // Array of image
    let ArrayOfImage = [#imageLiteral(resourceName: "scissors"), #imageLiteral(resourceName: "hand"), #imageLiteral(resourceName: "Rock")]

    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        // Add rounded borders to an UIView and UIButton
        UiViewBackground.layer.cornerRadius = 15
        startButton.layer.cornerRadius = 15
        firstName.text = "\(FName)"
        secandName.text = "\(SName)"
        
    }

    // To get result
    @IBAction func startPressedButton(_ sender: UIButton) {
        print("Start")
        
        FirstPlayerImage.image = ArrayOfImage[Int.random(in: 0...2)]
        SecandPlayerImage.image = ArrayOfImage[Int.random(in: 0...2)]
        
        if SecandPlayerImage.image == FirstPlayerImage.image {
            print("True")
        } else {
            print("False")
        }
        
        
  
              
    }
}

