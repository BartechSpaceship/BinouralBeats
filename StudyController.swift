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
    
    
    let binouralTitle = ["STUDY", "SPIRIT","SLEEP", "BODY", "BRAIN"]
    
    let binouralImage = [
        UIImage(named: "study"),
        UIImage(named: "spirit"),
        UIImage(named: "sleep"),
        UIImage(named: "body"),
        UIImage(named: "brain"),
    ]
    
    let binouralDiscription = ["Memory | Focus | Aid", "Trance | Astral travel | Solfeggio | Chanting | 3rd Eye", "Sleep | Deep Sleep | Lucid Dream", "Healing | Addictions | Energizer | Inflammation", "Intelligence | Creativity | Relaxation | Euphoria | Intuition"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        binouralTitle.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.binouralName.text = binouralTitle[indexPath.row]
        cell.binouralImage.image = binouralImage[indexPath.row]
        cell.binouralDiscription.text = binouralDiscription[indexPath.row]
        
        
        return cell
    }
    
}
