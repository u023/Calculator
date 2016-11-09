//
//  ViewController.swift
//  Calculator
//
//  Created by yonglim on 10/18/16.
//  Copyright © 2016 u023. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //    override func viewDidLoad() {
    //        super.viewDidLoad()
    //        // Do any additional setup after loading the view, typically from a nib.
    //    }
    //
    //    override func didReceiveMemoryWarning() {
    //        super.didReceiveMemoryWarning()
    //        // Dispose of any resources that can be recreated.
    //    }
    
    
    @IBOutlet private weak var display: UILabel!
    
    private var userIsInTheMiddleOfTyping = false
    
    @IBAction private func touchDigit(_ sender: UIButton) {
        
        let digit = sender.currentTitle!
        //        print("touched \(digit) digit")
        if userIsInTheMiddleOfTyping {
            let textCurrentlyDisplay = display.text!
            display.text = textCurrentlyDisplay + digit
        } else {
            display.text = digit;
        }
        userIsInTheMiddleOfTyping = true;
    }
    
    private var displayValue: Double {
        get {
            return Double(display.text!)!
        }
        set {
            display.text = String(newValue)
        }
    }
    

//    private var brain: CalculatorBrain = CalculatorBrain()
    private var brain = CalculatorBrain()
    
    @IBAction private func performOperation(_ sender: UIButton) {
        if userIsInTheMiddleOfTyping {
            brain.setOperand(operand: displayValue)
            userIsInTheMiddleOfTyping = false
        }
        
        if let mathematicalSymbol = sender.currentTitle {
//            if mathematicalSymbol == "π" {
//                displayValue = M_PI
////                display.text = String(M_PI)
//            } else if mathematicalSymbol == "√" {
//                displayValue = sqrt(displayValue)
//            }
            brain.performOperation(symbol: mathematicalSymbol);
            
    
        }
        displayValue = brain.result
    }
}

