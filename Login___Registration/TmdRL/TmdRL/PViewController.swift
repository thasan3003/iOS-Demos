//
//  PViewController.swift
//  TmdRL
//
//  Created by MacBook Pro on 6/11/18.
//  Copyright © 2018 tahmidhasan3003. All rights reserved.
//

import UIKit

var bEdit = 0


class PViewController: UIViewController {

    @IBOutlet var lName: UILabel!
    @IBOutlet var lId: UILabel!
    @IBOutlet var lDept: UILabel!
    @IBOutlet var lEmail: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bEdit = 0
        lName.text = UserDefaults.standard.object(forKey: "nameKey") as? String
        lId.text = UserDefaults.standard.object(forKey: "idKey") as? String
        lDept.text = UserDefaults.standard.object(forKey: "deptKey") as? String
        lEmail.text = UserDefaults.standard.object(forKey: "emailKey") as? String

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
    
    @IBAction func btnEClicked(_ sender: Any) {
        bEdit = 1
        performSegue(withIdentifier: "segueFromP2R", sender: self)
    }
    
    @IBAction func btnDClicked(_ sender: Any) {
        UserDefaults.standard.removeObject(forKey: "nameKey")
        UserDefaults.standard.removeObject(forKey: "idKey")
        UserDefaults.standard.removeObject(forKey: "deptKey")
        UserDefaults.standard.removeObject(forKey: "emailKey")
        UserDefaults.standard.removeObject(forKey: "passKey")
        
        performSegue(withIdentifier: "segueFromP2H", sender: self)
    }
}
