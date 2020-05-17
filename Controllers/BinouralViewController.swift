//
//  BinouralViewController.swift
//  BinouralBeats
//
//  Created by Bartek on 5/17/20.
//  Copyright © 2020 Bartek. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

class BinouralViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playSound(soundName: "binouralTest")
        
    }
    
    @IBAction func DESTROY(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    var player: AVAudioPlayer!
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
}


