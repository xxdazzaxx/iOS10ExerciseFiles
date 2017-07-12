//
//  ViewController.swift
//  XCodeTour
//
//  Created by Zhe Chen on 7/11/17.
//  Copyright © 2017 Zhe Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func BlueBtnTapped(_ sender: Any) {
        colorView.backgroundColor = UIColor.blue
    }
    
    @IBAction func GreenBtnTapped(_ sender: Any) {
        colorView.backgroundColor = UIColor.green
    }
    
}

