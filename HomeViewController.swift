//
//  ViewController.swift
//  BinouralBeats
//
//  Created by Bartek on 5/16/20.
//  Copyright © 2020 Bartek. All rights reserved.
//

import UIKit
import Foundation
class HomeViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
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
        
//        collectionView.dataSource = self
//        collectionView.delegate = self
        
        
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return binouralTitle.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        cell.binouralName.text = binouralTitle[indexPath.row]
        cell.binouralImage.image = binouralImage[indexPath.row]
        cell.binouralDiscription.text = binouralDiscription[indexPath.row]
        
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


}

