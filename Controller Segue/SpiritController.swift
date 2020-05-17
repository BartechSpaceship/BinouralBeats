//
//  SpiritController.swift
//  BinouralBeats
//
//  Created by Bartek on 5/17/20.
//  Copyright © 2020 Bartek. All rights reserved.
//

import Foundation
import UIKit

class SpiritController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    let binouralTitle = ["5.5 Hz", "7.0 Hz","4.5 Hz", "7.83 Hz", "13.0 Hz"]
         
         let binouralName = [ "Trance", "Astral travel", "Chanting", "Solfeggio", "Third Eye" ]
         
         let binouralDiscription = ["Associated with Inner Guidance, intuition, and heat generation", "Let your body travel across the dreams", "Mantra that has been used for deep meditation throughout the ages", "This Frequency is known as Earth Resonance. Schumann Resonance.", "Invisible eye that lets you perceive things beyond ordinary sight"]
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


