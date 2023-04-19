//
//  ViewController.swift
//  bill spliter
//
//  Created by 9i on 4/18/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
}


    @IBOutlet var amount: UITextField!
    @IBOutlet var segmentedControl1: UISegmentedControl!
    @IBOutlet var slider1: UISlider!
    @IBOutlet var stepper1: UIStepper!
    @IBOutlet var customTip: UILabel!
    @IBOutlet var amountOfPeople: UILabel!
    
  
    @IBAction func calculate(_ sender: UIButton) {
        
        performSegue(withIdentifier: "calculate", sender: "arr")
    
    }
    
    
    
  
    @IBAction func segmentedControl(_ sender: UISegmentedControl) {
        
        if segmentedControl1.selectedSegmentIndex == 0
        {
            customTip.text = "10%"
            slider1.value = 10
            slider1.isHidden = true
        }
        else if segmentedControl1.selectedSegmentIndex == 1
        {
            customTip.text = "15%"
            slider1.value = 15
            slider1.isHidden = true
        }
        else if segmentedControl1.selectedSegmentIndex == 2
        {
            customTip.text = "20%"
            slider1.value = 20
            slider1.isHidden = true
        }
        else
        {
            customTip.text = String(slider1.value) + "%"
            slider1.isHidden = false
            customTip.isHidden = false
        }
    }
    
    @IBAction func slider(_ sender: Any) {
        
        customTip.text = String(Int(slider1.value))
        
    }
    
    
    
    @IBAction func stepper(_ sender: UIStepper){
        amountOfPeople.text = String(Int(stepper1.value))
    }
    
        
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

