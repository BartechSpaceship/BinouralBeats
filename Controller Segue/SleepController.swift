//
//  SleepController.swift
//  BinouralBeats
//
//  Created by Bartek on 5/17/20.
//  Copyright © 2020 Bartek. All rights reserved.
//

import Foundation
import UIKit

class SleepController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
      
        let binouralTitle = ["2.0 Hz", "3.9 Hz ","1.5 Hz"]
             
             let binouralName = [ "Sleep", "Deep Sleep", "Lucid Dream"]
             
             let binouralDiscription = ["The Natural periodic suspension of conciousness during which the powers of the body are restored", "People in deep sleep are less apt to wake in response to external stimuli than those in light sleep", "A lucid dream is any dream in which one is aware that one is dreaming"]
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


