//
//  PickerView.swift
//  ModularProject
//
//  Created by Matthew Clisby on 24/12/2016.
//  Copyright © 2016 Matthew Clisby. All rights reserved.
//

import UIKit

class ComparisonViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource
{
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return Array.count
    }
    
    @IBOutlet weak var Picker1: UIPickerView!
    
    var Array = [""]
    
    var i = 0
    
    
    override func viewDidLoad()
    {
        /*for i in 0...ViewController.getTradeNumber()
        {
            print(ViewController.MyVariables.arrayList[i].getDate())
            Array.append(ViewController.MyVariables.arrayList[i].getDate())
        }*/
        
        super.viewDidLoad()
        
        Picker1.delegate = self
        Picker1.dataSource = self 
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Array[row]
    }
    
    
}
