//
//  ViewControllerResult.swift
//  MathGame
//
//  Created by MacBook Air on 5/11/18.
//  Copyright © 2018 MacBook Air. All rights reserved.
//

import UIKit

class ViewControllerResult: UIViewController {

    @IBOutlet weak var rLabel: UILabel!
    @IBOutlet weak var rComment: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        showResult()
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

    func showResult(){
        if clicked == opR {
            rLabel.text = "Congratulations!!!"
            rComment.text = "Your answer is correct"
        }
        else{
            rLabel.text = "Sorry!!!"
            rComment.text = "Your answer is not correct"
        }
    }
}
