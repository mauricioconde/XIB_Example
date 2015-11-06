//
//  ViewController.swift
//  XIB_Example
//
//  Created by Mauricio Conde Xinastle on 28/07/15.
//  Copyright (c) 2015 Mauricio Conde. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var customPopUp: CustomPopUp!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showCustomPopUp(sender: UIButton){
        customPopUp.hidden = false
    }


}

