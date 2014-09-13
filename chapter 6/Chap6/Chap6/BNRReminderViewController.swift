//
//  BNRReminderViewController.swift
//  Chap6
//


import UIKit

class BNRReminderViewController: UIViewController{

    /*init(){
        super.init()
        //Set the tab bar item's title
        self.tabBarItem.title = "Reminder"
        
        //Create a UIImage from a file
        var i = UIImage(named: "Time.png")
        
        //Put that image on the tab bar item
        self.tabBarItem.image = i
    }*/
    
    override init(nibName nibNameOrNil: String!, bundle nibBundleOrNil: NSBundle!) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        //Set the tab bar item's title
        self.tabBarItem.title = "Reminder"
        
        //Create a UIImage from a file
        var i = UIImage(named: "Time.png")
        
        //Put that image on the tab bar item
        self.tabBarItem.image = i
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    
    @IBOutlet var datePicker: UIDatePicker?
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addReminder(sender: AnyObject) {
        var date:NSDate = self.datePicker!.date
        println("Setting a reminder for \(date)")
        
        var note = UILocalNotification()
        note.alertBody = "Hypnotize me!"
        note.fireDate = date
        
        UIApplication.sharedApplication().scheduleLocalNotification(note)
    }

    /*
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
