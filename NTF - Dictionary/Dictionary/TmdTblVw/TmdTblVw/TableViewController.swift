//
//  TableViewController.swift
//  TmdTblVw
//
//  Created by MacBook Pro on 4/11/18.
//  Copyright © 2018 tahmidhasan3003. All rights reserved.
//

import UIKit

var wordsArray = ["A", "Apple","Ant","Abduct","And","Arm","Accept","Aback","Action","Addition","Again","Attraction","Aid","Argue","Answer","Book", "Ball","Bat","Bad","Back","Bound","Blow","Bridge","Building","Beauty","Blue","Binding", "Cat","Cow","Crow","Color","cabin","Cable","Country","Count","Camel","Crew","Cuisine","Cute","Chair","Dog","Double","Day","Date","Death","Description","Dicipline","Dashing","Dare","Deer","Donkey","Decision","Doctor","Eraser","Eat","Ear","Environment","Evolution","Encourage","End","English","Elephant","Elegant","Enlarge","Education","Edit","Flower","Fool","Foolish","Full","Feel","Fill","Find","Foot","Food","Father","Fight","Fate","Fake"]
var meaning = ["একটি", "আপেল", "পিপীলিকা",
    "অপহরণ করা","এবং","বাহু", "গ্রহণ করা"," পশ্চাতে","কর্ম","সংযোজন","আবার","আকর্ষণ","সাহায্য","তর্ক করা","উত্তর", "বই","বল","বাদুড়","খারাপ","পিছনে","আবদ্ধ","ঘা"," সেতু"," ভবন"," সৌন্দর্য ","নীল"," বাঁধাই", "বিড়াল","গাভী","কাক"," রঙ"," কেবিন"," তারের"," দেশ"," গণনা"," উট"," নাবিকদল"," রন্ধনপ্রণালী"," চতুর","চেয়ার","কুকুর","ডবল ","   দিন"," মরণ"," তারিখ"," বিবরণ"," শৃঙ্খলা"," সাহস"," হরিণ"," আড়ম্বরপ্রি়"," গাধা"," রায়"," ডাক্তার","রবার"," খাওয়া"," কান"," পরিবেশ"," বিবর্তন ","উত্সাহিত করা"," শেষ"," ইংরেজি"," হাতি"," মার্জিত ","সম্প্রসারিত করা ","শিক্ষা সম্পাদন করা","ফুল", "মূর্খ"," নির্বোধ ","সম্পূর্ণ ","মনে"," পূরণ করা"," আবিষ্কার"," পা"," খাদ্য"," পিতা"," যুদ্ধ"," ভাগ্য ","নকল"]
//var fruitsDescriptio = ["Shahin is looks like to Mango", "Shahin likes fruits", "Shahin has "]
var myIndex = 0

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return wordsArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = wordsArray[indexPath.row]

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            fruits.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }
}
