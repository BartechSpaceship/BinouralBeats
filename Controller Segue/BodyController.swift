//
//  BodyController.swift
//  BinouralBeats
//
//  Created by Bartek on 5/17/20.
//  Copyright © 2020 Bartek. All rights reserved.
//

import Foundation
import UIKit

class BodyController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
   
        let binouralTitle = ["1.5 Hz", "8.0 Hz","20.0 Hz", "20.0 Hz"]
             
             let binouralName = [ "Universal Healing", "Overcome Addiction", "Fatigue Energizer", "Inflammation Probelms" ]
             
             let binouralDiscription = ["Delta 1.5Hz is known as Abrahams Universal Healing Rate and is associated with Sleep", "Tells a person they are satisfied, which is useful in addictive personalities", "A frequency used to treat fatigue", "Help you with Overall Inflammation problems"]
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


