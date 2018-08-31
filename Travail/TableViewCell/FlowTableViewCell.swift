//
//  FlowTableViewCell.swift
//  Travail
//
//  Created by Saravana on 30/08/18.
//

import UIKit

class FlowTableViewCell: UITableViewCell {

    //MARK: -Outlets
    @IBOutlet weak var collectionView: UICollectionView!
    
    //MARK: -Variables
    var movieList :[String] = ["The Lion, the Witch and the Wardrobe","Harry Potter","Dunkirk","Interstellar","Forrest Gump","Captain Philips","Shawshank Redemption","Batman - The Dark Knight"]
    var author = ["Rob Minkoff","J.K. Rowling","Christopher Nolan","Christopher Nolan","Robert Zemeckis","Paul Greengrass","Frank Darabont","Christopher Nolan"]
    var others = [[["4.1m reads"],["15 endings"],["2M wins"]],[["1.1m reads"],["3 endings"],["1M wins"]],[["3.1m reads"],["9 endings"],["2.5M wins"]],[["4.6m reads"],["29 endings"],["8M wins"]],[["5.1m reads"],["83 endings"],["9M wins"]],[["3.8m reads"],["25 endings"],["1.4M wins"]],[["0.1m reads"],["12 endings"],["9.2M wins"]],[["5.1m reads"],["20 endings"],["0.8M wins"]]]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UINib(nibName: "ListCVC", bundle: nil), forCellWithReuseIdentifier: "ListCVC")        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

//MARK: -UICollectionViewDataSource
extension FlowTableViewCell:UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movieList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ListCVC", for: indexPath) as! ListCVC
        cell.movieTitle.text = movieList[indexPath.row]
        cell.author.text = author[indexPath.row]
        cell.readsLbl.text = others[indexPath.row][0][0]
        cell.endingsLbl.text = others[indexPath.row][1][0]
        cell.winsLbl.text = others[indexPath.row][2][0]
        return cell
    }
}

//MARK: -UICollectionViewDelegate
extension FlowTableViewCell :UICollectionViewDelegateFlowLayout,UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
       return CGSize(width: 270, height: 336)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}
