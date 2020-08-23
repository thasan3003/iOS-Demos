//
//  FirstViewController.swift
//  ৭ বীরশ্রেষ্ঠ
//
//  Created by MacBook Pro on 7/11/18.
//  Copyright © 2018 tahmidhasan3003. All rights reserved.
//

import UIKit

var selectedIndex = 0

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func bClicked0(_ sender: Any) {
        selectedIndex = 0
        performSegue(withIdentifier: "sH2D", sender: self)
    }
    
    @IBAction func bClicked1(_ sender: Any) {
        selectedIndex = 1
        performSegue(withIdentifier: "sH2D", sender: self)
    }
    
    @IBAction func bClicked2(_ sender: Any) {
        selectedIndex = 2
        performSegue(withIdentifier: "sH2D", sender: self)
    }
    
    @IBAction func bClicked3(_ sender: Any) {
        selectedIndex = 3
        performSegue(withIdentifier: "sH2D", sender: self)
    }
    
    @IBAction func bClicked4(_ sender: Any) {
        selectedIndex = 4
        performSegue(withIdentifier: "sH2D", sender: self)
    }
    
    @IBAction func bClicked5(_ sender: Any) {
        selectedIndex = 5
        performSegue(withIdentifier: "sH2D", sender: self)
    }
    
    @IBAction func bClicked6(_ sender: Any) {
        selectedIndex = 6
        performSegue(withIdentifier: "sH2D", sender: self)
    }
    
}

