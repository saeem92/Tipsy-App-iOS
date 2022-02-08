//
//  ViewController.swift
//  Tipsy
//
//  Created by Saeem on 02/02/22.
//  Copyright © 2022 Saeem. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var splitNumberLabel: UILabel!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var billTextField: UITextField!
    
    var tip = 0.10
    

    @IBAction func tipChanged(_ sender: UIButton) {
        zeroPctButton.isSelected = false
        // We are adding isselected here it is helping us to have a background and appear selected when we press a button.
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        //Make the button that triggered the IBAction selected.
                sender.isSelected = true
                
                //Get the current title of the button that was pressed.
                let buttonTitle = sender.currentTitle!
                
                //Remove the last character (%) from the title then turn it back into a String.
                let buttonTitleMinusPercentSign =  String(buttonTitle.dropLast())
                
                //Turn the String into a Double.
                let buttonTitleAsANumber = Double(buttonTitleMinusPercentSign)!
                
                //Divide the percent expressed out of 100 into a decimal e.g. 10 becomes 0.1
                tip = buttonTitleAsANumber / 100
        
    }
    
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
    }
    
    
}

