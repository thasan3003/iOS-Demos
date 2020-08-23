//
//  ViewControllerPlay.swift
//  MathGame
//
//  Created by MacBook Air on 5/11/18.
//  Copyright © 2018 MacBook Air. All rights reserved.
//

import UIKit

var opnd1 = 0
var opnd2 = 0
var result:Double = 0
var opR = 0
var clicked = 0



class ViewControllerPlay: UIViewController {

    @IBOutlet weak var actionTitle: UILabel!
    @IBOutlet weak var levelTitle: UILabel!
    @IBOutlet weak var question: UILabel!
    
    @IBOutlet weak var opA: UIButton!
    @IBOutlet weak var opB: UIButton!
    @IBOutlet weak var opC: UIButton!
    @IBOutlet weak var opD: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch flag {
        case 1:
            actionTitle.text = "Addition"
        case 2:
            actionTitle.text = "Subtraction"
        case 3:
            actionTitle.text = "Multiplication"
        case 4:
            actionTitle.text = "Division"
        default:
            actionTitle.text = "All"
        }
        
        switch lFlag {
        case 1:
            levelTitle.text = "Easy"
        case 2:
            levelTitle.text = "Medium"
        default:
            levelTitle.text = "Hard"
        }
        
        calc()

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
    
    func calc() {
        switch lFlag {
        case 1:
            opnd1 = Int(arc4random()) % 10
            opnd2 = Int(arc4random()) % 10
        case 1:
            opnd1 = Int(arc4random()) % 50 + 50
            opnd2 = Int(arc4random()) % 50 + 50
        default:
            opnd1 = Int(arc4random()) % 75 + 100
            opnd2 = Int(arc4random()) % 75 + 100
        }
        
        switch flag {
        case 1:
            result = Double(opnd1 + opnd2)
            question.text = String(opnd1) + " + " + String(opnd2) + " = ?"
        case 2:
            result = Double(opnd1 - opnd2)
            question.text = String(opnd1) + " - " + String(opnd2) + " = ?"
        case 3:
            result = Double(opnd1 * opnd2)
            question.text = String(opnd1) + " * " + String(opnd2) + " = ?"
        case 4:
            opnd2 += 1
            opnd1 = opnd1 * opnd2
            result = Double(opnd1) / Double(opnd2)
            question.text = String(opnd1) + " / " + String(opnd2) + " = ?"
        default:
            let d2 = opnd2 + 1
            let d1 = opnd1 * d2
            let m = Int(arc4random()) % 10
            let p = Int(arc4random()) % 100
            let mn = Int(arc4random()) % 100
            
            result = Double(p) - Double(mn) + Double(d1) / Double(d2) * Double(m)
            question.text = String(p) + " - " + String(mn) + " + " + String(d1) + " / " + String(d2) + " * " + String(m) + " = ?"
        }
        
        opR = Int(arc4random()) % 4
        switch opR {
        case 0:
            opA.setTitle(String(result), for: .normal)
            opB.setTitle(String(result - Double(Int(arc4random()) % 20) + 1), for: .normal)
            opC.setTitle(String(result + Double(Int(arc4random()) % 20) + 1), for: .normal)
            opD.setTitle(String(result + Double(Int(arc4random()) % 20) + 1), for: .normal)
        case 1:
            opB.setTitle(String(result), for: .normal)
            opA.setTitle(String(result - Double(Int(arc4random()) % 20) + 1), for: .normal)
            opC.setTitle(String(result + Double(Int(arc4random()) % 20) + 1), for: .normal)
            opD.setTitle(String(result + Double(Int(arc4random()) % 20) + 1), for: .normal)
        case 2:
            opC.setTitle(String(result), for: .normal)
            opB.setTitle(String(result - Double(Int(arc4random()) % 20) + 1), for: .normal)
            opA.setTitle(String(result + Double(Int(arc4random()) % 20) + 1), for: .normal)
            opD.setTitle(String(result + Double(Int(arc4random()) % 20) + 1), for: .normal)
        default:
            opD.setTitle(String(result), for: .normal)
            opB.setTitle(String(result - Double(Int(arc4random()) % 20) + 1), for: .normal)
            opC.setTitle(String(result + Double(Int(arc4random()) % 20) + 1), for: .normal)
            opA.setTitle(String(result + Double(Int(arc4random()) % 20) + 1), for: .normal)
        }
    }
    
    @IBAction func opAClicked(_ sender: Any) {
        clicked = 0
        performSegue(withIdentifier: "segue3", sender: self)
    }
    @IBAction func opBClicked(_ sender: Any) {
        clicked = 1
        performSegue(withIdentifier: "segue3", sender: self)
    }
    @IBAction func opCClicked(_ sender: Any) {
        clicked = 2
        performSegue(withIdentifier: "segue3", sender: self)
    }
    @IBAction func opDClicked(_ sender: Any) {
        clicked = 3
        performSegue(withIdentifier: "segue3", sender: self)
    }
    
}
