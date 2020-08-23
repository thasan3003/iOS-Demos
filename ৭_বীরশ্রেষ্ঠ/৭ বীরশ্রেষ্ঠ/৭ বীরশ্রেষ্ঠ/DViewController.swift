//
//  DViewController.swift
//  ৭ বীরশ্রেষ্ঠ
//
//  Created by MacBook Pro on 7/11/18.
//  Copyright © 2018 tahmidhasan3003. All rights reserved.
//

import UIKit

var name = ["মহিউদ্দিন জাহাঙ্গীর","মোহাম্মদ হামিদুর রহমান","মোস্তফা কামাল","মোহাম্মদ রুহুল আমিন","মতিউর রহমান","মুন্সি আব্দুর রউফ","নূর মোহাম্মদ শেখ"]
var gaget = ["১","২","৩","৪","৫","৬","৭"]
var designation = ["ক্যাপ্টেন","সিপাহী","সিপাহী","স্কোয়াড্রন ইঞ্জিনিয়ার","ফ্লাইট লেফটেন্যান্ট","ল্যান্স নায়েক","ল্যান্স নায়েক"]
var sector = ["৭","৪","৮","১০","বাংলাদেশ বিমান বাহিনী","১","৮"]
var bDate = ["১৯৪৯","২ ফেব্রুয়ারি, ১৯৫৩","১৬ ডিসেম্বর, ১৯৪৭","১৯৩৪","২৯ অক্টোবর, ১৯৪১","১ মে, ১৯৪৩","২৬ এপ্রিল, ১৯৩৬"]
var bPlace = ["বরিশাল","ঝিনাইদহ","ভোলা","নোয়াখালী","ঢাকা","ফরিদপুর","নড়াইল"]
var father = ["আব্দুল মোতালেব হাওলাদার","আক্কাস আলী","হাবিবুর রহমান মণ্ডল","মোঃ আজহার পাটোয়ারী","মৌলবি আব্দুস সামাদ","মুন্সি মেহেদী হোসেন","মোঃ আমানত শেখ"]
var mother = ["মোসাম্মাত্‍ সাফিয়া বেগম","কায়দাছুন্নেসা","মোসাম্মত্‍ মালেকা বেগম","মোছাঃ জুলেখা খাতুন","সৈয়দা মোবারুকুন্নেসা","মোছাঃ মুকিদুন্নেছা","মোছাঃ জেন্নাতুন্নেসা"]
var dDate = ["১৪ ডিসেম্বর, ১৯৭১","২৮ অক্টোবর, ১৯৭১","৮ এপ্রিল, ১৯৭১","১০ ডিসেম্বর, ১৯৭১","২০ আগস্ট, ১৯৭১","২০ এপ্রিল, ১৯৭১","৫ সেপ্টেম্বর, ১৯৭১"]
var dPlace = ["চাঁপাইনবাবগঞ্জের সোনা মসজিদ প্রাঙ্গণ","মিরপুর বুদ্ধিজীবী কবরস্থান","রাহ্মণবাড়িয়ার আখাউড়ার দরুইন গ্রামে","রূপসা ফেরিঘাটের লুকপুরে","মিরপুর শহীদ বুদ্ধিজীবী কবরস্থান","রাঙামাটি শহরের রিজার্ভ বাজারে কেন্দ্রিয় শহীদ মিনারের পাশে","যশোরের কাশিপুর নামক স্থানে"]



class DViewController: UIViewController {
    
    @IBOutlet var lName: UILabel!
    @IBOutlet var iPhoto: UIImageView!
    
    @IBOutlet var lGaget: UILabel!
    @IBOutlet var lDesignation: UILabel!
    @IBOutlet var lSector: UILabel!
    @IBOutlet var lBirth: UILabel!
    @IBOutlet var lBPlace: UILabel!
    @IBOutlet var lFather: UILabel!
    @IBOutlet var lMother: UILabel!
    @IBOutlet var lDeath: UILabel!
    @IBOutlet var lDPlace: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lName.text = name[selectedIndex]
        iPhoto.image = UIImage(named: String(selectedIndex))
        
        lGaget.text = gaget[selectedIndex]
        lDesignation.text = designation[selectedIndex]
        lSector.text = sector[selectedIndex]
        lBirth.text = bDate[selectedIndex]
        lBPlace.text = bPlace[selectedIndex]
        lFather.text = father[selectedIndex]
        lMother.text = mother[selectedIndex]
        lDeath.text = dDate[selectedIndex]
        lDPlace.text = dPlace[selectedIndex]

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
