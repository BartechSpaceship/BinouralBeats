//
//  StudyController.swift
//  BinouralBeats
//
//  Created by Bartek on 5/16/20.
//  Copyright © 2020 Bartek. All rights reserved.
//

import Foundation
import UIKit

class StudyController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    let binouralTitle = ["4.0 Hz", "14.0 Hz","12.0 HZ"]
    
    let binouralName = [ "Memory", "Focus", "Study Aid" ]
    
    let binouralDiscription = ["Increasing of memory retention functionalities", "Associated with problem solving and information tasks", "Good for absorbing information passively"]
    
    let binouralImage = [ UIImage(named: "memory"),
    UIImage(named: "focus"),
    UIImage(named: "studyAid"),
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
        cell.binouralImage.image = binouralImage[indexPath.row]
        
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
        let binouralSoundVC = storyboard?.instantiateViewController(withIdentifier: "BinouralViewController") as! BinouralViewController
        
        if indexPath.row == 0 {
            binouralSoundVC.modalPresentationStyle = .fullScreen
            self.present(binouralSoundVC, animated: true)
        }
        
    }
    
}
