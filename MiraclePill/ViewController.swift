//
//  ViewController.swift
//  MiraclePill
//
//  Created by wireless on 6/7/17.
//  Copyright © 2017 keerthichandra Nagareddy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate {

    let states = ["Arkansas", "california", "Alabama", "New York", "TN"]
    
    @IBOutlet weak var statePicker: UIPickerView!
    
    @IBOutlet weak var stateDisplay: UIButton!
    
    @IBAction func stateButton(_ sender: Any) {
        
        statePicker.isHidden = false
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // The below line indicate that this class will handle any datasource related tasks
         statePicker.isHidden = true
        statePicker.delegate = self
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        stateDisplay.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
    }
    

}

