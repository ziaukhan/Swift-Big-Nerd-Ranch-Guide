//
//  ViewController.swift
//  Chap1
//
//  Created by PanaCloud on 7/17/14.
//  Copyright (c) 2014 PanaCloud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var QuesLbl: UILabel?
    @IBOutlet var AnsLbl: UILabel?
    
    @IBOutlet var AnsBtn: UIButton?
    @IBOutlet var QuesBtn: UIButton?
    
    var Question:[String] = ["From what is cognac made?", "What is 7+7", "What is the capital of Vermont?"]
    var Answer:[String] = ["Grapes", "14", "Montpelier"]
    
    //Initialization for loop
    var i:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Setting 1st Question to Label of Question on Start of App
        ShowQuesBtnAction("AnyObject")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ShowQuesBtnAction(sender: AnyObject) {
        
        //All Questions are done
        if(i == Question.count){
            QuesBtn!.enabled = false
            AnsBtn!.enabled = false
        }
        else{
            QuesLbl!.text = Question[i]
            AnsLbl!.text = "???"
            QuesBtn!.enabled = false
            AnsBtn!.enabled = true
        }
    }

    @IBAction func ShowAnsBtnAction(sender: AnyObject) {
        AnsLbl!.text = Answer[i]
        QuesBtn!.enabled = true
        AnsBtn!.enabled = false
        i++
    }
}

