//
//  ListCVC.swift
//  Travail
//
//  Created by Saravana on 30/08/18.
//

import UIKit

class ListCVC: UICollectionViewCell {

    //MARK: -Outlets
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var author: UILabel!
    @IBOutlet weak var readsLbl: UILabel!
    @IBOutlet weak var endingsLbl: UILabel!
    @IBOutlet weak var winsLbl: UILabel!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.layer.cornerRadius = 10
        self.layer.masksToBounds = false
        self.layer.borderWidth = 1
        self.layer.borderColor = Utilities.shared.UIColorFromRGB(0xD7DAE1).cgColor

        
        btn1.layer.cornerRadius = 7.5
        btn2.layer.cornerRadius = 7.5
        btn3.layer.cornerRadius = 7.5
        
        btn1.layer.borderWidth = 1
        btn1.layer.borderColor = Utilities.shared.UIColorFromRGB(0xFFA50E).cgColor
        
        btn2.layer.borderWidth = 1
        btn2.layer.borderColor = Utilities.shared.UIColorFromRGB(0xFFA50E).cgColor
        
        btn3.layer.borderWidth = 1
        btn3.layer.borderColor = Utilities.shared.UIColorFromRGB(0xFFA50E).cgColor
    }
}
