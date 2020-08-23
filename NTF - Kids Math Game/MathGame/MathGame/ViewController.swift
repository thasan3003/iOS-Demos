//
//  ViewController.swift
//  MathGame
//
//  Created by MacBook Air on 5/11/18.
//  Copyright © 2018 MacBook Air. All rights reserved.
//

import UIKit

var lFlag = 0

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch flag {
        case 1:
            title = "Addition"
        case 2:
            title = "Subtraction"
        case 3:
            title = "Multiplication"
        case 4:
            title = "Division"
        default:
            title = "All"
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func easyBtn(_ sender: Any) {
        lFlag = 1
        performSegue(withIdentifier: "segue2", sender: self)
    }
    
    @IBAction func medBtn(_ sender: Any) {
        lFlag = 2
        performSegue(withIdentifier: "segue2", sender: self)
    }
    
    @IBAction func hardBtn(_ sender: Any) {
        lFlag = 3
        performSegue(withIdentifier: "segue2", sender: self)
    }
}
