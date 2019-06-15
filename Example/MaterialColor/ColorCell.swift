//
//  ColorCell.swift
//  MaterialColors
//
//  Created by Kuray ÖĞÜN on 26/07/2017.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import UIKit

class ColorCell: UITableViewCell{
    
    @IBOutlet weak var background: UIView!
    @IBOutlet weak var label: UILabel!
    
    func fillColorCell(colorItem: ColorModel){
        background.backgroundColor = colorItem.color
        label.text = colorItem.label
    }
}
