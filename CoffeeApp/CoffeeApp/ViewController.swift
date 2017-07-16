//
//  ViewController.swift
//  CoffeeApp
//
//  Created by Zhe Chen on 7/13/17.
//  Copyright © 2017 Zhe Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet weak var inputText: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var payPrice: UILabel!

    override func viewDidLoad()
    {
        super.viewDidLoad()
        inputText.layer.cornerRadius = 15.0
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculateTapped(_ sender: AnyObject)
    {
        if inputText.text == ""
        {
           errorLabel.text = "Enter value in box"
        }
        
        else
        {
        let input = Double(inputText.text!)
        
        payPrice.text = "$ \(input! * 5.0)0"
    
        }

    }
}
