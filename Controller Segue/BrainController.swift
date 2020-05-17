//
//  BrainController.swift
//  BinouralBeats
//
//  Created by Bartek on 5/17/20.
//  Copyright © 2020 Bartek. All rights reserved.
//

import Foundation
import UIKit

class BrainController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    let binouralTitle = ["15.4 Hz", "10.6 Hz","6.0 Hz", "20.0 Hz", "5.5 Hz"]
    
    let binouralName = [ "Intelligence", "Creativity", "Relaxation", "Euphoria", "Intuition" ]
    
    let binouralDiscription = ["Associated with the cortex and has the effect of increased intelligence", "Good for stating, contemplating creative ideas or solutions to a problem", "A binoural beat for mental and physical relaxation", "Overcome yourself with feelings of happiness, excitement, and well being", "Awake your intuition with this beat"]
    //
    let binouralImage = [ UIImage(named: "study"),
                          UIImage(named: "spirit"),
                          UIImage(named: "sleep"),
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        binouralTitle.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCellSegue
        
        cell.binouralTitle.text = binouralTitle[indexPath.row]
        cell.binouralName.text = binouralName[indexPath.row]
        cell.binouralDiscryption.text = binouralDiscription[indexPath.row]
        //   cell.binouralImage.image = binouralImage[indexPath.row]
        
        cell.contentView.layer.cornerRadius = 4.0
        cell.contentView.layer.borderWidth = 1.0
        cell.contentView.layer.borderColor = UIColor.clear.cgColor
        cell.contentView.layer.masksToBounds = false
        cell.layer.shadowOffset = CGSize(width: 0, height: 1.0)
        cell.layer.shadowColor = UIColor.gray.cgColor
        cell.layer.shadowRadius = 4.0
        cell.layer.shadowOpacity = 1.0
        cell.layer.masksToBounds = false
        cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: cell.contentView.layer.cornerRadius).cgPath
        
        
        
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    
}


