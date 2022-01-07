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
    
    // Array of image
    let ArrayOfImage = [#imageLiteral(resourceName: "scissors"), #imageLiteral(resourceName: "hand"), #imageLiteral(resourceName: "Rock")]

    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        // Add rounded borders to an UIView and UIButton
        UiViewBackground.layer.cornerRadius = 15
        startButton.layer.cornerRadius = 15
        
    }

    // To get result
    @IBAction func startPressedButton(_ sender: UIButton) {
        print("Start")
        
        FirstPlayerImage.image = ArrayOfImage[Int.random(in: 0...2)]
        
        print(ArrayOfImage.enumerated())
              
    }
}

