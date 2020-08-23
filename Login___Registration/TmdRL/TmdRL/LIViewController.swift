//
//  LIViewController.swift
//  TmdRL
//
//  Created by MacBook Pro on 6/11/18.
//  Copyright © 2018 tahmidhasan3003. All rights reserved.
//

import UIKit

var eflag = 0
var pflag = 0



class LIViewController: UIViewController {

    @IBOutlet var inEmail: UITextField!
    @IBOutlet var inPass: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

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

    @IBAction func btnLIClicked(_ sender: Any) {
        let email = UserDefaults.standard.object(forKey: "emailKey")
        if inEmail.text == email as? String{
            eflag = 1
        }
        let pass = UserDefaults.standard.object(forKey: "passKey")
        if inPass.text == pass as? String{
            pflag = 1
        }
        
        if ((eflag == 1) && (pflag == 1)){
           performSegue(withIdentifier: "segueFromLI", sender: self)
        }
    }
}
