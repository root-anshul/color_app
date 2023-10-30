//
//  UIcolor+Ext.swift
//  temp_project_2
//
//  Created by anshul on 31/10/23.
//

import UIKit


extension UIColor{
    static func random() -> UIColor{
        let randomcolor = UIColor(red: CGFloat.random(in: 0...1),
                                  green: CGFloat.random(in: 0...1),
                                  blue: CGFloat.random(in: 0...1),
                                  alpha: 1)
        return randomcolor
    }
}
