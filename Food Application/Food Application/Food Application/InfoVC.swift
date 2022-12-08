//
//  InfoVC.swift
//  Food application
//
//  Created by TryCatch Classes on 11/07/1944 Saka.
//

import UIKit

class InfoVC: UIViewController {

    @IBOutlet weak var infoimgview: UIImageView!
    
    @IBOutlet weak var infoPriLabel: UILabel!
    
    @IBOutlet weak var infoLable: UILabel!
    
    @IBOutlet weak var recipeLabel: UILabel!
    
    @IBOutlet weak var shortInfoLabel: UILabel!
    
    var img = UIImage()
    var label_name = ""
    var label_pri = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoimgview.layer.cornerRadius = 30
        infoimgview.image = img
        infoLable.text = label_name
        infoPriLabel.text = label_pri

    }
    
    @IBAction func OrderBtnTapped(_ sender: UIButton) {
        let  i = storyboard?.instantiateViewController(withIdentifier: "PaymentVC") as! PaymentVC
        self.navigationController?.present(i, animated: true)
        
    }
    
    @IBAction func locationBtnTapped(_ sender: UIButton) {
        let j = storyboard?.instantiateViewController(withIdentifier: "MapVC") as! MapVC
        self.navigationController?.pushViewController(j, animated: true)
        
    }
    
    
    @IBAction func deliveryBtnTapped(_ sender: UIButton) {
        let k = storyboard?.instantiateViewController(withIdentifier: "TimerVC") as! TimerVC
        self.navigationController?.pushViewController(k, animated: true)
        
    }
    
}
