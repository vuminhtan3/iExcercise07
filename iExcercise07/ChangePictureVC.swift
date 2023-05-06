//
//  ChangePictureVC.swift
//  iExcercise07
//
//  Created by Minh Tan Vu on 06/05/2023.
//

import UIKit

class ChangePictureVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var changeButton: UIButton!

    let images = [#imageLiteral(resourceName: "01"), #imageLiteral(resourceName: "02"), #imageLiteral(resourceName: "03"), #imageLiteral(resourceName: "04"), #imageLiteral(resourceName: "05"), #imageLiteral(resourceName: "06"), #imageLiteral(resourceName: "07"), #imageLiteral(resourceName: "08"), #imageLiteral(resourceName: "09"), #imageLiteral(resourceName: "10")]
    var random: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    
    func setupUI() {
        random = images.randomElement()
        imageView.image = random
        
        changeButton.setTitle("CHANGE PICTURE", for: .normal)
        changeButton.setTitleColor(.black, for: .normal)
        changeButton.backgroundColor = .systemMint
        changeButton.layer.cornerRadius = changeButton.frame.height/2
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        let currentImage = imageView.image
        var nextImage = images.randomElement()
        
        while nextImage == currentImage {
            nextImage = images.randomElement()
        }
        
        imageView.image = nextImage
        
    }
    
}
