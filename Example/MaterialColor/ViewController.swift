//
//  ViewController.swift
//  MaterialColor
//
//  Created by FreakyCoder on 07/25/2017.
//  Copyright (c) 2017 FreakyCoder. All rights reserved.
//

import UIKit
import MaterialColor

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // Outlet
    @IBOutlet weak var tableview: UITableView!
    
    var colorList = [ColorModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Filling the color list and example of how to use MaterialColor Library
        fillColorList()
        // Tableview Delegate and DataSource
        tableview.delegate = self
        tableview.dataSource = self
        tableview.separatorStyle = .none
    }
    
    func fillColorList(){
        colorList.append(ColorModel(label: "Cyan Base", color: MaterialColor.cyan.base))
        colorList.append(ColorModel(label: "Teal Accent 4", color: MaterialColor.teal.accent4))
        colorList.append(ColorModel(label: "Amber Dark 2", color: MaterialColor.amber.dark2))
        colorList.append(ColorModel(label: "Blue Grey Base", color: MaterialColor.blueGrey.base))
        colorList.append(ColorModel(label: "Deep Orange Accent 3", color: MaterialColor.deepOrange.accent3))
        colorList.append(ColorModel(label: "Deep Purple Dark 3", color: MaterialColor.deepPurple.dark3))
        colorList.append(ColorModel(label: "Brown Light 3", color: MaterialColor.brown.light3))
        colorList.append(ColorModel(label: "Indigo Light 1", color: MaterialColor.indigo.light1))
        colorList.append(ColorModel(label: "Light Blue Dark 1", color: MaterialColor.lightBlue.dark1))
        colorList.append(ColorModel(label: "Yellow Dark 2", color: MaterialColor.yellow.dark2))
        colorList.append(ColorModel(label: "Pink Accent 3", color: MaterialColor.pink.accent3))
        colorList.append(ColorModel(label: "Red Base", color: MaterialColor.red.base))
    }
    
    // UITableView Delegates
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell", for: indexPath) as? ColorCell{
            let colorItem = self.colorList[indexPath.row]
            cell.fillColorCell(colorItem: colorItem)
            return cell
        } else {
            print("Something went wrong!")
            return ColorCell()   // if it's crushed, send an empty ColorCell
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("TableView Count : \(self.colorList.count)")
        return self.colorList.count
    }

    // Make the Status Bar Light/Dark Content for this View
    override var preferredStatusBarStyle : UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }
}

