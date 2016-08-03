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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Questions = [Question(Question: "Hi! My name is Yusafi! What's your name?", Answers: ["Nice to meet you! My name is \"your name\".","It's \"your name\". Where are you from?","My name is \"your name\", I kinda like your accent.","Im \"your name\"."], Answer: 1)]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

