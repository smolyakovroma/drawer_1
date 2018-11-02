//
//  ShadowView.swift
//  Sketching
//
//  Created by Роман Смоляков on 02/11/2018.
//  Copyright © 2018 Роман Смоляков. All rights reserved.
//

import UIKit

class ShadowView: UIView {

    override func awakeFromNib() {
        layer.shadowOpacity = 1
        layer.shadowRadius = 10
        layer.shadowOffset = CGSize(width: 1, height: 1)
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowPath = CGPath(rect: bounds, transform: nil)
    }
}
