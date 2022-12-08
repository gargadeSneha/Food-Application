//
//  FoodCVC.swift
//  Food application
//
//  Created by TryCatch Classes on 11/07/1944 Saka.
//

import UIKit

class FoodCVC: UICollectionViewCell {
    
    @IBOutlet weak var imgview: UIImageView!
    
    @IBOutlet weak var likebutn: UIButton!
    
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var label1: UILabel!
    
    @IBAction func likeTapped(_ sender: UIButton) {
        if likebutn.tag == 0 {
           likebutn.setImage(UIImage(named: "heartFill2"), for: .normal)
           likebutn.tag = 1
        }
        else
        {
           likebutn.setImage(UIImage(named: "heart1"), for: .normal)
            likebutn.tag = 0
        }
            
        
    }
}
