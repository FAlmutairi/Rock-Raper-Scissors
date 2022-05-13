//
//  RegistrationVC.swift
//  Rock Raper Scissors
//
//  Created by FERAS on 28/04/2022.
//

import UIKit

class RegistrationVC: UIViewController {

    @IBOutlet weak var RegistrationView: UIView!
    @IBOutlet weak var playerOne: UITextField!
    @IBOutlet weak var playerTwo: UITextField!
    
    @IBOutlet weak var TexFieldFirstPlayer: UITextField!
    @IBOutlet weak var TextFieldSecondPlayr: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
//        RegistrationView.layer.cornerRadius = 15
//        RegistrationView.layer.shadowColor = UIColor.black.cgColor
//        RegistrationView.layer.shadowOpacity = 0.2
//        RegistrationView.layer.shadowOffset = .zero
//        RegistrationView.layer.shadowRadius = 4
        
        TexFieldFirstPlayer.delegate = self
        TextFieldSecondPlayr.delegate = self
    }
    
    @IBAction func startPressed(_ sender: UIButton) {
//
//        let FirstPlayer = playerOne.text
////
//        if FirstPlayer == "" {
//            print(" pleas Entet name")
//            TexFieldFirstPlayer.backgroundColor = UIColor(red: 255/255.0, green: 0/255.0, blue: 0/255.0, alpha: 0.4)
//            TextFieldSecondPlayr.backgroundColor = UIColor(red: 255/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1)
//
//            TexFieldFirstPlayer.placeholder = "إدخل الاسم من فضلك!"
//            TextFieldSecondPlayr.placeholder = "إدخل الاسم من فضلك!"
//        }
//
        TextFieldSecondPlayr.endEditing(true)
        TexFieldFirstPlayer.endEditing(true)
        
        
        
    }
    
    
}

//MARK: - UITextFieldDelehste

extension RegistrationVC: UITextFieldDelegate{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(TexFieldFirstPlayer.text!)
        print(TextFieldSecondPlayr.text!)
        TextFieldSecondPlayr.endEditing(true)
        TexFieldFirstPlayer.endEditing(true)
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {

        if TexFieldFirstPlayer.text == ""{
            TexFieldFirstPlayer.backgroundColor = UIColor(red: 255/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1)
            TexFieldFirstPlayer.placeholder = "إدخل الاسم من فضلك!"
            print("please enter you name")
            return true
            
        } else if TextFieldSecondPlayr.text == "" {
            TextFieldSecondPlayr.backgroundColor = UIColor(red: 255/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1)
            TextFieldSecondPlayr.placeholder = "إدخل الاسم من فضلك!"
            
            return false
        }else{
            return false
        }
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField){
        
        if TexFieldFirstPlayer.text != "" && TextFieldSecondPlayr.text != "" {
            let gameVC = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
            gameVC.FName = TexFieldFirstPlayer.text!
            gameVC.SName = TextFieldSecondPlayr.text!
            present(gameVC, animated: true, completion: nil)
            TexFieldFirstPlayer.text = ""
            TextFieldSecondPlayr.text = ""
            
        }
        
    }
    
}



