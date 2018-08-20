//
//  ViewController.swift
//  Is It Prime
//
//  Created by Андрей Понамарчук on 31/07/2018.
//  Copyright © 2018 Андрей Понамарчук. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func isItPrimeButton(_ sender: UIButton) {
        
        if let userAnswer = textField.text {
            
            if let number = Int(userAnswer) {
            
                var isPrime = true
                
                if number == 1 {
                    
                    isPrime = false
                    
                }
                
                var i = 2
                
                while i < number {
                    
                    if number % i == 0 {
                        
                        isPrime = false
                        
                        break
                        
                    }
                    
                    i += 1
                    
                }
                
                if isPrime {
                    
                    resultLabel.text = "\(number) is prime"
                    
                } else {
                    
                    resultLabel.text = "\(number) isn't prime"
                    
                }
                
            } else {
                
                resultLabel.text = "Please enter a positive whole number"
                
            }
            
        } else {
            
            resultLabel.text = "Please enter a positive whole number"
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

