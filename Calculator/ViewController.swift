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


    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTyping = false
    
    @IBAction func touchDigit(_ sender: UIButton) {
        
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
    
    
    @IBAction func performOperation(_ sender: UIButton) {
        
        
    }
}

