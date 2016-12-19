//
//  ViewController.swift
//  TipCalc
//
//  Created by Yang Szu Kai on 2016/12/17.
//  Copyright © 2016年 YangSzu Kai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TipLabel: UILabel!
    
    @IBOutlet weak var billFiled: UITextField!
    
    @IBOutlet weak var Total: UILabel!
    
    @IBOutlet weak var tipRateSelect: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func USER_TAB(_ sender: Any) {
        
        view.endEditing(true) //End Keyboard Editing
    }

    @IBAction func CalcTip(_ sender: Any) {
        
        let PERCENT_RATE = [0.15, 0.18, 0.25]
        
        let bill = Double(billFiled.text!) ?? 0
        //Convert to Numbers Set default to 0 if it is weired value
        
        let tip = bill * PERCENT_RATE[tipRateSelect.selectedSegmentIndex]
        // [Means: Which index of UISegmentControl choosed start from 0,1,2]
        
        let total = bill + tip

        TipLabel.text = String(format: "$%.2f", tip) //%f double or float .2 two decimal place
        Total.text = String(format: "$%.2f", total)

    }
    
    @IBAction func ChangeRate(_ sender: Any) {
        CalcTip(true)
        
    }

}

