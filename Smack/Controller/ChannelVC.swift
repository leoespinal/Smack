//
//  ChannelVC.swift
//  Smack
//
//  Created by Leo Espinal on 3/27/18.
//  Copyright © 2018 Leo Espinal. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }
}
