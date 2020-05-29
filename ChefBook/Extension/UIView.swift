//
//  UIView.swift
//  ChefBook
//
//  Created by md760 on 25.05.2020.
//  Copyright © 2020 md760. All rights reserved.
//

import UIKit

extension UIView {
    func addBlurEffect()
    {
        let blurEffect = UIBlurEffect(style: .regular)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = self.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight] // for supporting device rotation
        self.addSubview(blurEffectView)
    }
    
}
