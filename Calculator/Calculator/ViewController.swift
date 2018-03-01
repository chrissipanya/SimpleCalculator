//
//  ViewController.swift
//  Calculator
//
//  Created by Chris Sipanya on 2/26/18.
//  Copyright © 2018 Chris Sipanya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numText: UILabel!
    @IBOutlet weak var numTextBottom: UILabel!
    var num: Double = 0
    var prevNum: Double = 0
    var doMath: Bool = false
    var operation = 0
    
    @IBAction func numButtons(_ sender: UIButton) {
        if doMath == true
        {
            numText.text = String(sender.tag)
            num = Double(numText.text!)!
            doMath = false
        }
        else
        {
            numText.text = numText.text! + String(sender.tag)
            num = Double(numText.text!)!
            
        }
    }
    
    @IBAction func sideButtons(_ sender: UIButton)
    {
        prevNum = Double(numText.text!)!
        
        if sender.tag == 11
        {
            numText.text = numText.text! + "+"
        }
        else if sender.tag == 12
        {
            numText.text = numText.text! + "-"
        }
        else if sender.tag == 13
        {
            numText.text = numText.text! + "x"
        }
        else if sender.tag == 14
        {
            numText.text = numText.text! + "/"
        }
        operation = sender.tag
        doMath = true
    }
    
    @IBAction func equals(_ sender: UIButton)
    {
        if operation == 11
        {
           numTextBottom.text = String(prevNum + num)
        }
        else if operation == 12
        {
            numTextBottom.text = String(prevNum - num)
        }
        else if operation == 13
        {
            numTextBottom.text = String(prevNum * num)
        }
        else if operation == 14
        {
            numTextBottom.text = String(prevNum / num)
        }
    }
    
    @IBAction func del(_ sender: UIButton) {
        numText.text = ""
        numTextBottom.text = "g"
        num = 0
        prevNum = 0
        doMath = false
        operation = 0

        
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

