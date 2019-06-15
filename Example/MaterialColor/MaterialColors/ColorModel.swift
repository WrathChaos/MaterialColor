//
//  ColorModel.swift
//  MaterialColors
//
//  Created by Kuray ÖĞÜN on 26/07/2017.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit

class ColorModel{
    
    private let _label: String?
    private let _color: UIColor?
    
    
    init(label: String?, color: UIColor?) {
        _label = label
        _color = color
    }
    
    var label: String{
        if _label == nil{
            return ""
        }; return _label!
    }
    
    var color: UIColor{
        if _color == nil{
            return UIColor.red
        }; return _color!
    }
}
