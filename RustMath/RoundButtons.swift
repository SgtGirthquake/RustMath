//
//  RoundButtons.swift
//  RustMath
//
//  Created by Tyler Brenner on 6/25/17.
//  Copyright © 2017 Tritonal6. All rights reserved.
//

import UIKit


@IBDesignable
class RoundButtons: UIButton {

    
    
    @IBInspectable var cornerRadius: CGFloat = 7 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        
        }
    }

    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }

   // @IBInspectable var borderColor: UIColor = UIColor.clear {
     //   didSet {
       //     self.layer.borderColor = borderColor.cgColor
       // }
   // }

}
