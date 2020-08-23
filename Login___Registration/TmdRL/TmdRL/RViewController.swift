//
//  RViewController.swift
//  TmdRL
//
//  Created by MacBook Pro on 6/11/18.
//  Copyright © 2018 tahmidhasan3003. All rights reserved.
//

import UIKit

class RViewController: UIViewController {

    @IBOutlet var inName: UITextField!
    @IBOutlet var inID: UITextField!
    @IBOutlet var inDept: UITextField!
    @IBOutlet var inEmail: UITextField!
    @IBOutlet var inPass: UITextField!
    
    @IBOutlet var rBtn: UIButton!
    @IBOutlet var uBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if (bEdit == 1){
            rBtn.isHidden = true
            uBtn.isHidden = false
            self.title = "Update"
            
            inName.text = UserDefaults.standard.object(forKey: "nameKey") as? String
            inID.text = UserDefaults.standard.object(forKey: "idKey") as? String
            inDept.text = UserDefaults.standard.object(forKey: "deptKey") as? String
            inEmail.text = UserDefaults.standard.object(forKey: "emailKey") as? String
            inPass.text = UserDefaults.standard.object(forKey: "passKey") as? String
        }
        else{
            rBtn.isHidden = false
            uBtn.isHidden = true
            self.title = "Registration"
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

    @IBAction func btnRClicked(_ sender: Any) {
        UserDefaults.standard.set(inName.text, forKey: "nameKey")
        UserDefaults.standard.set(inID.text, forKey: "idKey")
        UserDefaults.standard.set(inDept.text, forKey: "deptKey")
        UserDefaults.standard.set(inEmail.text, forKey: "emailKey")
        UserDefaults.standard.set(inPass.text, forKey: "passKey")
        
        performSegue(withIdentifier: "segueFromR2P", sender: self)
    }
    
    
}
