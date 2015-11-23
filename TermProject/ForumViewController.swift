//
//  ForumViewController.swift
//  TermProject
//
//  Created by Julia Yiu on 2015-11-20.
//  Copyright © 2015 Julia Yiu. All rights reserved.
//

import Foundation
import UIKit

class ForumViewController: UIViewController  {
    
    @IBOutlet weak var forumTable: UITableView!
    @IBOutlet weak var courseLabel: UILabel!
    @IBOutlet weak var CoursePicker: UIPickerView!
    
    @IBAction func askButton(sender: UIButton) {

    }
    
    var courses = ["BLAW3600", "COMP4560", "COMP4976", "COMP4977", "COMP4711", "COMP4735"]
    var questions = ["Question 1", "Question 2", "Question 3", "Question 4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.courseLabel.text = "BLAW3600"
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return courses.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return courses[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        self.courseLabel.text = courses[row]
    }
    
    //    func questionTableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int
    //    {
    //        return self.questions.count;
    //    }
    //
    //    func tableView(tableView: UITableView!,
    //        cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!
    //    {
    //        let cell:UITableViewCell = UITableViewCell(style:UITableViewCellStyle.Default, reuseIdentifier:"cell")
    //        cell.textLabel?.text = questions[indexPath.row]
    //
    //        return cell
    //    }
    
}

