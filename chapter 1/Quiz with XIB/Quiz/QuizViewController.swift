//
//  QuizViewController.swift
//  Quiz
//
//  Created by Zia Khan on 08/07/2014.
//  Copyright (c) 2014 Panacloud. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
    
    @IBOutlet var questionLabel :UILabel?
    @IBOutlet var answerLabel :UILabel?
    
    var currentQuestionIndex = 0
    let questions : [String]
    let answers : [String]
    

    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        self.questions = [ "From what is cognac made?",
            "What is 7+77?",
            "What is the capital of Vermont"]
        self.answers = ["Grapes", "14", "Montpelier"]
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        // Custom initialization
        
    }
    
    @IBAction func showQuestion(AnyObject) {
        self.currentQuestionIndex++
        if(self.currentQuestionIndex == self.questions.count){
            self.currentQuestionIndex = 0
        }
        self.questionLabel!.text = self.questions[self.currentQuestionIndex]
        self.answerLabel!.text = "???"
    }
    
    @IBAction func showAnswer(AnyObject) {
        self.answerLabel!.text = self.answers[self.currentQuestionIndex]
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
    // #pragma mark - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
