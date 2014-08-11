//
//  ReminderViewController.swift
//  HypnoNerd
//
//  Created by Zia Khan on 10/08/2014.
//  Copyright (c) 2014 Panacloud. All rights reserved.
//

import UIKit

class ReminderViewController: UIViewController {
    
    @IBOutlet var datePicker: UIDatePicker?
    
    override init(nibName nibNameOrNil: String!, bundle nibBundleOrNil: NSBundle!) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init(coder aDecoder: NSCoder!) {
        super.init(coder: aDecoder)
    }
    
    @IBAction func addReminder(){
        //let date = self.datePicker?.date
        //log("Date Picked" + date?.description)
        
    }
    
    

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
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
