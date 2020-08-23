//
//  FirstViewController.swift
//  To Do List
//
//  Created by MacBook Pro on 7/11/18.
//  Copyright © 2018 tahmidhasan3003. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet var wTitle: UILabel!
    @IBOutlet var wDesc: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        wTitle.text = titleArray[selectedIndex]
        wDesc.text = descriptionArray[selectedIndex]
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

