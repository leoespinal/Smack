//
//  LoginVC.swift
//  Smack
//
//  Created by Leo Espinal on 3/27/18.
//  Copyright © 2018 Leo Espinal. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func closePressed(_ sender: Any) {
        //Dismiss this view
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func createAccountButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_CREATE_ACCOUNT, sender: nil)
    }
    
}
