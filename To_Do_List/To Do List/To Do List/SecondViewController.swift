//
//  SecondViewController.swift
//  To Do List
//
//  Created by MacBook Pro on 7/11/18.
//  Copyright © 2018 tahmidhasan3003. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var inT: UITextField!
    @IBOutlet var inD: UITextField!
    @IBOutlet var alertShow: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func inBtnClicked(_ sender: Any) {
        
        if inT.text != "" {
            titleArray.append(inT.text!)
            descriptionArray.append(inD.text!)
            alertShow.text = "New item is inserted"
            
            inT.text = ""
            inD.text = ""
            
        }
        else{
            alertShow.text = "Error... Title is empty."
        }
    }
    
}

