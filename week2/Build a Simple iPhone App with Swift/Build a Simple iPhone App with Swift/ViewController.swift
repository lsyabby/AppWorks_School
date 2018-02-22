//
//  ViewController.swift
//  Build a Simple iPhone App with Swift
//
//  Created by ABBY on 2018/2/22.
//  Copyright © 2018年 ABBY. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    let factProvider = FactProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        funFactLabel.text = factProvider.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func assignmentLabel() {
        funFactLabel.text = factProvider.randomFact()
    }
}

