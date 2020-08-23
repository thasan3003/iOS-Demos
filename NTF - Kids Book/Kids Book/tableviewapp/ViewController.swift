//
//  ViewController.swift
//  tableviewapp
//
//  Created by MacBook Pro on 4/11/18.
//  Copyright © 2018 BSMRSTU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var fruitname: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        fruitname.text = array[myindex]
        label2.text = arraydescription[myindex]
        image.image = UIImage(named: array[myindex])
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

