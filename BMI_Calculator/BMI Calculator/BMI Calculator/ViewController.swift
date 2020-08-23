//
//  ViewController.swift
//  BMI Calculator
//
//  Created by MacBook Pro on 24/10/18.
//  Copyright © 2018 tahmidhasan3003. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var btnMale: UIButton!
    @IBOutlet var btnFemale: UIButton!
    @IBOutlet var sldW: UISlider!
    @IBOutlet var sldH: UISlider!
    @IBOutlet var lblW: UILabel!
    @IBOutlet var lblH: UILabel!
    @IBOutlet var lblScore: UILabel!
    @IBOutlet var lblResult: UILabel!
    
    var bool = 1
    var tempW = 0.0
    var tempH = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        btnMale.backgroundColor = UIColor.yellow
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clcMale(_ sender: Any) {
        bool = 1
        btnMale.backgroundColor = UIColor.yellow
        btnFemale.backgroundColor = UIColor.white
    }
    @IBAction func clcFemale(_ sender: Any) {
        bool = 1
        btnMale.backgroundColor = UIColor.white
        btnFemale.backgroundColor = UIColor.yellow
    }
    @IBAction func wChanged(_ sender: Any) {
        lblW.text = String(format: "%.2f", sldW.value)
        tempW = Double(sldW.value)
        tempH = Double(sldH.value)
        var temp = tempH/100
        temp = tempW / (temp * temp)
        let t = String(format: "%.2f", temp)
        lblScore.text = t
        if bool == 1{
            if temp<15{
                lblResult.text = "Very severely underweight"
            }
            else if (temp >= 15 && temp < 16){
                lblResult.text = "Severely underweight"
            }
            else if (temp >= 16 && temp < 18.5){
                lblResult.text = "Underweight"
            }
            else if (temp >= 18.5 && temp < 25){
                lblResult.text = "Normal (healthy weight)"
            }
            else if (temp >= 25 && temp < 30){
                lblResult.text = "Overweight"
            }
            else if (temp >= 30 && temp < 35){
                lblResult.text = "Moderately obese"
            }
            else if (temp >= 35 && temp < 40){
                lblResult.text = "Severely obese"
            }
            else if temp >= 40{
                lblResult.text = "Very severely obese"
            }
        }
    }
    @IBAction func hChanged(_ sender: Any) {
        lblH.text = String(format: "%.2f", sldH.value)
        tempW = Double(sldW.value)
        tempH = Double(sldH.value)
        var temp = tempH/100
        temp = tempW / (temp * temp)
        let t = String(format: "%.2f", temp)
        lblScore.text = t
        if bool == 1{
            if temp<15{
                lblResult.text = "Very severely underweight"
            }
            else if (temp >= 15 && temp < 16){
                lblResult.text = "Severely underweight"
            }
            else if (temp >= 16 && temp < 18.5){
                lblResult.text = "Underweight"
            }
            else if (temp >= 18.5 && temp < 25){
                lblResult.text = "Normal (healthy weight)"
            }
            else if (temp >= 25 && temp < 30){
                lblResult.text = "Overweight"
            }
            else if (temp >= 30 && temp < 35){
                lblResult.text = "Moderately obese"
            }
            else if (temp >= 35 && temp < 40){
                lblResult.text = "Severely obese"
            }
            else if temp >= 40{
                lblResult.text = "Very severely obese"
            }
        }
    }
    
}

