//
//  BNRHypnosisViewController.swift
//  Chap6
//


import UIKit

class BNRHypnosisViewController: UIViewController {

    override init(nibName nibNameOrNil: String!, bundle nibBundleOrNil: NSBundle!) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        //Set the tab bar item's title
        self.tabBarItem.title = "Hypnotize"
        
        //Create a UIImage from a file
        var i = UIImage(named: "Hypno.png")
        
        //Put that image on the tab bar item
        self.tabBarItem.image = i
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
    }

    override func loadView() {
        var backgroundView = BNRHypnosisView(frame: CGRectMake(0, 0, 320, 568))
        self.view = backgroundView
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
