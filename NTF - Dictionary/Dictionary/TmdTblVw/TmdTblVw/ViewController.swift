//
//  ViewController.swift
//  TmdTblVw
//
//  Created by MacBook Pro on 4/11/18.
//  Copyright © 2018 tahmidhasan3003. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var fName: UILabel!
    @IBOutlet var wordDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        fName.text = wordsArray[myIndex]
        wordDescription.text = meaning[myIndex]
        //fImage.image = UIImage(named: fruits[myIndex] + ".jpg")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

