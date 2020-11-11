//
//  CustomButton.swift
//  app-swoosh
//
//  Created by owner on 27/10/2020.
//  Copyright © 2020 AppCoda. All rights reserved.
//

import UIKit

class CustomButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
