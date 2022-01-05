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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        UiViewBackground.layer.cornerRadius = 15
        startButton.layer.cornerRadius = 15
    }


}

