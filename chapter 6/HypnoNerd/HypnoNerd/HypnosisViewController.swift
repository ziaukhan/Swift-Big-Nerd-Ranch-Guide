//
//  HypnosisViewController.swift
//  HypnoNerd
//
//  Created by Zia Khan on 05/08/2014.
//  Copyright (c) 2014 Panacloud. All rights reserved.
//

import UIKit

class HypnosisViewController: UIViewController {
    override func loadView(){
        var backgroundView = BNRHypnosisView(frame: CGRectMake(0, 0, 320, 568))
        self.view = backgroundView
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