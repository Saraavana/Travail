//
//  TagsCVC.swift
//  EHR
//
//  Created by Saravana on 15/05/17.
//  Copyright © 2017 com.nfnlabs. All rights reserved.
//

import UIKit

class TagsCVC: UICollectionViewCell {

  @IBOutlet weak var titleLbl: UILabel!

    override func awakeFromNib()
    {
      self.layer.cornerRadius = 15
      self.layer.borderColor = Utilities.shared.UIColorFromRGB(0xB9C1D6).cgColor
      self.layer.borderWidth = 1
    }
  
  func manageCell(isSelected :Bool){
    if !isSelected {
      self.backgroundColor = Utilities.shared.UIColorFromRGB(0xFFFFFF)
      self.titleLbl.textColor = Utilities.shared.UIColorFromRGB(0x888888)
      self.layer.borderColor = Utilities.shared.UIColorFromRGB(0xB9C1D6).cgColor
    }else{
      self.backgroundColor = Utilities.shared.UIColorFromRGB(0x74CB74)
      self.titleLbl.textColor = UIColor.white
      self.layer.borderColor = Utilities.shared.UIColorFromRGB(0x74CB74).cgColor
    }
  }

}
