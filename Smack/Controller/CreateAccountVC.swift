//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Leo Espinal on 3/27/18.
//  Copyright © 2018 Leo Espinal. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func closePressed(_ sender: Any) {
        //Unwind to root view controller
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
}
