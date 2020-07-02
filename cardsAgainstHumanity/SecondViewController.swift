//
//  SecondViewController.swift
//  cardsAgainstHumanity
//
//  Created by Arda Karaman on 2.07.2020.
//  Copyright © 2020 ardakrmn. All rights reserved.
//

import UIKit
import Gemini

class GeminiCollectionViewCell: GeminiCell {
    @IBOutlet weak var label: UILabel!
}

class SecondViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var whiteCardsCollectionView: GeminiCollectionView!
    let items = ["1", "2", "3", "4", "5", "6", "7"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    func configureAnimation() {
        whiteCardsCollectionView.gemini
        .yawRotationAnimation()
            .yawEffect(.sineWave)
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! GeminiCollectionViewCell
        
        cell.label.text? = "this is where joke goes" + items[indexPath.item]
        cell.backgroundColor = .lightText
        cell.layer.cornerRadius = 4
        
        return cell
    }
    
}


