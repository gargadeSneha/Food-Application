//
//  SignUpVC.swift
//  Food application
//
//  Created by TryCatch Classes on 11/07/1944 Saka.
//

import UIKit

class SignUpVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func signupBtnTapped(_ sender: UIButton) {
        let d = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.navigationController?.pushViewController(d, animated: true)
        
        
        
    }
    
}
