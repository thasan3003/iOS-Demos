//
//  FirstViewController.swift
//  MathGame
//
//  Created by MacBook Air on 5/11/18.
//  Copyright © 2018 MacBook Air. All rights reserved.
//

import UIKit

var flag = 0

class FirstViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addBtn(_ sender: Any) {
        flag = 1
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    @IBAction func subBtn(_ sender: Any) {
        flag = 2
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    @IBAction func mulBtn(_ sender: Any) {
        flag = 3
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    @IBAction func divBtn(_ sender: Any) {
        flag = 4
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    @IBAction func allBtn(_ sender: Any) {
        flag = 5
        performSegue(withIdentifier: "segue", sender: self)
    }
    
}

