//
//  SEViewController.swift
//  tableviewapp
//
//  Created by MacBook Pro on 5/11/18.
//  Copyright © 2018 BSMRSTU. All rights reserved.
//

import UIKit

class SEViewController: UIViewController {

    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var label2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label2.text = array2[myindex2]
        label3.text = arraydescription2[myindex2]
        image2.image = UIImage(named: array2[myindex2])

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

}
