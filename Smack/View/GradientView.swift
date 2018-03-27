//
//  GradientView.swift
//  Smack
//
//  Created by Leo Espinal on 3/27/18.
//  Copyright © 2018 Leo Espinal. All rights reserved.
//

import UIKit

@IBDesignable //Let's this class know it needs to render in storyboard
class GradientView: UIView {
    
    //Custom properties that can be dynamically changed in storyboard
    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.2901960784, green: 0.3019607843, blue: 0.8470588235, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0.1725490196, green: 0.831372549, blue: 0.8470588235, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    //Layout of view is updated when setNeedsLayout() is called
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        //Set starting and end point of gradient, this should take up the whole view
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        //Set frame to be of same size as parent view
        gradientLayer.frame = self.bounds
        
        //Insert gradient into parent UIView's layers list of sub layers at the top of list
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
}
