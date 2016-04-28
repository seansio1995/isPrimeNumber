//
//  ViewController.swift
//  isPrime
//
//  Created by Sean Xiao on 4/28/16.
//  Copyright (c) 2016 Sean Xiao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var enterNum: UITextField!
    
    @IBOutlet weak var answer: UILabel!
    @IBAction func isPrime(sender: AnyObject) {
        var numberInt=enterNum.text.toInt()
        if numberInt != nil {
            var isPrime=true
            var unwrappedint = numberInt!
            if unwrappedint == 1
            {
                isPrime=false
            }
            if unwrappedint == 2
            {
                isPrime=true
            }
            if unwrappedint > 2
            {
                for var i=2; i < numberInt;i++
                {
                    if unwrappedint % i == 0
                    {
                        isPrime=false
                    }
                }
            }
            if isPrime == true{
                answer.text="It is prime"
            }
            else
            {
                answer.text="It is not prime"
            }
            
        }
        else
        {
            answer.text="Please enter the number"
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

