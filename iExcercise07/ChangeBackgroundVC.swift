//
//  ChangeBackgroundVC.swift
//  iExcercise07
//
//  Created by Minh Tan Vu on 06/05/2023.
//

import UIKit

class ChangeBackgroundVC: UIViewController {
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var changeButton: UIButton!
    
    var colors: [UIColor] = [ #colorLiteral(red: 0.3009676933, green: 0.76345402, blue: 0.7754538655, alpha: 1) , #colorLiteral(red: 1, green: 0.3816891909, blue: 0.02387970872, alpha: 1) , #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1) , #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1) , #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1) ]
    var randomColor: UIColor!
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }

    func setUI() {
        changeButton.setTitle("CHANGE BACKGROUND", for: .normal)
        changeButton.setTitleColor(UIColor.black, for: .normal)
        changeButton.backgroundColor = .systemMint
        randomColor = colors.randomElement()!
        view1.backgroundColor = randomColor
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        var currentColor = view1.backgroundColor
        var newColor = colors.randomElement()
        
        while currentColor == newColor {
            newColor = colors.randomElement()
        }
        
        view1.backgroundColor = newColor
        print(currentColor.hashValue)
        print(newColor.hashValue)
    }
    
}

