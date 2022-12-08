//
//  ForgetPassVC.swift
//  Food application
//
//  Created by TryCatch Classes on 11/07/1944 Saka.
//

import UIKit

class ForgetPassVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBAction func submitBtnTapped(_ sender: UIButton) {
        let e = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.navigationController?.pushViewController(e, animated: true)
        
        
        
    }
    
}
