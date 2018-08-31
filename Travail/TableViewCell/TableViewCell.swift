//
//  TableViewCell.swift
//  Travail
//
//  Created by Saravana on 30/08/18.
//

import UIKit

class TableViewCell: UITableViewCell {

    //MARK: -Outlets
    @IBOutlet weak var collectionView: UICollectionView!
    
    //MARK: -Variables
    let tags = ["Horror","Scifi","Romance","Comedy","Featured","Comics","Anime","Action","Crime","Drama","Continue"]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: "TagsCVC", bundle: nil), forCellWithReuseIdentifier: "TagsCVC")
        collectionView.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

//MARK: -UICollectionViewDataSource
extension TableViewCell : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tags.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TagsCVC", for: indexPath) as! TagsCVC
        cell.titleLbl.text = tags[indexPath.item]
        cell.manageCell(isSelected: true)
        return cell
    }
}

//MARK: -UICollectionViewDelegateFlowLayout,UICollectionViewDelegate
extension TableViewCell :UICollectionViewDelegateFlowLayout, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let lbl = UILabel(frame: self.frame)
        lbl.text = tags[indexPath.item]
        lbl.sizeToFit()
        return CGSize(width: lbl.frame.size.width + 53, height: 30)
    }
}

