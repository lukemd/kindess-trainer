//
//  ViewController.swift
//  KindessQuizApp
//
//  Created by Paul Maxeiner on 8/2/16.
//  Copyright © 2016 Paul Maxeiner. All rights reserved.
//

import UIKit
struct Question {
    var Question : String!
    var Answers : [String]!
    var Answer : Int!
}

class ViewController: UIViewController {

    @IBOutlet var Buttons: [UIButton]!
    @IBOutlet weak var questionLabel: UILabel!
    
    var Questions = [Question]()
    
    var QNumber = Int()
    
    var AnswerNumber = Int()
    
    var Score = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Questions = [
            Question(Question: "Hi! My name is Yusafi! What's your name?", Answers: ["Nice to meet you! My name is \"your name\".","It's \"your name\". Where are you from?","My name is \"your name\", I kinda like your accent.","Im \"your name\"."], Answer: 0),
            Question(Question: "Excuse me, do you know how to get to Amsterdam?", Answers: ["Nope, sorry.","You can ask a taxi driver. Sorry.","No, but let me check my map real quick!","Sorry, I don't know where Amsterdam is."], Answer: 2),
            Question(Question: "Hello, do you reccomend the green salad or the lettuce sandwich?", Answers: ["Never had one, sorry.","I have never had either, but the lettuce sandwich sounds good!","I think you might like some other menu items.","I don't like lettuce or salad very much."], Answer: 1),
            Question(Question: "Excuse me, can you be so kind as to get me that handsoap on the top shelf?", Answers: ["Sorry, I can't reach that.","Sorry, it's out of my reach. Let me get an employee.","Hang on, if I stand on the shelves I can get it.","Nope, I can't get it."], Answer: 1)]
        
        randomQueston()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func randomQueston() {
        if Questions.count > 0 {
            QNumber = random() % Questions.count
            questionLabel.text = Questions[QNumber].Question
            
            AnswerNumber = Questions[QNumber].Answer
            
            for i in 0..<Buttons.count{
                Buttons[i].setTitle(Questions[QNumber].Answers[i], forState: UIControlState.Normal)
            }
            
            Questions.removeAtIndex(QNumber)
        } else {
            NSLog("Questions Finsished!")
            NSLog("\(Score)")
        }
    }

    @IBAction func btn1(sender: AnyObject) {
        if AnswerNumber == 0 {
            randomQueston()
            Score += 1
        } else {
            NSLog("Question Was Answered Wrong!")
        }
    }
    @IBAction func btn2(sender: AnyObject) {
        if AnswerNumber == 1 {
            randomQueston()
            Score += 1
        } else {
            NSLog("Question Was Answered Wrong!")
        }
    }
    @IBAction func btn3(sender: AnyObject) {
        if AnswerNumber == 2 {
            randomQueston()
            Score += 1
        } else {
            NSLog("Question Was Answered Wrong!")
        }
    }
    @IBAction func btn4(sender: AnyObject) {
        if AnswerNumber == 3 {
            randomQueston()
            Score += 1
        } else {
            NSLog("Question Was Answered Wrong!")
        }
    }
}

