//
//  SecondTabViewController.swift
//  TmdTblVw
//
//  Created by MacBook Pro on 5/11/18.
//  Copyright © 2018 tahmidhasan3003. All rights reserved.
//

import UIKit

var wordsArray2 = ["A", "Apple","Ant","Abduct","And","Arm","Accept","Aback","Action","Addition","Again","Attraction","Aid","Argue","Answer","Book", "Ball","Bat","Bad","Back","Bound","Blow","Bridge","Building","Beauty","Blue","Binding", "Cat","Cow","Crow","Color","cabin","Cable","Country","Count","Camel","Crew","Cuisine","Cute","Chair","Dog","Double","Day","Date","Death","Description","Dicipline","Dashing","Dare","Deer","Donkey","Decision","Doctor","Eraser","Eat","Ear","Environment","Evolution","Encourage","End","English","Elephant","Elegant","Enlarge","Education","Edit","Flower","Fool","Foolish","Full","Feel","Fill","Find","Foot","Food","Father","Fight","Fate","Fake"]
var meaning2 = ["একটি", "আপেল", "পিপীলিকা",
               "অপহরণ করা","এবং","বাহু", "গ্রহণ করা"," পশ্চাতে","কর্ম","সংযোজন","আবার","আকর্ষণ","সাহায্য","তর্ক করা","উত্তর", "বই","বল","বাদুড়","খারাপ","পিছনে","আবদ্ধ","ঘা"," সেতু"," ভবন"," সৌন্দর্য ","নীল"," বাঁধাই", "বিড়াল","গাভী","কাক"," রঙ"," কেবিন"," তারের"," দেশ"," গণনা"," উট"," নাবিকদল"," রন্ধনপ্রণালী"," চতুর","চেয়ার","কুকুর","ডবল ","   দিন"," মরণ"," তারিখ"," বিবরণ"," শৃঙ্খলা"," সাহস"," হরিণ"," আড়ম্বরপ্রি়"," গাধা"," রায়"," ডাক্তার","রবার"," খাওয়া"," কান"," পরিবেশ"," বিবর্তন ","উত্সাহিত করা"," শেষ"," ইংরেজি"," হাতি"," মার্জিত ","সম্প্রসারিত করা ","শিক্ষা সম্পাদন করা","ফুল", "মূর্খ"," নির্বোধ ","সম্পূর্ণ ","মনে"," পূরণ করা"," আবিষ্কার"," পা"," খাদ্য"," পিতা"," যুদ্ধ"," ভাগ্য ","নকল"]

class SecondTabViewController: UIViewController {
    @IBOutlet var stext: UITextField!
    @IBOutlet var wordTitle: UILabel!
    @IBOutlet var wordMeaning: UILabel!
    
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
    @IBAction func searchClicked(_ sender: Any) {
        let temp = stext.text
        let ind = wordsArray2.index(of: temp!)
        wordTitle.text = temp
        wordMeaning.text = meaning2[ind!]
    }
    
}
